#!/bin/bash
# Annie's Bird Game - curl image downloader
# Downloads the 200 new bird images into images/ using the system curl,
# which avoids the Python TLS problem. Run from your project folder:
#     bash download_images.sh
# Safe to re-run: it skips any image already present.

mkdir -p images
UA="AnniesBirdGame/2.0 (https://anniesbirdgame.netlify.app; 10hroberts@gmail.com)"
ok=0; skip=0; fail=0
FAILED=""

if [ -f "images/carrioncrow.jpg" ]; then
  echo "skip carrioncrow.jpg"; skip=$((skip+1))
else
  echo "get  carrioncrow.jpg (Carrion Crow)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/carrioncrow.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9d/Carrion_crow_2022_04_05_05_02.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED carrioncrow.jpg"; fail=$((fail+1)); FAILED="$FAILED carrioncrow.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/rook.jpg" ]; then
  echo "skip rook.jpg"; skip=$((skip+1))
else
  echo "get  rook.jpg (Rook)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/rook.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/af/Rook_%28Corvus_frugilegus%29_Heligan.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED rook.jpg"; fail=$((fail+1)); FAILED="$FAILED rook.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/jackdaw.jpg" ]; then
  echo "skip jackdaw.jpg"; skip=$((skip+1))
else
  echo "get  jackdaw.jpg (Jackdaw)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/jackdaw.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8c/Nordic_jackdaw_%2852563242448%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED jackdaw.jpg"; fail=$((fail+1)); FAILED="$FAILED jackdaw.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/raven.jpg" ]; then
  echo "skip raven.jpg"; skip=$((skip+1))
else
  echo "get  raven.jpg (Raven)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/raven.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/7c/Corvus_corax.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED raven.jpg"; fail=$((fail+1)); FAILED="$FAILED raven.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/hoodedcrow.jpg" ]; then
  echo "skip hoodedcrow.jpg"; skip=$((skip+1))
else
  echo "get  hoodedcrow.jpg (Hooded Crow)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/hoodedcrow.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/dc/Hooded_Crow_%28Corvus_cornix%29_City_Park%2C_Skopje%2C_North_Macedonia.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED hoodedcrow.jpg"; fail=$((fail+1)); FAILED="$FAILED hoodedcrow.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/feralpigeon.jpg" ]; then
  echo "skip feralpigeon.jpg"; skip=$((skip+1))
else
  echo "get  feralpigeon.jpg (Feral Pigeon)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/feralpigeon.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/10/Columba_livia_%28Rock_Dove%2C_wild%29%2C_Duncansby_Head%2C_Caithness%2C_Scotland_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED feralpigeon.jpg"; fail=$((fail+1)); FAILED="$FAILED feralpigeon.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/stockdove.jpg" ]; then
  echo "skip stockdove.jpg"; skip=$((skip+1))
else
  echo "get  stockdove.jpg (Stock Dove)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/stockdove.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b5/Pigeon_colombin_%28Colulmba_oenas%29%2C_Parc_de_Woluwe%2C_Bruxelles_%2851921513878%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED stockdove.jpg"; fail=$((fail+1)); FAILED="$FAILED stockdove.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/turtledove.jpg" ]; then
  echo "skip turtledove.jpg"; skip=$((skip+1))
else
  echo "get  turtledove.jpg (Turtle Dove)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/turtledove.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/ec/Turtle_dove_%28Streptopelia_turtur_turtur%29_Hungary.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED turtledove.jpg"; fail=$((fail+1)); FAILED="$FAILED turtledove.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/marshtit.jpg" ]; then
  echo "skip marshtit.jpg"; skip=$((skip+1))
else
  echo "get  marshtit.jpg (Marsh Tit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/marshtit.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/21/Sumpfmeise_im_NSG_Hirschacker_und_Dossenwald_2.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED marshtit.jpg"; fail=$((fail+1)); FAILED="$FAILED marshtit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/willowtit.jpg" ]; then
  echo "skip willowtit.jpg"; skip=$((skip+1))
else
  echo "get  willowtit.jpg (Willow Tit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/willowtit.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/13/Poecile_montanus_kleinschmidti.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED willowtit.jpg"; fail=$((fail+1)); FAILED="$FAILED willowtit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/crestedtit.jpg" ]; then
  echo "skip crestedtit.jpg"; skip=$((skip+1))
else
  echo "get  crestedtit.jpg (Crested Tit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/crestedtit.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/dc/Lophophanes_cristatus_-_01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED crestedtit.jpg"; fail=$((fail+1)); FAILED="$FAILED crestedtit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/beardedtit.jpg" ]; then
  echo "skip beardedtit.jpg"; skip=$((skip+1))
else
  echo "get  beardedtit.jpg (Bearded Tit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/beardedtit.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f4/%D0%92%D1%83%D1%81%D0%B0%D1%87_8066.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED beardedtit.jpg"; fail=$((fail+1)); FAILED="$FAILED beardedtit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/treecreeper.jpg" ]; then
  echo "skip treecreeper.jpg"; skip=$((skip+1))
else
  echo "get  treecreeper.jpg (Treecreeper)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/treecreeper.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/30/Eurasian_Treecreeper_-_Certhia_familiaris_%2854192274817%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED treecreeper.jpg"; fail=$((fail+1)); FAILED="$FAILED treecreeper.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goldcrest.jpg" ]; then
  echo "skip goldcrest.jpg"; skip=$((skip+1))
else
  echo "get  goldcrest.jpg (Goldcrest)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goldcrest.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/fe/Goldcrest_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED goldcrest.jpg"; fail=$((fail+1)); FAILED="$FAILED goldcrest.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/firecrest.jpg" ]; then
  echo "skip firecrest.jpg"; skip=$((skip+1))
else
  echo "get  firecrest.jpg (Firecrest)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/firecrest.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b9/Common_firecrest_Franconville_03.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED firecrest.jpg"; fail=$((fail+1)); FAILED="$FAILED firecrest.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/chiffchaff.jpg" ]; then
  echo "skip chiffchaff.jpg"; skip=$((skip+1))
else
  echo "get  chiffchaff.jpg (Chiffchaff)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/chiffchaff.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/85/Common_Chiffchaff_2025_04_04_01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED chiffchaff.jpg"; fail=$((fail+1)); FAILED="$FAILED chiffchaff.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/willowwarbler.jpg" ]; then
  echo "skip willowwarbler.jpg"; skip=$((skip+1))
else
  echo "get  willowwarbler.jpg (Willow Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/willowwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5b/Willow_Warbler_Phylloscopus_trochilus.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED willowwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED willowwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/woodwarbler.jpg" ]; then
  echo "skip woodwarbler.jpg"; skip=$((skip+1))
else
  echo "get  woodwarbler.jpg (Wood Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/woodwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e0/Flickr_-_Rainbirder_-_Wood_Warbler_%28Phylloscopus_sibilatrix%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED woodwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED woodwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blackcap.jpg" ]; then
  echo "skip blackcap.jpg"; skip=$((skip+1))
else
  echo "get  blackcap.jpg (Blackcap)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blackcap.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/ca/Eurasian_blackcap_%28Sylvia_atricapilla%29_male_Drenthe.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blackcap.jpg"; fail=$((fail+1)); FAILED="$FAILED blackcap.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/gardenwarbler.jpg" ]; then
  echo "skip gardenwarbler.jpg"; skip=$((skip+1))
else
  echo "get  gardenwarbler.jpg (Garden Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/gardenwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/07/Sylvia_borin_%28%C3%96rebro_County%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED gardenwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED gardenwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/whitethroat.jpg" ]; then
  echo "skip whitethroat.jpg"; skip=$((skip+1))
else
  echo "get  whitethroat.jpg (Whitethroat)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/whitethroat.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/91/Common_Whitethroat.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED whitethroat.jpg"; fail=$((fail+1)); FAILED="$FAILED whitethroat.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/lesserwhitethroat.jpg" ]; then
  echo "skip lesserwhitethroat.jpg"; skip=$((skip+1))
else
  echo "get  lesserwhitethroat.jpg (Lesser Whitethroat)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/lesserwhitethroat.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/74/%D0%A1%D0%BB%D0%B0%D0%B2%D0%BA%D0%B0-%D0%B7%D0%B0%D0%B2%D0%B8%D1%80%D1%83%D1%88%D0%BA%D0%B0_%28Sylvia_curruca%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED lesserwhitethroat.jpg"; fail=$((fail+1)); FAILED="$FAILED lesserwhitethroat.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/sedgewarbler.jpg" ]; then
  echo "skip sedgewarbler.jpg"; skip=$((skip+1))
else
  echo "get  sedgewarbler.jpg (Sedge Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/sedgewarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/69/Sedge_warbler_%28Acrocephalus_schoenobaenus%29_3.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED sedgewarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED sedgewarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/reedwarbler.jpg" ]; then
  echo "skip reedwarbler.jpg"; skip=$((skip+1))
else
  echo "get  reedwarbler.jpg (Reed Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/reedwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/24/PleidelsheimerWiesentalTeichrohrsaenger.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED reedwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED reedwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/grasshopperwarbler.jpg" ]; then
  echo "skip grasshopperwarbler.jpg"; skip=$((skip+1))
else
  echo "get  grasshopperwarbler.jpg (Grasshopper Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/grasshopperwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c3/Grashoppsangare-070512.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED grasshopperwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED grasshopperwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/cettiswarbler.jpg" ]; then
  echo "skip cettiswarbler.jpg"; skip=$((skip+1))
else
  echo "get  cettiswarbler.jpg (Cetti's Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/cettiswarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/73/37-090505-cettis-warbler-at-Kalloni-east-river.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED cettiswarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED cettiswarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/dartfordwarbler.jpg" ]; then
  echo "skip dartfordwarbler.jpg"; skip=$((skip+1))
