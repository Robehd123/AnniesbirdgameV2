#!/usr/bin/env python3
"""
Annie's Bird Game - image fetcher
==================================
Downloads one licensed lead image per species from Wikimedia, saves it under the
filename the game expects, and records licence/author for attribution.

RUN THIS ON YOUR LAPTOP, in your project folder (the one containing birds.json
and the images/ folder). It does NOT run on Netlify and does NOT touch the game
at runtime.

SETUP (one time):
    1. Install Python 3.9+  (macOS usually has it: run  python3 --version)
    2. In Terminal, in your project folder:
         pip3 install requests pillow

USAGE:
    python3 fetch_images.py

WHAT IT PRODUCES:
    images/<bird>.jpg          one image per species
    attributions.txt           licence + author per image (REQUIRED for CC use)
    failures.txt               species it could not fetch - fill these by hand

NOTES:
    - It skips birds whose image already exists, so you can re-run it safely
      to retry only the failures.
    - It pauses between requests to stay within Wikimedia's etiquette. Fetching
      250 images takes a few minutes. This is deliberate; do not remove it.
"""

import json
import os
import sys
import time

try:
    import requests
except ImportError:
    sys.exit("Missing 'requests'. Run:  pip3 install requests pillow")

try:
    from PIL import Image
except ImportError:
    sys.exit("Missing 'pillow'. Run:  pip3 install requests pillow")

from io import BytesIO

# --- config ---
BIRDS_FILE = "birds.json"
IMAGE_DIR = "images"
TARGET_WIDTH = 800          # downscale large images; keeps the repo light
REQUEST_PAUSE = 0.5         # seconds between requests (be polite to Wikimedia)
# A descriptive User-Agent is required by Wikimedia policy. Put a real contact in.
HEADERS = {"User-Agent": "AnniesBirdGame/2.0 (personal hobby project; contact: henry@example.com)"}

API = "https://en.wikipedia.org/w/api.php"


def get_lead_image_info(title):
    """Return (image_url, license, author) for a Wikipedia page title, or None."""
    # Step 1: get the page image filename via pageimages
    params = {
        "action": "query",
        "titles": title,
        "prop": "pageimages",
        "piprop": "original",
        "format": "json",
        "redirects": 1,
    }
    r = requests.get(API, params=params, headers=HEADERS, timeout=30)
    r.raise_for_status()
    pages = r.json().get("query", {}).get("pages", {})
    page = next(iter(pages.values()), {})
    if "original" not in page:
        return None
    img_url = page["original"]["source"]
    img_title = page.get("pageimage")
    if not img_title:
        return img_url, "unknown", "unknown"

    # Step 2: fetch licence + author metadata for that file
    meta = {
        "action": "query",
        "titles": f"File:{img_title}",
        "prop": "imageinfo",
        "iiprop": "extmetadata",
        "format": "json",
    }
    r2 = requests.get(API, params=meta, headers=HEADERS, timeout=30)
    r2.raise_for_status()
    mpages = r2.json().get("query", {}).get("pages", {})
    mpage = next(iter(mpages.values()), {})
    ii = mpage.get("imageinfo", [{}])[0].get("extmetadata", {})
    licence = ii.get("LicenseShortName", {}).get("value", "unknown")
    author = ii.get("Artist", {}).get("value", "unknown")
    # strip any HTML tags from the author field
    import re
    author = re.sub(r"<[^>]+>", "", author).strip()
    return img_url, licence, author


def fetch_one(bird):
    """Try Latin name first, then common name. Returns (url, licence, author) or None."""
    for title in (bird["latin"], bird["name"]):
        try:
            info = get_lead_image_info(title)
        except requests.RequestException as e:
            print(f"   network error on '{title}': {e}")
            info = None
        if info:
            return info
        time.sleep(REQUEST_PAUSE)
    return None


def save_jpeg(url, path):
    """Download, convert to RGB JPEG, downscale, write to path."""
    r = requests.get(url, headers=HEADERS, timeout=60)
    r.raise_for_status()
    img = Image.open(BytesIO(r.content)).convert("RGB")
    if img.width > TARGET_WIDTH:
        ratio = TARGET_WIDTH / img.width
        img = img.resize((TARGET_WIDTH, int(img.height * ratio)))
    img.save(path, "JPEG", quality=85)


def main():
    if not os.path.exists(BIRDS_FILE):
        sys.exit(f"Cannot find {BIRDS_FILE}. Run this in your project folder.")
    os.makedirs(IMAGE_DIR, exist_ok=True)

    with open(BIRDS_FILE) as f:
        birds = json.load(f)

    attributions = []
    failures = []
    skipped = 0

    for i, bird in enumerate(birds, 1):
        filename = os.path.basename(bird["img"])      # e.g. robin.jpg
        out_path = os.path.join(IMAGE_DIR, filename)

        if os.path.exists(out_path):
            skipped += 1
            continue

        print(f"[{i}/{len(birds)}] {bird['name']} ({bird['latin']})")
        info = fetch_one(bird)
        if not info:
            print("   FAILED - no image found")
            failures.append(f"{bird['name']}\t{bird['latin']}\t{filename}")
            continue

        url, licence, author = info
        try:
            save_jpeg(url, out_path)
            attributions.append(f"{filename}\t{bird['name']}\t{licence}\t{author}\t{url}")
            print(f"   saved ({licence})")
        except Exception as e:
            print(f"   FAILED on download/convert: {e}")
            failures.append(f"{bird['name']}\t{bird['latin']}\t{filename}")

        time.sleep(REQUEST_PAUSE)

    # write attributions (append mode so re-runs accumulate)
    with open("attributions.txt", "a") as f:
        for line in attributions:
            f.write(line + "\n")

    # rewrite failures fresh each run
    with open("failures.txt", "w") as f:
        for line in failures:
            f.write(line + "\n")

    print("\n--- DONE ---")
    print(f"Downloaded: {len(attributions)}")
    print(f"Skipped (already had image): {skipped}")
    print(f"Failed: {len(failures)}  (see failures.txt)")
    if failures:
        print("Re-run the script to retry failures, or add those images by hand.")


if __name__ == "__main__":
    main()