else
  echo "get  dartfordwarbler.jpg (Dartford Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/dartfordwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/1d/Fauvette_pitchou_Ichkeul_NP.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED dartfordwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED dartfordwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/spottedflycatcher.jpg" ]; then
  echo "skip spottedflycatcher.jpg"; skip=$((skip+1))
else
  echo "get  spottedflycatcher.jpg (Spotted Flycatcher)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/spottedflycatcher.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8c/Muscicapa_striata_%D0%BC%D1%83%D1%85%D0%BE%D0%BB%D0%BE%D0%B2%D0%BA%D0%B0_%D1%81%D1%96%D1%80%D0%B0.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED spottedflycatcher.jpg"; fail=$((fail+1)); FAILED="$FAILED spottedflycatcher.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/piedflycatcher.jpg" ]; then
  echo "skip piedflycatcher.jpg"; skip=$((skip+1))
else
  echo "get  piedflycatcher.jpg (Pied Flycatcher)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/piedflycatcher.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/53/Ficedula_hypoleuca_-Wood_of_Cree_Nature_Reserve%2C_Scotland_-male-8a.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED piedflycatcher.jpg"; fail=$((fail+1)); FAILED="$FAILED piedflycatcher.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redstart.jpg" ]; then
  echo "skip redstart.jpg"; skip=$((skip+1))
else
  echo "get  redstart.jpg (Redstart)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redstart.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/cd/Phoenicurus_phoenicurus_08%28js%29%2C_Lodz_%28Poland%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redstart.jpg"; fail=$((fail+1)); FAILED="$FAILED redstart.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blackredstart.jpg" ]; then
  echo "skip blackredstart.jpg"; skip=$((skip+1))
else
  echo "get  blackredstart.jpg (Black Redstart)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blackredstart.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/7d/Rougequeue_noir_ichkeul057.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blackredstart.jpg"; fail=$((fail+1)); FAILED="$FAILED blackredstart.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/nightingale.jpg" ]; then
  echo "skip nightingale.jpg"; skip=$((skip+1))
else
  echo "get  nightingale.jpg (Nightingale)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/nightingale.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f1/Luscinia_megarhynchos_-_Common_nightingale_-_Nachtegaal_%28cropped%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED nightingale.jpg"; fail=$((fail+1)); FAILED="$FAILED nightingale.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/stonechat.jpg" ]; then
  echo "skip stonechat.jpg"; skip=$((skip+1))
else
  echo "get  stonechat.jpg (Stonechat)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/stonechat.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Stonechat_%28Saxicola_rubicola%29_male%2C_Beaulieu%2C_Hampshire.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED stonechat.jpg"; fail=$((fail+1)); FAILED="$FAILED stonechat.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/whinchat.jpg" ]; then
  echo "skip whinchat.jpg"; skip=$((skip+1))
else
  echo "get  whinchat.jpg (Whinchat)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/whinchat.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f4/Tarier_des_pr%C3%A8s_Zaghouan_NP001.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED whinchat.jpg"; fail=$((fail+1)); FAILED="$FAILED whinchat.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/wheatear.jpg" ]; then
  echo "skip wheatear.jpg"; skip=$((skip+1))
else
  echo "get  wheatear.jpg (Wheatear)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/wheatear.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/0c/Steinschmaetzer_Northern_wheatear_male.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED wheatear.jpg"; fail=$((fail+1)); FAILED="$FAILED wheatear.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/fieldfare.jpg" ]; then
  echo "skip fieldfare.jpg"; skip=$((skip+1))
else
  echo "get  fieldfare.jpg (Fieldfare)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/fieldfare.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c1/Turdus_pilaris_EM1B9020_%2834450664312%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED fieldfare.jpg"; fail=$((fail+1)); FAILED="$FAILED fieldfare.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redwing.jpg" ]; then
  echo "skip redwing.jpg"; skip=$((skip+1))
else
  echo "get  redwing.jpg (Redwing)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redwing.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c1/Redwing_Turdus_iliacus.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redwing.jpg"; fail=$((fail+1)); FAILED="$FAILED redwing.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/mistlethrush.jpg" ]; then
  echo "skip mistlethrush.jpg"; skip=$((skip+1))
else
  echo "get  mistlethrush.jpg (Mistle Thrush)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/mistlethrush.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9e/Turdus_viscivorus.001_-_Cardiff.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED mistlethrush.jpg"; fail=$((fail+1)); FAILED="$FAILED mistlethrush.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/ringouzel.jpg" ]; then
  echo "skip ringouzel.jpg"; skip=$((skip+1))
else
  echo "get  ringouzel.jpg (Ring Ouzel)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/ringouzel.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5d/Turdus_torquatus%2C_Spain_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED ringouzel.jpg"; fail=$((fail+1)); FAILED="$FAILED ringouzel.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/linnet.jpg" ]; then
  echo "skip linnet.jpg"; skip=$((skip+1))
else
  echo "get  linnet.jpg (Linnet)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/linnet.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/cf/Carduelis_cannabina_-England_-male-8.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED linnet.jpg"; fail=$((fail+1)); FAILED="$FAILED linnet.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/lesserredpoll.jpg" ]; then
  echo "skip lesserredpoll.jpg"; skip=$((skip+1))
else
  echo "get  lesserredpoll.jpg (Lesser Redpoll)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/lesserredpoll.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Carduelis_flammea_CT6.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED lesserredpoll.jpg"; fail=$((fail+1)); FAILED="$FAILED lesserredpoll.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/commonredpoll.jpg" ]; then
  echo "skip commonredpoll.jpg"; skip=$((skip+1))
else
  echo "get  commonredpoll.jpg (Common Redpoll)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/commonredpoll.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f8/Carduelis_flammea_CT6.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED commonredpoll.jpg"; fail=$((fail+1)); FAILED="$FAILED commonredpoll.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/twite.jpg" ]; then
  echo "skip twite.jpg"; skip=$((skip+1))
else
  echo "get  twite.jpg (Twite)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/twite.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9b/Twite_%28Linaria_flavirostris%29%2C_Zinc_Road%2C_Teesside_%2853540824279%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED twite.jpg"; fail=$((fail+1)); FAILED="$FAILED twite.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/hawfinch.jpg" ]; then
  echo "skip hawfinch.jpg"; skip=$((skip+1))
else
  echo "get  hawfinch.jpg (Hawfinch)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/hawfinch.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/48/Hawfinch_%28Coccothraustes_coccothraustes%29_male_Drenthe.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED hawfinch.jpg"; fail=$((fail+1)); FAILED="$FAILED hawfinch.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/crossbill.jpg" ]; then
  echo "skip crossbill.jpg"; skip=$((skip+1))
else
  echo "get  crossbill.jpg (Crossbill)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/crossbill.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/49/Red_Crossbills_%28Male%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED crossbill.jpg"; fail=$((fail+1)); FAILED="$FAILED crossbill.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/brambling.jpg" ]; then
  echo "skip brambling.jpg"; skip=$((skip+1))
else
  echo "get  brambling.jpg (Brambling)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/brambling.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/98/Pinson_du_nord.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED brambling.jpg"; fail=$((fail+1)); FAILED="$FAILED brambling.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/treesparrow.jpg" ]; then
  echo "skip treesparrow.jpg"; skip=$((skip+1))
else
  echo "get  treesparrow.jpg (Tree Sparrow)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/treesparrow.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/98/Tree_Sparrow_August_2007_Osaka_Japan.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED treesparrow.jpg"; fail=$((fail+1)); FAILED="$FAILED treesparrow.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/reedbunting.jpg" ]; then
  echo "skip reedbunting.jpg"; skip=$((skip+1))
else
  echo "get  reedbunting.jpg (Reed Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/reedbunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/fc/Reed_Bunting_-_Emberiza_schoeniclus_%2852015951301%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED reedbunting.jpg"; fail=$((fail+1)); FAILED="$FAILED reedbunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/cornbunting.jpg" ]; then
  echo "skip cornbunting.jpg"; skip=$((skip+1))
else
  echo "get  cornbunting.jpg (Corn Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/cornbunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8d/Bruant_proyer_Ichkeul018.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED cornbunting.jpg"; fail=$((fail+1)); FAILED="$FAILED cornbunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/cirlbunting.jpg" ]; then
  echo "skip cirlbunting.jpg"; skip=$((skip+1))
else
  echo "get  cirlbunting.jpg (Cirl Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/cirlbunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/88/Cirl_bunting_cropped.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED cirlbunting.jpg"; fail=$((fail+1)); FAILED="$FAILED cirlbunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/snowbunting.jpg" ]; then
  echo "skip snowbunting.jpg"; skip=$((skip+1))
else
  echo "get  snowbunting.jpg (Snow Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/snowbunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/57/Snow_Bunting_%28Plectrophenax_nivalis%29%2C_Thule%2C_Greenland_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED snowbunting.jpg"; fail=$((fail+1)); FAILED="$FAILED snowbunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/skylark.jpg" ]; then
  echo "skip skylark.jpg"; skip=$((skip+1))
else
  echo "get  skylark.jpg (Skylark)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/skylark.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f6/Skylark_2%2C_Lake_District%2C_England_-_June_2009.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED skylark.jpg"; fail=$((fail+1)); FAILED="$FAILED skylark.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/woodlark.jpg" ]; then
  echo "skip woodlark.jpg"; skip=$((skip+1))
else
  echo "get  woodlark.jpg (Woodlark)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/woodlark.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/96/Lullula_arborea_%28J%C3%A1n_Svetl%C3%ADk%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED woodlark.jpg"; fail=$((fail+1)); FAILED="$FAILED woodlark.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/meadowpipit.jpg" ]; then
  echo "skip meadowpipit.jpg"; skip=$((skip+1))
else
  echo "get  meadowpipit.jpg (Meadow Pipit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/meadowpipit.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b7/Wiesenpieper_Meadow_pipit.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED meadowpipit.jpg"; fail=$((fail+1)); FAILED="$FAILED meadowpipit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/treepipit.jpg" ]; then
  echo "skip treepipit.jpg"; skip=$((skip+1))
else
  echo "get  treepipit.jpg (Tree Pipit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/treepipit.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/6d/Tree_pipit_-_Jamnagar_2021-10-16.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED treepipit.jpg"; fail=$((fail+1)); FAILED="$FAILED treepipit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/rockpipit.jpg" ]; then
  echo "skip rockpipit.jpg"; skip=$((skip+1))
else
  echo "get  rockpipit.jpg (Rock Pipit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/rockpipit.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/ae/2015-04-22_Anthus_petrosus%2C_Portsoy.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED rockpipit.jpg"; fail=$((fail+1)); FAILED="$FAILED rockpipit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/yellowwagtail.jpg" ]; then
  echo "skip yellowwagtail.jpg"; skip=$((skip+1))
else
  echo "get  yellowwagtail.jpg (Yellow Wagtail)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/yellowwagtail.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/67/Wiesenschafstelze.JPG"; then
    ok=$((ok+1))
  else
    echo "  FAILED yellowwagtail.jpg"; fail=$((fail+1)); FAILED="$FAILED yellowwagtail.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/sandmartin.jpg" ]; then
  echo "skip sandmartin.jpg"; skip=$((skip+1))
else
  echo "get  sandmartin.jpg (Sand Martin)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/sandmartin.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a8/Sand_martin_%28Riparia_riparia%29%2C_Guidel-Plage%2C_Brittany%2C_France_%2819765483180%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED sandmartin.jpg"; fail=$((fail+1)); FAILED="$FAILED sandmartin.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greenwoodpecker.jpg" ]; then
  echo "skip greenwoodpecker.jpg"; skip=$((skip+1))
else
  echo "get  greenwoodpecker.jpg (Green Woodpecker)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greenwoodpecker.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c5/European_green_woodpecker_%28Picus_viridis%29_female_Barnes.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greenwoodpecker.jpg"; fail=$((fail+1)); FAILED="$FAILED greenwoodpecker.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/lesserspottedwoodpecker.jpg" ]; then
  echo "skip lesserspottedwoodpecker.jpg"; skip=$((skip+1))
else
  echo "get  lesserspottedwoodpecker.jpg (Lesser Spotted Woodpecker)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/lesserspottedwoodpecker.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/fc/Male_lesser_spotted_woodpecker_%28Dryobates_minor%29.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED lesserspottedwoodpecker.jpg"; fail=$((fail+1)); FAILED="$FAILED lesserspottedwoodpecker.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/cuckoo.jpg" ]; then
  echo "skip cuckoo.jpg"; skip=$((skip+1))
else
  echo "get  cuckoo.jpg (Cuckoo)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/cuckoo.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b9/Cuckoo_%2851169010335%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED cuckoo.jpg"; fail=$((fail+1)); FAILED="$FAILED cuckoo.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littleowl.jpg" ]; then
  echo "skip littleowl.jpg"; skip=$((skip+1))
else
  echo "get  littleowl.jpg (Little Owl)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littleowl.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/6c/%D0%94%D0%BE%D0%BC%D0%BE%D0%B2%D1%8B%D0%B9_%D1%81%D1%8B%D1%87._%D0%A1%D0%BE%D0%B2%D0%B0_%D0%B2_%D0%BA%D0%B0%D0%BD%D1%8C%D0%BE%D0%BD%D0%B5_%D1%83%D1%80%D0%BE%D1%87%D0%B8%D1%89%D0%B0_%D0%91%D0%BE%D0%B7%D0%B6%D1%8B%D1%80%D0%B0._01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littleowl.jpg"; fail=$((fail+1)); FAILED="$FAILED littleowl.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/shortearedowl.jpg" ]; then
  echo "skip shortearedowl.jpg"; skip=$((skip+1))
else
  echo "get  shortearedowl.jpg (Short-eared Owl)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/shortearedowl.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c7/Short_Eared_Owl_on_the_Ground.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED shortearedowl.jpg"; fail=$((fail+1)); FAILED="$FAILED shortearedowl.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/longearedowl.jpg" ]; then
  echo "skip longearedowl.jpg"; skip=$((skip+1))
else
  echo "get  longearedowl.jpg (Long-eared Owl)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/longearedowl.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e2/Long-eared_Owl_-_Kisjuszallas_-_Hungary_S4E0920_%2815671750198%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED longearedowl.jpg"; fail=$((fail+1)); FAILED="$FAILED longearedowl.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/sparrowhawk.jpg" ]; then
  echo "skip sparrowhawk.jpg"; skip=$((skip+1))
else
  echo "get  sparrowhawk.jpg (Sparrowhawk)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/sparrowhawk.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/4d/%D0%AF%D1%81%D1%82%D1%80%D0%B5%D0%B1-%D0%BF%D0%B5%D1%80%D0%B5%D0%BF%D0%B5%D0%BB%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%28Accipiter_nisus%2C_m%29%2C_%D0%98%D0%B7%D0%BC%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2%D1%81%D0%BA%D0%B8%D0%B9_%D0%BF%D0%B0%D1%80%D0%BA.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED sparrowhawk.jpg"; fail=$((fail+1)); FAILED="$FAILED sparrowhawk.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goshawk.jpg" ]; then
  echo "skip goshawk.jpg"; skip=$((skip+1))
else
  echo "get  goshawk.jpg (Goshawk)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goshawk.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/81/Northern_Goshawk_ad_M2.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED goshawk.jpg"; fail=$((fail+1)); FAILED="$FAILED goshawk.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/peregrine.jpg" ]; then
  echo "skip peregrine.jpg"; skip=$((skip+1))
else
  echo "get  peregrine.jpg (Peregrine)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/peregrine.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9c/Falco_peregrinus_m_Humber_Bay_Park_Toronto.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED peregrine.jpg"; fail=$((fail+1)); FAILED="$FAILED peregrine.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/hobby.jpg" ]; then
  echo "skip hobby.jpg"; skip=$((skip+1))
else
  echo "get  hobby.jpg (Hobby)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/hobby.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/df/Eurasian_hobby_%28Falco_subbuteo%29_by_Shantanu_Kuveskar.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED hobby.jpg"; fail=$((fail+1)); FAILED="$FAILED hobby.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/merlin.jpg" ]; then
  echo "skip merlin.jpg"; skip=$((skip+1))
else
  echo "get  merlin.jpg (Merlin)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/merlin.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e3/Merlin_in_Prospect_Park_%2863386%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED merlin.jpg"; fail=$((fail+1)); FAILED="$FAILED merlin.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/marshharrier.jpg" ]; then
  echo "skip marshharrier.jpg"; skip=$((skip+1))
else
  echo "get  marshharrier.jpg (Marsh Harrier)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/marshharrier.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/33/Western_Marsh_Harrier-_Bangalore%2C_India.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED marshharrier.jpg"; fail=$((fail+1)); FAILED="$FAILED marshharrier.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/henharrier.jpg" ]; then
  echo "skip henharrier.jpg"; skip=$((skip+1))
else
  echo "get  henharrier.jpg (Hen Harrier)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/henharrier.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/87/Circus_cyaneus_265961899.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED henharrier.jpg"; fail=$((fail+1)); FAILED="$FAILED henharrier.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goldeneagle.jpg" ]; then
  echo "skip goldeneagle.jpg"; skip=$((skip+1))
else
  echo "get  goldeneagle.jpg (Golden Eagle)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goldeneagle.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/cc/015_Wild_Golden_Eagle_in_flight_at_Pfyn-Finges_%28Switzerland%29_Photo_by_Giles_Laurent.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED goldeneagle.jpg"; fail=$((fail+1)); FAILED="$FAILED goldeneagle.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/whitetailedeagle.jpg" ]; then
  echo "skip whitetailedeagle.jpg"; skip=$((skip+1))
else
  echo "get  whitetailedeagle.jpg (White-tailed Eagle)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/whitetailedeagle.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/6d/NZ7_5265_%2852812350718%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED whitetailedeagle.jpg"; fail=$((fail+1)); FAILED="$FAILED whitetailedeagle.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/osprey.jpg" ]; then
  echo "skip osprey.jpg"; skip=$((skip+1))
else
  echo "get  osprey.jpg (Osprey)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/osprey.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a0/Osprey_Perched_Snag_Heislerville.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED osprey.jpg"; fail=$((fail+1)); FAILED="$FAILED osprey.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greypartridge.jpg" ]; then
  echo "skip greypartridge.jpg"; skip=$((skip+1))
else
  echo "get  greypartridge.jpg (Grey Partridge)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greypartridge.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/31/Perdix_perdix_Turvey_3.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greypartridge.jpg"; fail=$((fail+1)); FAILED="$FAILED greypartridge.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redleggedpartridge.jpg" ]; then
  echo "skip redleggedpartridge.jpg"; skip=$((skip+1))
else
  echo "get  redleggedpartridge.jpg (Red-legged Partridge)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redleggedpartridge.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8c/Perdrix_rouge.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redleggedpartridge.jpg"; fail=$((fail+1)); FAILED="$FAILED redleggedpartridge.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redgrouse.jpg" ]; then
  echo "skip redgrouse.jpg"; skip=$((skip+1))
else
  echo "get  redgrouse.jpg (Red Grouse)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redgrouse.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/ec/Lagopus_lagopus_adult_%28Denali%2C_2010%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redgrouse.jpg"; fail=$((fail+1)); FAILED="$FAILED redgrouse.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blackgrouse.jpg" ]; then
  echo "skip blackgrouse.jpg"; skip=$((skip+1))
else
  echo "get  blackgrouse.jpg (Black Grouse)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blackgrouse.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/bf/Black_Grouse_Nationalpark_Bayerischer_Wald.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blackgrouse.jpg"; fail=$((fail+1)); FAILED="$FAILED blackgrouse.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/capercaillie.jpg" ]; then
  echo "skip capercaillie.jpg"; skip=$((skip+1))
else
  echo "get  capercaillie.jpg (Capercaillie)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/capercaillie.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/ba/David_Palmer_Capercaillie.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED capercaillie.jpg"; fail=$((fail+1)); FAILED="$FAILED capercaillie.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/quail.jpg" ]; then
  echo "skip quail.jpg"; skip=$((skip+1))
else
  echo "get  quail.jpg (Quail)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/quail.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/4f/Coturnix_coturnix%2C_Fraunberg%2C_Bayern%2C_Deutschland_1%2C_Ausschnitt.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED quail.jpg"; fail=$((fail+1)); FAILED="$FAILED quail.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greyplover.jpg" ]; then
  echo "skip greyplover.jpg"; skip=$((skip+1))
else
  echo "get  greyplover.jpg (Grey Plover)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greyplover.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/16/Breeding_plumage_Black-bellied_plover_%28Pluvialis_squatarola%29_Great_Bay_Wildlife_Management_Area%2C_New_Jersey%2C_USA.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED greyplover.jpg"; fail=$((fail+1)); FAILED="$FAILED greyplover.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goldenplover.jpg" ]; then
  echo "skip goldenplover.jpg"; skip=$((skip+1))
else
  echo "get  goldenplover.jpg (Golden Plover)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goldenplover.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/fb/European_golden_plover_%28Pluvialis_apricaria%29_female_breeding_Keflavik.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED goldenplover.jpg"; fail=$((fail+1)); FAILED="$FAILED goldenplover.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/ringedplover.jpg" ]; then
  echo "skip ringedplover.jpg"; skip=$((skip+1))
else
  echo "get  ringedplover.jpg (Ringed Plover)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/ringedplover.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/d2/Common_ringed_plover_%28Charadrius_hiaticula%29_Oppdal.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED ringedplover.jpg"; fail=$((fail+1)); FAILED="$FAILED ringedplover.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littleringedplover.jpg" ]; then
  echo "skip littleringedplover.jpg"; skip=$((skip+1))
else
  echo "get  littleringedplover.jpg (Little Ringed Plover)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littleringedplover.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/d3/Charadrius_dubius_-_Little_ringed_plover_05.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littleringedplover.jpg"; fail=$((fail+1)); FAILED="$FAILED littleringedplover.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/dunlin.jpg" ]; then
  echo "skip dunlin.jpg"; skip=$((skip+1))
else
  echo "get  dunlin.jpg (Dunlin)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/dunlin.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/39/Dunlin_%28Calidris_alpina%29_in_the_Delaware_Bay_at_Heislerville_Wildlife_Management_Area%2C_New_Jersey%2C_USA.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED dunlin.jpg"; fail=$((fail+1)); FAILED="$FAILED dunlin.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/sanderling.jpg" ]; then
  echo "skip sanderling.jpg"; skip=$((skip+1))
else
  echo "get  sanderling.jpg (Sanderling)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/sanderling.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/7a/Sanderling_%28Calidris_alba%29_in_Breeding_Plumage_in_the_Delaware_Bay_-_Heislerville_WMA_-_Cumberland_County_-_New_Jersey_-_May_2026.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED sanderling.jpg"; fail=$((fail+1)); FAILED="$FAILED sanderling.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/knot.jpg" ]; then
  echo "skip knot.jpg"; skip=$((skip+1))
else
  echo "get  knot.jpg (Knot)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/knot.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/03/Rufa_red_knot_%28Calidris_canutus_rufa%29_in_Delaware_Bay%2C_New_Jersey.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED knot.jpg"; fail=$((fail+1)); FAILED="$FAILED knot.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/turnstone.jpg" ]; then
  echo "skip turnstone.jpg"; skip=$((skip+1))
else
  echo "get  turnstone.jpg (Turnstone)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/turnstone.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/2b/Ruddy_turnstone_%28Arenaria_interpres%29_Breeding_Plumage_Heislerville_WMA%2C_Cumberland_County%2C_New_Jersey%2C_USA.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED turnstone.jpg"; fail=$((fail+1)); FAILED="$FAILED turnstone.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redshank.jpg" ]; then
  echo "skip redshank.jpg"; skip=$((skip+1))
else
  echo "get  redshank.jpg (Redshank)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redshank.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e7/Common_redshank_%28Tringa_totanus%29_breeding_Marken.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redshank.jpg"; fail=$((fail+1)); FAILED="$FAILED redshank.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greenshank.jpg" ]; then
  echo "skip greenshank.jpg"; skip=$((skip+1))
else
  echo "get  greenshank.jpg (Greenshank)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greenshank.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c5/Common-Greenshank.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greenshank.jpg"; fail=$((fail+1)); FAILED="$FAILED greenshank.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/commonsandpiper.jpg" ]; then
  echo "skip commonsandpiper.jpg"; skip=$((skip+1))
else
  echo "get  commonsandpiper.jpg (Common Sandpiper)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/commonsandpiper.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a7/Actitis_hypoleucos_-_Laem_Pak_Bia.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED commonsandpiper.jpg"; fail=$((fail+1)); FAILED="$FAILED commonsandpiper.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greensandpiper.jpg" ]; then
  echo "skip greensandpiper.jpg"; skip=$((skip+1))
else
  echo "get  greensandpiper.jpg (Green Sandpiper)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greensandpiper.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/92/Green-Sandpiper-Sandeep.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greensandpiper.jpg"; fail=$((fail+1)); FAILED="$FAILED greensandpiper.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/snipe.jpg" ]; then
  echo "skip snipe.jpg"; skip=$((skip+1))
else
  echo "get  snipe.jpg (Snipe)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/snipe.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c6/Common_snipe_%28Gallinago_gallinago%29_2022.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED snipe.jpg"; fail=$((fail+1)); FAILED="$FAILED snipe.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/woodcock.jpg" ]; then
  echo "skip woodcock.jpg"; skip=$((skip+1))
else
  echo "get  woodcock.jpg (Woodcock)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/woodcock.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/1c/Woodcock_earthworm.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED woodcock.jpg"; fail=$((fail+1)); FAILED="$FAILED woodcock.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blacktailedgodwit.jpg" ]; then
  echo "skip blacktailedgodwit.jpg"; skip=$((skip+1))
else
  echo "get  blacktailedgodwit.jpg (Black-tailed Godwit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blacktailedgodwit.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/40/Black-tailed_Godwit_Uferschnepfe.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blacktailedgodwit.jpg"; fail=$((fail+1)); FAILED="$FAILED blacktailedgodwit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/bartailedgodwit.jpg" ]; then
  echo "skip bartailedgodwit.jpg"; skip=$((skip+1))
else
  echo "get  bartailedgodwit.jpg (Bar-tailed Godwit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/bartailedgodwit.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/ca/Bar-tailed_Godwit.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED bartailedgodwit.jpg"; fail=$((fail+1)); FAILED="$FAILED bartailedgodwit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/whimbrel.jpg" ]; then
  echo "skip whimbrel.jpg"; skip=$((skip+1))
else
  echo "get  whimbrel.jpg (Whimbrel)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/whimbrel.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/0c/Whimbrel_Numenius_phaeopus.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED whimbrel.jpg"; fail=$((fail+1)); FAILED="$FAILED whimbrel.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/avocet.jpg" ]; then
  echo "skip avocet.jpg"; skip=$((skip+1))
else
  echo "get  avocet.jpg (Avocet)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/avocet.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c5/Pied_Avocet_Recurvirostra_avosetta.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED avocet.jpg"; fail=$((fail+1)); FAILED="$FAILED avocet.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/ruff.jpg" ]; then
  echo "skip ruff.jpg"; skip=$((skip+1))
else
  echo "get  ruff.jpg (Ruff)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/ruff.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5f/Philomachus_pugnax_-Diergaarde_Blijdorp-8c.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED ruff.jpg"; fail=$((fail+1)); FAILED="$FAILED ruff.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littlestint.jpg" ]; then
  echo "skip littlestint.jpg"; skip=$((skip+1))
else
  echo "get  littlestint.jpg (Little Stint)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littlestint.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/36/B%C3%A9casseau_minute_Thyna007.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littlestint.jpg"; fail=$((fail+1)); FAILED="$FAILED littlestint.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/purplesandpiper.jpg" ]; then
  echo "skip purplesandpiper.jpg"; skip=$((skip+1))
else
  echo "get  purplesandpiper.jpg (Purple Sandpiper)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/purplesandpiper.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8a/PUSA_perched_LBI.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED purplesandpiper.jpg"; fail=$((fail+1)); FAILED="$FAILED purplesandpiper.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greylaggoose.jpg" ]; then
  echo "skip greylaggoose.jpg"; skip=$((skip+1))
else
  echo "get  greylaggoose.jpg (Grey Lag Goose)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greylaggoose.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/57/Greylag_Goose_-_St_James%27s_Park%2C_London_-_Nov_2006.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greylaggoose.jpg"; fail=$((fail+1)); FAILED="$FAILED greylaggoose.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/pinkfootedgoose.jpg" ]; then
  echo "skip pinkfootedgoose.jpg"; skip=$((skip+1))
else
  echo "get  pinkfootedgoose.jpg (Pink-footed Goose)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/pinkfootedgoose.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5b/2019-03-25_Anser_brachyrhynchus%2C_Killingworth_Lake%2C_Northumberland_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED pinkfootedgoose.jpg"; fail=$((fail+1)); FAILED="$FAILED pinkfootedgoose.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/whitefrontedgoose.jpg" ]; then
  echo "skip whitefrontedgoose.jpg"; skip=$((skip+1))
else
  echo "get  whitefrontedgoose.jpg (White-fronted Goose)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/whitefrontedgoose.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/0f/Greater_white-fronted_goose_in_flight-1045.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED whitefrontedgoose.jpg"; fail=$((fail+1)); FAILED="$FAILED whitefrontedgoose.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/barnaclegoose.jpg" ]; then
  echo "skip barnaclegoose.jpg"; skip=$((skip+1))
else
  echo "get  barnaclegoose.jpg (Barnacle Goose)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/barnaclegoose.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f5/Barnacle-Goose.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED barnaclegoose.jpg"; fail=$((fail+1)); FAILED="$FAILED barnaclegoose.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/brentgoose.jpg" ]; then
  echo "skip brentgoose.jpg"; skip=$((skip+1))
else
  echo "get  brentgoose.jpg (Brent Goose)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/brentgoose.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/26/Atlantic_Brant_Fly-By_Wiki.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED brentgoose.jpg"; fail=$((fail+1)); FAILED="$FAILED brentgoose.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/egyptiangoose.jpg" ]; then
  echo "skip egyptiangoose.jpg"; skip=$((skip+1))
else
  echo "get  egyptiangoose.jpg (Egyptian Goose)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/egyptiangoose.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/73/Egyptian_goose_%28Alopochen_aegyptiaca%29_London.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED egyptiangoose.jpg"; fail=$((fail+1)); FAILED="$FAILED egyptiangoose.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/shelduck.jpg" ]; then
  echo "skip shelduck.jpg"; skip=$((skip+1))
else
  echo "get  shelduck.jpg (Shelduck)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/shelduck.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/84/Common_Shellduck_%28Tadorna_tadorna%29_%2826499348215%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED shelduck.jpg"; fail=$((fail+1)); FAILED="$FAILED shelduck.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/wigeon.jpg" ]; then
  echo "skip wigeon.jpg"; skip=$((skip+1))
else
  echo "get  wigeon.jpg (Wigeon)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/wigeon.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5f/Eurasian_wigeon_in_Sakai%2C_Osaka%2C_February_2016.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED wigeon.jpg"; fail=$((fail+1)); FAILED="$FAILED wigeon.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/gadwall.jpg" ]; then
  echo "skip gadwall.jpg"; skip=$((skip+1))
else
  echo "get  gadwall.jpg (Gadwall)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/gadwall.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9a/Gadwall-Anas-strepera.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED gadwall.jpg"; fail=$((fail+1)); FAILED="$FAILED gadwall.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/teal.jpg" ]; then
  echo "skip teal.jpg"; skip=$((skip+1))
else
  echo "get  teal.jpg (Teal)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/teal.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9c/Eurasian_teal_%28Anas_crecca_crecca%29_male_Qingshui.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED teal.jpg"; fail=$((fail+1)); FAILED="$FAILED teal.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/pintail.jpg" ]; then
  echo "skip pintail.jpg"; skip=$((skip+1))
else
  echo "get  pintail.jpg (Pintail)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/pintail.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/0b/Northern_Pintails_%28Male_%26_Female%29_I_IMG_0911.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED pintail.jpg"; fail=$((fail+1)); FAILED="$FAILED pintail.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/shoveler.jpg" ]; then
  echo "skip shoveler.jpg"; skip=$((skip+1))
else
  echo "get  shoveler.jpg (Shoveler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/shoveler.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f9/Northern_shoveler_%28Spatula_clypeata%29_male_Marken.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED shoveler.jpg"; fail=$((fail+1)); FAILED="$FAILED shoveler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/pochard.jpg" ]; then
  echo "skip pochard.jpg"; skip=$((skip+1))
else
  echo "get  pochard.jpg (Pochard)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/pochard.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e5/Common_Pochard_2025_11_15_04.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED pochard.jpg"; fail=$((fail+1)); FAILED="$FAILED pochard.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/tuftedduck.jpg" ]; then
  echo "skip tuftedduck.jpg"; skip=$((skip+1))
else
  echo "get  tuftedduck.jpg (Tufted Duck)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/tuftedduck.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/73/Tufted_Duck_09_05_2025_02.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED tuftedduck.jpg"; fail=$((fail+1)); FAILED="$FAILED tuftedduck.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goldeneye.jpg" ]; then
  echo "skip goldeneye.jpg"; skip=$((skip+1))
else
  echo "get  goldeneye.jpg (Goldeneye)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goldeneye.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/34/Common_Goldeneye_%28Bucephala_clangula%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED goldeneye.jpg"; fail=$((fail+1)); FAILED="$FAILED goldeneye.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goosander.jpg" ]; then
  echo "skip goosander.jpg"; skip=$((skip+1))
else
  echo "get  goosander.jpg (Goosander)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goosander.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9f/Mergus_merganser_merganser_2078_%285561922560%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED goosander.jpg"; fail=$((fail+1)); FAILED="$FAILED goosander.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redbreastedmerganser.jpg" ]; then
  echo "skip redbreastedmerganser.jpg"; skip=$((skip+1))
else
  echo "get  redbreastedmerganser.jpg (Red-breasted Merganser)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redbreastedmerganser.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5b/Red-breasted_Merganser_male_%28Mergus_serrator%29%2C_Barnegat_Inlet%2C_New_Jersey%2C_USA.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redbreastedmerganser.jpg"; fail=$((fail+1)); FAILED="$FAILED redbreastedmerganser.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/eider.jpg" ]; then
  echo "skip eider.jpg"; skip=$((skip+1))
else
  echo "get  eider.jpg (Eider)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/eider.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/15/%D0%9F%D1%83%D1%85%D1%96%D0%B2%D0%BA%D0%B0_%D0%BD%D0%B0_%D0%9A%D1%96%D0%BD%D0%B1%D1%83%D1%80%D0%BD%D1%81%D1%8C%D0%BA%D1%96%D0%B9_%D0%BA%D0%BE%D1%81%D1%96.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED eider.jpg"; fail=$((fail+1)); FAILED="$FAILED eider.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/commonscoter.jpg" ]; then
  echo "skip commonscoter.jpg"; skip=$((skip+1))
else
  echo "get  commonscoter.jpg (Common Scoter)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/commonscoter.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/0b/M%C3%A4nnliche_Trauerente_%28Melanitta_nigra%29_-_Spiekeroog%2C_Nationalpark_Nieders%C3%A4chsisches_Wattenmeer.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED commonscoter.jpg"; fail=$((fail+1)); FAILED="$FAILED commonscoter.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/longtailedduck.jpg" ]; then
  echo "skip longtailedduck.jpg"; skip=$((skip+1))
else
  echo "get  longtailedduck.jpg (Long-tailed Duck)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/longtailedduck.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8e/Long-tailed-duck.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED longtailedduck.jpg"; fail=$((fail+1)); FAILED="$FAILED longtailedduck.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/mandarinduck.jpg" ]; then
  echo "skip mandarinduck.jpg"; skip=$((skip+1))
else
  echo "get  mandarinduck.jpg (Mandarin Duck)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/mandarinduck.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/43/Pair_of_mandarin_ducks.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED mandarinduck.jpg"; fail=$((fail+1)); FAILED="$FAILED mandarinduck.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/whooperswan.jpg" ]; then
  echo "skip whooperswan.jpg"; skip=$((skip+1))
else
  echo "get  whooperswan.jpg (Whooper Swan)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/whooperswan.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/1c/Cygnus_cygnus_Singschwan.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED whooperswan.jpg"; fail=$((fail+1)); FAILED="$FAILED whooperswan.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/bewicksswan.jpg" ]; then
  echo "skip bewicksswan.jpg"; skip=$((skip+1))
else
  echo "get  bewicksswan.jpg (Bewick's Swan)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/bewicksswan.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/4a/Cygnus_bewickii_01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED bewicksswan.jpg"; fail=$((fail+1)); FAILED="$FAILED bewicksswan.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littlegrebe.jpg" ]; then
  echo "skip littlegrebe.jpg"; skip=$((skip+1))
else
  echo "get  littlegrebe.jpg (Little Grebe)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littlegrebe.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/84/Little_grebe_Zwergtaucher.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littlegrebe.jpg"; fail=$((fail+1)); FAILED="$FAILED littlegrebe.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/slavoniangrebe.jpg" ]; then
  echo "skip slavoniangrebe.jpg"; skip=$((skip+1))
else
  echo "get  slavoniangrebe.jpg (Slavonian Grebe)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/slavoniangrebe.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/77/Podiceps_auritus_%2813909539717%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED slavoniangrebe.jpg"; fail=$((fail+1)); FAILED="$FAILED slavoniangrebe.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blackneckedgrebe.jpg" ]; then
  echo "skip blackneckedgrebe.jpg"; skip=$((skip+1))
else
  echo "get  blackneckedgrebe.jpg (Black-necked Grebe)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blackneckedgrebe.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/10/Black-necked_Grebe_Schwarzhalstaucher.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blackneckedgrebe.jpg"; fail=$((fail+1)); FAILED="$FAILED blackneckedgrebe.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/waterrail.jpg" ]; then
  echo "skip waterrail.jpg"; skip=$((skip+1))
else
  echo "get  waterrail.jpg (Water Rail)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/waterrail.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b3/Water_rail_2022_04_30_01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED waterrail.jpg"; fail=$((fail+1)); FAILED="$FAILED waterrail.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littleegret.jpg" ]; then
  echo "skip littleegret.jpg"; skip=$((skip+1))
else
  echo "get  littleegret.jpg (Little Egret)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littleegret.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f1/Little_egret_%28Egretta_garzetta%29_Photograph_by_Shantanu_Kuveskar.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littleegret.jpg"; fail=$((fail+1)); FAILED="$FAILED littleegret.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greatwhiteegret.jpg" ]; then
  echo "skip greatwhiteegret.jpg"; skip=$((skip+1))
else
  echo "get  greatwhiteegret.jpg (Great White Egret)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greatwhiteegret.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a7/Great_Egret_%28Ardea_alba%29_in_Breeding_Plumage%2C_Cape_May_County%2C_New_Jersey%2C_USA_%28cropped%29.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED greatwhiteegret.jpg"; fail=$((fail+1)); FAILED="$FAILED greatwhiteegret.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/cattleegret.jpg" ]; then
  echo "skip cattleegret.jpg"; skip=$((skip+1))
else
  echo "get  cattleegret.jpg (Cattle Egret)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/cattleegret.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/25/Kuhreiher_am_Strand_in_%C3%84gypten_9528BE.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED cattleegret.jpg"; fail=$((fail+1)); FAILED="$FAILED cattleegret.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/bittern.jpg" ]; then
  echo "skip bittern.jpg"; skip=$((skip+1))
else
  echo "get  bittern.jpg (Bittern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/bittern.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/3b/Eurasian_Bittern_-_Torrile_-_Italy_4528_%2815409347121%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED bittern.jpg"; fail=$((fail+1)); FAILED="$FAILED bittern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/spoonbill.jpg" ]; then
  echo "skip spoonbill.jpg"; skip=$((skip+1))
else
  echo "get  spoonbill.jpg (Spoonbill)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/spoonbill.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8c/Eurasian_Spoonbill-2.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED spoonbill.jpg"; fail=$((fail+1)); FAILED="$FAILED spoonbill.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/commontern.jpg" ]; then
  echo "skip commontern.jpg"; skip=$((skip+1))
else
  echo "get  commontern.jpg (Common Tern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/commontern.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8e/2014-05-18_Sterna_hirundo%2C_Killingworth_Lake%2C_Northumberland_04.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED commontern.jpg"; fail=$((fail+1)); FAILED="$FAILED commontern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/arctictern.jpg" ]; then
  echo "skip arctictern.jpg"; skip=$((skip+1))
else
  echo "get  arctictern.jpg (Arctic Tern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/arctictern.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/fa/Arctic_tern_%28Sterna_paradisaea%29_Flatey_3.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED arctictern.jpg"; fail=$((fail+1)); FAILED="$FAILED arctictern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/sandwichtern.jpg" ]; then
  echo "skip sandwichtern.jpg"; skip=$((skip+1))
else
  echo "get  sandwichtern.jpg (Sandwich Tern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/sandwichtern.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/3e/2021-07-10_Thalasseus_sandvicensis%2C_St_Marys_Island%2C_Northumberland_01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED sandwichtern.jpg"; fail=$((fail+1)); FAILED="$FAILED sandwichtern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littletern.jpg" ]; then
  echo "skip littletern.jpg"; skip=$((skip+1))
else
  echo "get  littletern.jpg (Little Tern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littletern.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9e/%D0%9A%D1%80%D1%8F%D1%87%D0%BE%D0%BA_%D0%BC%D0%B0%D0%BB%D0%B8%D0%B9.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littletern.jpg"; fail=$((fail+1)); FAILED="$FAILED littletern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/commongull.jpg" ]; then
  echo "skip commongull.jpg"; skip=$((skip+1))
else
  echo "get  commongull.jpg (Common Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/commongull.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b1/Larus_canus_Common_Gull_in_Norway.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED commongull.jpg"; fail=$((fail+1)); FAILED="$FAILED commongull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/lesserblackbackedgull.jpg" ]; then
  echo "skip lesserblackbackedgull.jpg"; skip=$((skip+1))
else
  echo "get  lesserblackbackedgull.jpg (Lesser Black-backed Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/lesserblackbackedgull.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5e/Larus-fuscus-taxbox.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED lesserblackbackedgull.jpg"; fail=$((fail+1)); FAILED="$FAILED lesserblackbackedgull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greatblackbackedgull.jpg" ]; then
  echo "skip greatblackbackedgull.jpg"; skip=$((skip+1))
else
  echo "get  greatblackbackedgull.jpg (Great Black-backed Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greatblackbackedgull.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c6/Great_Black-backed_Gull_Larus_marinus.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greatblackbackedgull.jpg"; fail=$((fail+1)); FAILED="$FAILED greatblackbackedgull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/kittiwake.jpg" ]; then
  echo "skip kittiwake.jpg"; skip=$((skip+1))
else
  echo "get  kittiwake.jpg (Kittiwake)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/kittiwake.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/03/Rissa_tridactyla_%28Vard%C3%B8%2C_2012%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED kittiwake.jpg"; fail=$((fail+1)); FAILED="$FAILED kittiwake.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/mediterraneangull.jpg" ]; then
  echo "skip mediterraneangull.jpg"; skip=$((skip+1))
else
  echo "get  mediterraneangull.jpg (Mediterranean Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/mediterraneangull.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e7/Larus_melanocephalus_aka_Mediterranean_Gull_rare_guest_in_Sweden2.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED mediterraneangull.jpg"; fail=$((fail+1)); FAILED="$FAILED mediterraneangull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/guillemot.jpg" ]; then
  echo "skip guillemot.jpg"; skip=$((skip+1))
else
  echo "get  guillemot.jpg (Guillemot)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/guillemot.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/64/Common_Murre_Uria_aalge.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED guillemot.jpg"; fail=$((fail+1)); FAILED="$FAILED guillemot.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/razorbill.jpg" ]; then
  echo "skip razorbill.jpg"; skip=$((skip+1))
else
  echo "get  razorbill.jpg (Razorbill)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/razorbill.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8d/Razorbill_with_a_nice_catch.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED razorbill.jpg"; fail=$((fail+1)); FAILED="$FAILED razorbill.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blackguillemot.jpg" ]; then
  echo "skip blackguillemot.jpg"; skip=$((skip+1))
else
  echo "get  blackguillemot.jpg (Black Guillemot)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blackguillemot.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/87/Black_guillemot_%28Cepphus_grylle_icelandicus%29_with_a_hermit_crab_%28Pagurus_bernhardus%29_Flatey.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blackguillemot.jpg"; fail=$((fail+1)); FAILED="$FAILED blackguillemot.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/fulmar.jpg" ]; then
  echo "skip fulmar.jpg"; skip=$((skip+1))
else
  echo "get  fulmar.jpg (Fulmar)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/fulmar.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/34/Fulmar_%28Fulmarus_glacialis%29_in_flight_Moher.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED fulmar.jpg"; fail=$((fail+1)); FAILED="$FAILED fulmar.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/manxshearwater.jpg" ]; then
  echo "skip manxshearwater.jpg"; skip=$((skip+1))
else
  echo "get  manxshearwater.jpg (Manx Shearwater)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/manxshearwater.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8e/Manx_Shearwater.JPG"; then
    ok=$((ok+1))
  else
    echo "  FAILED manxshearwater.jpg"; fail=$((fail+1)); FAILED="$FAILED manxshearwater.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/shag.jpg" ]; then
  echo "skip shag.jpg"; skip=$((skip+1))
else
  echo "get  shag.jpg (Shag)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/shag.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/63/Shag_Phalacrocorax_aristotelis.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED shag.jpg"; fail=$((fail+1)); FAILED="$FAILED shag.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/stormpetrel.jpg" ]; then
  echo "skip stormpetrel.jpg"; skip=$((skip+1))
else
  echo "get  stormpetrel.jpg (Storm Petrel)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/stormpetrel.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b4/European_storm_petrel_%28Hydrobates_pelagicus%29_Sagres.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED stormpetrel.jpg"; fail=$((fail+1)); FAILED="$FAILED stormpetrel.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/arcticskua.jpg" ]; then
  echo "skip arcticskua.jpg"; skip=$((skip+1))
else
  echo "get  arcticskua.jpg (Arctic Skua)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/arcticskua.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/ba/Arctic_Skua_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED arcticskua.jpg"; fail=$((fail+1)); FAILED="$FAILED arcticskua.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greatskua.jpg" ]; then
  echo "skip greatskua.jpg"; skip=$((skip+1))
else
  echo "get  greatskua.jpg (Great Skua)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greatskua.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/65/Stercorarius_skua_-Iceland-8.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greatskua.jpg"; fail=$((fail+1)); FAILED="$FAILED greatskua.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littleauk.jpg" ]; then
  echo "skip littleauk.jpg"; skip=$((skip+1))
else
  echo "get  littleauk.jpg (Little Auk)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littleauk.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/4c/Krabbentaucher_Sommer_2023.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littleauk.jpg"; fail=$((fail+1)); FAILED="$FAILED littleauk.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/dipper.jpg" ]; then
  echo "skip dipper.jpg"; skip=$((skip+1))
else
  echo "get  dipper.jpg (Dipper)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/dipper.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/f5/Cinclus_cinclus_-Kirkcudbright%2C_Scotland-8.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED dipper.jpg"; fail=$((fail+1)); FAILED="$FAILED dipper.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/waxwing.jpg" ]; then
  echo "skip waxwing.jpg"; skip=$((skip+1))
else
  echo "get  waxwing.jpg (Waxwing)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/waxwing.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/16/Bombycilla_garrulus%2C_Novosibirsk_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED waxwing.jpg"; fail=$((fail+1)); FAILED="$FAILED waxwing.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/nightjar.jpg" ]; then
  echo "skip nightjar.jpg"; skip=$((skip+1))
else
  echo "get  nightjar.jpg (Nightjar)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/nightjar.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/c1/%C5%9Eivanxap%C3%AEnok.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED nightjar.jpg"; fail=$((fail+1)); FAILED="$FAILED nightjar.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/hoopoe.jpg" ]; then
  echo "skip hoopoe.jpg"; skip=$((skip+1))
else
  echo "get  hoopoe.jpg (Hoopoe)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/hoopoe.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/62/Israel._Eurasian_Hoopoe_%286497645007%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED hoopoe.jpg"; fail=$((fail+1)); FAILED="$FAILED hoopoe.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/wryneck.jpg" ]; then
  echo "skip wryneck.jpg"; skip=$((skip+1))
else
  echo "get  wryneck.jpg (Wryneck)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/wryneck.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a4/Jynx_torquilla_%D0%BA%D1%80%D1%83%D1%82%D0%B8%D0%B3%D0%BE%D0%BB%D0%BE%D0%B2%D0%BA%D0%B0.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED wryneck.jpg"; fail=$((fail+1)); FAILED="$FAILED wryneck.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/corncrake.jpg" ]; then
  echo "skip corncrake.jpg"; skip=$((skip+1))
else
  echo "get  corncrake.jpg (Corncrake)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/corncrake.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/76/Ruisr%C3%A4%C3%A4kk%C3%A4.JPG"; then
    ok=$((ok+1))
  else
    echo "  FAILED corncrake.jpg"; fail=$((fail+1)); FAILED="$FAILED corncrake.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/spottedcrake.jpg" ]; then
  echo "skip spottedcrake.jpg"; skip=$((skip+1))
else
  echo "get  spottedcrake.jpg (Spotted Crake)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/spottedcrake.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/25/Spotted_crake_%28Porzana_porzana%29_%286830876880%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED spottedcrake.jpg"; fail=$((fail+1)); FAILED="$FAILED spottedcrake.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/stonecurlew.jpg" ]; then
  echo "skip stonecurlew.jpg"; skip=$((skip+1))
else
  echo "get  stonecurlew.jpg (Stone Curlew)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/stonecurlew.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/d8/Burhinus_oedicnemus_insularum_Lanzarote_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED stonecurlew.jpg"; fail=$((fail+1)); FAILED="$FAILED stonecurlew.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/chough.jpg" ]; then
  echo "skip chough.jpg"; skip=$((skip+1))
else
  echo "get  chough.jpg (Chough)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/chough.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/12/Bran_goesgoch_Pyrrhocorax_pyrrhocorax.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED chough.jpg"; fail=$((fail+1)); FAILED="$FAILED chough.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redneckedphalarope.jpg" ]; then
  echo "skip redneckedphalarope.jpg"; skip=$((skip+1))
else
  echo "get  redneckedphalarope.jpg (Red-necked Phalarope)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redneckedphalarope.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5c/Red-necked_Phalarope.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redneckedphalarope.jpg"; fail=$((fail+1)); FAILED="$FAILED redneckedphalarope.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greyphalarope.jpg" ]; then
  echo "skip greyphalarope.jpg"; skip=$((skip+1))
else
  echo "get  greyphalarope.jpg (Grey Phalarope)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greyphalarope.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/17/Phalaropus_fulicarius_98755138_%28cropped%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greyphalarope.jpg"; fail=$((fail+1)); FAILED="$FAILED greyphalarope.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/ptarmigan.jpg" ]; then
  echo "skip ptarmigan.jpg"; skip=$((skip+1))
else
  echo "get  ptarmigan.jpg (Ptarmigan)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/ptarmigan.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/46/Rock_ptarmigan_%28Lagopus_muta_islandorum%29_female_breeding_Botnsvatn.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED ptarmigan.jpg"; fail=$((fail+1)); FAILED="$FAILED ptarmigan.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/crestedlark.jpg" ]; then
  echo "skip crestedlark.jpg"; skip=$((skip+1))
else
  echo "get  crestedlark.jpg (Crested Lark)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/crestedlark.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/15/Cochevis_hupp%C3%A9_Gbollat.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED crestedlark.jpg"; fail=$((fail+1)); FAILED="$FAILED crestedlark.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/shorelark.jpg" ]; then
  echo "skip shorelark.jpg"; skip=$((skip+1))
else
  echo "get  shorelark.jpg (Shore Lark)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/shorelark.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/42/Horned_lark_%28eremophila_alpestris%29_01.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED shorelark.jpg"; fail=$((fail+1)); FAILED="$FAILED shorelark.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/waterpipit.jpg" ]; then
  echo "skip waterpipit.jpg"; skip=$((skip+1))
else
  echo "get  waterpipit.jpg (Water Pipit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/waterpipit.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/24/Anthus_spinoletta_-_Water_Pipit%2C_Kahramanmara%C5%9F_2016-11-18_01-10.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED waterpipit.jpg"; fail=$((fail+1)); FAILED="$FAILED waterpipit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/richardspipit.jpg" ]; then
  echo "skip richardspipit.jpg"; skip=$((skip+1))
else
  echo "get  richardspipit.jpg (Richard's Pipit)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/richardspipit.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/50/Anthus_richardi_-_Laem_Pak_Bia.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED richardspipit.jpg"; fail=$((fail+1)); FAILED="$FAILED richardspipit.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/yellowbrowedwarbler.jpg" ]; then
  echo "skip yellowbrowedwarbler.jpg"; skip=$((skip+1))
else
  echo "get  yellowbrowedwarbler.jpg (Yellow-browed Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/yellowbrowedwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/8b/Yellow-browed_warbler_%28Phylloscopus_inornatus%29%2C_Parc_du_Slot%2C_Woluw%C3%A9-St.-Lambert%2C_Brussels_%2834053989676%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED yellowbrowedwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED yellowbrowedwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/pallasswarbler.jpg" ]; then
  echo "skip pallasswarbler.jpg"; skip=$((skip+1))
else
  echo "get  pallasswarbler.jpg (Pallas's Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/pallasswarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/04/Pallas%27s_Leaf_Warbler%2C_Tunkinskiy_Rayon%2C_Buryat%2C_Russia_2.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED pallasswarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED pallasswarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/barredwarbler.jpg" ]; then
  echo "skip barredwarbler.jpg"; skip=$((skip+1))
else
  echo "get  barredwarbler.jpg (Barred Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/barredwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/c/ca/Curruca_nisoria_378155893_%28cropped%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED barredwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED barredwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/icterinewarbler.jpg" ]; then
  echo "skip icterinewarbler.jpg"; skip=$((skip+1))
else
  echo "get  icterinewarbler.jpg (Icterine Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/icterinewarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/9e/Icterine_warbler_18_06_2022_004_crop.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED icterinewarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED icterinewarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/marshwarbler.jpg" ]; then
  echo "skip marshwarbler.jpg"; skip=$((skip+1))
else
  echo "get  marshwarbler.jpg (Marsh Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/marshwarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/96/Acrocephalus_palustris_Irpin6.JPG"; then
    ok=$((ok+1))
  else
    echo "  FAILED marshwarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED marshwarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/saviswarbler.jpg" ]; then
  echo "skip saviswarbler.jpg"; skip=$((skip+1))
else
  echo "get  saviswarbler.jpg (Savi's Warbler)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/saviswarbler.jpg" "https://upload.wikimedia.org/wikipedia/commons/8/84/Locustellaluscinioides.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED saviswarbler.jpg"; fail=$((fail+1)); FAILED="$FAILED saviswarbler.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redbackedshrike.jpg" ]; then
  echo "skip redbackedshrike.jpg"; skip=$((skip+1))
else
  echo "get  redbackedshrike.jpg (Red-backed Shrike)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redbackedshrike.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5c/Red-backed_shrike.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redbackedshrike.jpg"; fail=$((fail+1)); FAILED="$FAILED redbackedshrike.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greatgreyshrike.jpg" ]; then
  echo "skip greatgreyshrike.jpg"; skip=$((skip+1))
else
  echo "get  greatgreyshrike.jpg (Great Grey Shrike)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greatgreyshrike.jpg" "https://upload.wikimedia.org/wikipedia/commons/e/e0/Great_Grey_Shrike_in_Bhigwan_August_2025_by_Tisha_Mukherjee_02.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greatgreyshrike.jpg"; fail=$((fail+1)); FAILED="$FAILED greatgreyshrike.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/goldenoriole.jpg" ]; then
  echo "skip goldenoriole.jpg"; skip=$((skip+1))
else
  echo "get  goldenoriole.jpg (Golden Oriole)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/goldenoriole.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/69/Rigogolo-%28Oriolus_oriolus%29_Lazio%2C_isola_di_Ventotene_%28LT%29_19.4.2024_%28cropped%29.png"; then
    ok=$((ok+1))
  else
    echo "  FAILED goldenoriole.jpg"; fail=$((fail+1)); FAILED="$FAILED goldenoriole.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/serin.jpg" ]; then
  echo "skip serin.jpg"; skip=$((skip+1))
else
  echo "get  serin.jpg (Serin)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/serin.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/65/European_serin_%28Serinus_serinus%29_male.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED serin.jpg"; fail=$((fail+1)); FAILED="$FAILED serin.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/commonrosefinch.jpg" ]; then
  echo "skip commonrosefinch.jpg"; skip=$((skip+1))
else
  echo "get  commonrosefinch.jpg (Common Rosefinch)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/commonrosefinch.jpg" "https://upload.wikimedia.org/wikipedia/commons/1/19/Carpodacus_erythrinus_284921386.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED commonrosefinch.jpg"; fail=$((fail+1)); FAILED="$FAILED commonrosefinch.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/ortolanbunting.jpg" ]; then
  echo "skip ortolanbunting.jpg"; skip=$((skip+1))
else
  echo "get  ortolanbunting.jpg (Ortolan Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/ortolanbunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/f/fc/Ortolan_bunting_in_Sierra_de_Guara%2C_Aragon%2C_Spain.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED ortolanbunting.jpg"; fail=$((fail+1)); FAILED="$FAILED ortolanbunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/laplandbunting.jpg" ]; then
  echo "skip laplandbunting.jpg"; skip=$((skip+1))
else
  echo "get  laplandbunting.jpg (Lapland Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/laplandbunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/61/Lapland_Longspur_-_Calcarius_lapponicus_-_Sportittlingur_1.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED laplandbunting.jpg"; fail=$((fail+1)); FAILED="$FAILED laplandbunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/littlebunting.jpg" ]; then
  echo "skip littlebunting.jpg"; skip=$((skip+1))
else
  echo "get  littlebunting.jpg (Little Bunting)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/littlebunting.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/38/Zwergammer.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED littlebunting.jpg"; fail=$((fail+1)); FAILED="$FAILED littlebunting.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/redthroateddiver.jpg" ]; then
  echo "skip redthroateddiver.jpg"; skip=$((skip+1))
else
  echo "get  redthroateddiver.jpg (Red-throated Diver)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/redthroateddiver.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/69/Red-throated_diver_%28Gavia_stellata%29_breeding_Rif.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED redthroateddiver.jpg"; fail=$((fail+1)); FAILED="$FAILED redthroateddiver.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blackthroateddiver.jpg" ]; then
  echo "skip blackthroateddiver.jpg"; skip=$((skip+1))
else
  echo "get  blackthroateddiver.jpg (Black-throated Diver)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blackthroateddiver.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/3e/Black-throated_Diver%2C_Oulu%2C_Finland_02_%2815195370798%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blackthroateddiver.jpg"; fail=$((fail+1)); FAILED="$FAILED blackthroateddiver.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/greatnortherndiver.jpg" ]; then
  echo "skip greatnortherndiver.jpg"; skip=$((skip+1))
else
  echo "get  greatnortherndiver.jpg (Great Northern Diver)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/greatnortherndiver.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b0/Gavia_immer_-Minocqua%2C_Wisconsin%2C_USA_-swimming-8.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED greatnortherndiver.jpg"; fail=$((fail+1)); FAILED="$FAILED greatnortherndiver.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/garganey.jpg" ]; then
  echo "skip garganey.jpg"; skip=$((skip+1))
else
  echo "get  garganey.jpg (Garganey)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/garganey.jpg" "https://upload.wikimedia.org/wikipedia/commons/9/92/Garganey%2C_Israel.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED garganey.jpg"; fail=$((fail+1)); FAILED="$FAILED garganey.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/smew.jpg" ]; then
  echo "skip smew.jpg"; skip=$((skip+1))
else
  echo "get  smew.jpg (Smew)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/smew.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/47/Zwergsaeger_maenchen_weibchen.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED smew.jpg"; fail=$((fail+1)); FAILED="$FAILED smew.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/scaup.jpg" ]; then
  echo "skip scaup.jpg"; skip=$((skip+1))
else
  echo "get  scaup.jpg (Scaup)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/scaup.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/b9/Drake_Greater_scaup_%28Aythya_marila%29_Barnegat_Inlet%2C_New_Jersey%2C_USA.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED scaup.jpg"; fail=$((fail+1)); FAILED="$FAILED scaup.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/velvetscoter.jpg" ]; then
  echo "skip velvetscoter.jpg"; skip=$((skip+1))
else
  echo "get  velvetscoter.jpg (Velvet Scoter)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/velvetscoter.jpg" "https://upload.wikimedia.org/wikipedia/commons/3/35/Velvet_Scoter%2C_Eyebrook_Reservoir%2C_Leics.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED velvetscoter.jpg"; fail=$((fail+1)); FAILED="$FAILED velvetscoter.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/ruddyduck.jpg" ]; then
  echo "skip ruddyduck.jpg"; skip=$((skip+1))
else
  echo "get  ruddyduck.jpg (Ruddy Duck)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/ruddyduck.jpg" "https://upload.wikimedia.org/wikipedia/commons/b/ba/Ruddy_Duck_%28Oxyura_jamaicensis%29_RWD2.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED ruddyduck.jpg"; fail=$((fail+1)); FAILED="$FAILED ruddyduck.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/honeybuzzard.jpg" ]; then
  echo "skip honeybuzzard.jpg"; skip=$((skip+1))
else
  echo "get  honeybuzzard.jpg (Honey Buzzard)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/honeybuzzard.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/6d/Wespenbussard_European_honey_buzzard_Pernis_apivorus%2C_crop.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED honeybuzzard.jpg"; fail=$((fail+1)); FAILED="$FAILED honeybuzzard.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/montagusharrier.jpg" ]; then
  echo "skip montagusharrier.jpg"; skip=$((skip+1))
else
  echo "get  montagusharrier.jpg (Montagu's Harrier)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/montagusharrier.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/7f/Montagu%27s_harrier_male.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED montagusharrier.jpg"; fail=$((fail+1)); FAILED="$FAILED montagusharrier.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/roughleggedbuzzard.jpg" ]; then
  echo "skip roughleggedbuzzard.jpg"; skip=$((skip+1))
else
  echo "get  roughleggedbuzzard.jpg (Rough-legged Buzzard)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/roughleggedbuzzard.jpg" "https://upload.wikimedia.org/wikipedia/commons/6/65/Fjellv%C3%A5k_%28Buteo_lagopus%29_%28Rough-legged_Buzzard%29_%28Fj%C3%A4llvr%C3%A5k%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED roughleggedbuzzard.jpg"; fail=$((fail+1)); FAILED="$FAILED roughleggedbuzzard.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/sabinesgull.jpg" ]; then
  echo "skip sabinesgull.jpg"; skip=$((skip+1))
else
  echo "get  sabinesgull.jpg (Sabine's Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/sabinesgull.jpg" "https://upload.wikimedia.org/wikipedia/commons/2/24/Sabine%27s_gull_%2853706725122%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED sabinesgull.jpg"; fail=$((fail+1)); FAILED="$FAILED sabinesgull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/icelandgull.jpg" ]; then
  echo "skip icelandgull.jpg"; skip=$((skip+1))
else
  echo "get  icelandgull.jpg (Iceland Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/icelandgull.jpg" "https://upload.wikimedia.org/wikipedia/commons/d/d7/Larus_glaucoides_IthacaNY.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED icelandgull.jpg"; fail=$((fail+1)); FAILED="$FAILED icelandgull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/glaucousgull.jpg" ]; then
  echo "skip glaucousgull.jpg"; skip=$((skip+1))
else
  echo "get  glaucousgull.jpg (Glaucous Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/glaucousgull.jpg" "https://upload.wikimedia.org/wikipedia/commons/7/7a/Glacous_Gull_on_ice.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED glaucousgull.jpg"; fail=$((fail+1)); FAILED="$FAILED glaucousgull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/yellowleggedgull.jpg" ]; then
  echo "skip yellowleggedgull.jpg"; skip=$((skip+1))
else
  echo "get  yellowleggedgull.jpg (Yellow-legged Gull)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/yellowleggedgull.jpg" "https://upload.wikimedia.org/wikipedia/commons/a/a3/Yellow-legged_Gull_2023-10-10.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED yellowleggedgull.jpg"; fail=$((fail+1)); FAILED="$FAILED yellowleggedgull.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/roseatetern.jpg" ]; then
  echo "skip roseatetern.jpg"; skip=$((skip+1))
else
  echo "get  roseatetern.jpg (Roseate Tern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/roseatetern.jpg" "https://upload.wikimedia.org/wikipedia/commons/4/4d/2021-07-10_Sterna_dougallii%2C_St_Marys_Island%2C_Northumberland_15.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED roseatetern.jpg"; fail=$((fail+1)); FAILED="$FAILED roseatetern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/blacktern.jpg" ]; then
  echo "skip blacktern.jpg"; skip=$((skip+1))
else
  echo "get  blacktern.jpg (Black Tern)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/blacktern.jpg" "https://upload.wikimedia.org/wikipedia/commons/5/5e/%C4%8Cor%C3%ADk_%C4%8Dierny_%28Chlidonias_niger%29_a_%284644831482%29.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED blacktern.jpg"; fail=$((fail+1)); FAILED="$FAILED blacktern.jpg"
  fi
  sleep 0.3
fi
if [ -f "images/pomarineskua.jpg" ]; then
  echo "skip pomarineskua.jpg"; skip=$((skip+1))
else
  echo "get  pomarineskua.jpg (Pomarine Skua)"
  if curl -sSL -A "$UA" --retry 3 --retry-delay 2 -o "images/pomarineskua.jpg" "https://upload.wikimedia.org/wikipedia/commons/0/0d/Stercorarius_pomarinusPCCA20070623-3985B.jpg"; then
    ok=$((ok+1))
  else
    echo "  FAILED pomarineskua.jpg"; fail=$((fail+1)); FAILED="$FAILED pomarineskua.jpg"
  fi
  sleep 0.3
fi

echo ""
echo "--- DONE ---"
echo "Downloaded: $ok"
echo "Skipped:    $skip"
echo "Failed:     $fail"
if [ -n "$FAILED" ]; then echo "Failed files:$FAILED"; fi
