const masterBirdList = [
    {
        "name": "Robin",
        "latin": "Erithacus rubecula",
        "group": "chat",
        "img": "images/robin.jpg"
    },
    {
        "name": "Blue Tit",
        "latin": "Cyanistes caeruleus",
        "group": "tit",
        "img": "images/bluetit.jpg"
    },
    {
        "name": "Great Tit",
        "latin": "Parus major",
        "group": "tit",
        "img": "images/greattit.jpg"
    },
    {
        "name": "Blackbird",
        "latin": "Turdus merula",
        "group": "thrush",
        "img": "images/blackbird.jpg"
    },
    {
        "name": "Magpie",
        "latin": "Pica pica",
        "group": "corvid",
        "img": "images/magpie.jpg"
    },
    {
        "name": "Goldfinch",
        "latin": "Carduelis carduelis",
        "group": "finch",
        "img": "images/goldfinch.jpg"
    },
    {
        "name": "Chaffinch",
        "latin": "Fringilla coelebs",
        "group": "finch",
        "img": "images/chaffinch.jpg"
    },
    {
        "name": "Wood Pigeon",
        "latin": "Columba palumbus",
        "group": "pigeon",
        "img": "images/woodpigeon.jpg"
    },
    {
        "name": "Collared Dove",
        "latin": "Streptopelia decaocto",
        "group": "pigeon",
        "img": "images/collareddove.jpg"
    },
    {
        "name": "Dunnock",
        "latin": "Prunella modularis",
        "group": "lbb",
        "img": "images/dunnock.jpg"
    },
    {
        "name": "Starling",
        "latin": "Sturnus vulgaris",
        "group": "starling",
        "img": "images/starling.jpg"
    },
    {
        "name": "House Sparrow",
        "latin": "Passer domesticus",
        "group": "sparrow",
        "img": "images/housesparrow.jpg"
    },
    {
        "name": "Long-tailed Tit",
        "latin": "Aegithalos caudatus",
        "group": "tit",
        "img": "images/longtailedtit.jpg"
    },
    {
        "name": "Greenfinch",
        "latin": "Chloris chloris",
        "group": "finch",
        "img": "images/greenfinch.jpg"
    },
    {
        "name": "Coal Tit",
        "latin": "Periparus ater",
        "group": "tit",
        "img": "images/coaltit.jpg"
    },
    {
        "name": "Wren",
        "latin": "Troglodytes troglodytes",
        "group": "lbb",
        "img": "images/wren.jpg"
    },
    {
        "name": "Song Thrush",
        "latin": "Turdus philomelos",
        "group": "thrush",
        "img": "images/songthrush.jpg"
    },
    {
        "name": "Nuthatch",
        "latin": "Sitta europaea",
        "group": "treecreeper",
        "img": "images/nuthatch.jpg"
    },
    {
        "name": "Great Spotted Woodpecker",
        "latin": "Dendrocopos major",
        "group": "woodpecker",
        "img": "images/greatspottedwoodpecker.jpg"
    },
    {
        "name": "Jay",
        "latin": "Garrulus glandarius",
        "group": "corvid",
        "img": "images/jay.jpg"
    },
    {
        "name": "Grey Heron",
        "latin": "Ardea cinerea",
        "group": "heron",
        "img": "images/greyheron.jpg"
    },
    {
        "name": "Mute Swan",
        "latin": "Cygnus olor",
        "group": "waterfowl",
        "img": "images/muteswan.jpg"
    },
    {
        "name": "Mallard",
        "latin": "Anas platyrhynchos",
        "group": "waterfowl",
        "img": "images/mallard.jpg"
    },
    {
        "name": "Coot",
        "latin": "Fulica atra",
        "group": "rail",
        "img": "images/coot.jpg"
    },
    {
        "name": "Moorhen",
        "latin": "Gallinula chloropus",
        "group": "rail",
        "img": "images/moorhen.jpg"
    },
    {
        "name": "Canada Goose",
        "latin": "Branta canadensis",
        "group": "waterfowl",
        "img": "images/canadagoose.jpg"
    },
    {
        "name": "Kestrel",
        "latin": "Falco tinnunculus",
        "group": "raptor",
        "img": "images/kestrel.jpg"
    },
    {
        "name": "Buzzard",
        "latin": "Buteo buteo",
        "group": "raptor",
        "img": "images/buzzard.jpg"
    },
    {
        "name": "Red Kite",
        "latin": "Milvus milvus",
        "group": "raptor",
        "img": "images/redkite.jpg"
    },
    {
        "name": "Barn Owl",
        "latin": "Tyto alba",
        "group": "owl",
        "img": "images/barnowl.jpg"
    },
    {
        "name": "Tawny Owl",
        "latin": "Strix aluco",
        "group": "owl",
        "img": "images/tawnyowl.jpg"
    },
    {
        "name": "Pheasant",
        "latin": "Phasianus colchicus",
        "group": "gamebird",
        "img": "images/pheasant.jpg"
    },
    {
        "name": "Swift",
        "latin": "Apus apus",
        "group": "aerial",
        "img": "images/swift.jpg"
    },
    {
        "name": "Swallow",
        "latin": "Hirundo rustica",
        "group": "aerial",
        "img": "images/swallow.jpg"
    },
    {
        "name": "House Martin",
        "latin": "Delichon urbicum",
        "group": "aerial",
        "img": "images/housemartin.jpg"
    },
    {
        "name": "Kingfisher",
        "latin": "Alcedo atthis",
        "group": "kingfisher",
        "img": "images/kingfisher.jpg"
    },
    {
        "name": "Bullfinch",
        "latin": "Pyrrhula pyrrhula",
        "group": "finch",
        "img": "images/bullfinch.jpg"
    },
    {
        "name": "Siskin",
        "latin": "Spinus spinus",
        "group": "finch",
        "img": "images/siskin.jpg"
    },
    {
        "name": "Yellowhammer",
        "latin": "Emberiza citrinella",
        "group": "bunting",
        "img": "images/yellowhammer.jpg"
    },
    {
        "name": "Pied Wagtail",
        "latin": "Motacilla alba",
        "group": "wagtail",
        "img": "images/piedwagtail.jpg"
    },
    {
        "name": "Grey Wagtail",
        "latin": "Motacilla cinerea",
        "group": "wagtail",
        "img": "images/greywagtail.jpg"
    },
    {
        "name": "Cormorant",
        "latin": "Phalacrocorax carbo",
        "group": "seabird",
        "img": "images/cormorant.jpg"
    },
    {
        "name": "Oystercatcher",
        "latin": "Haematopus ostralegus",
        "group": "wader",
        "img": "images/oystercatcher.jpg"
    },
    {
        "name": "Curlew",
        "latin": "Numenius arquata",
        "group": "wader",
        "img": "images/curlew.jpg"
    },
    {
        "name": "Lapwing",
        "latin": "Vanellus vanellus",
        "group": "wader",
        "img": "images/lapwing.jpg"
    },
    {
        "name": "Puffin",
        "latin": "Fratercula arctica",
        "group": "seabird",
        "img": "images/puffin.jpg"
    },
    {
        "name": "Herring Gull",
        "latin": "Larus argentatus",
        "group": "gull",
        "img": "images/herringgull.jpg"
    },
    {
        "name": "Black-headed Gull",
        "latin": "Chroicocephalus ridibundus",
        "group": "gull",
        "img": "images/blackheadedgull.jpg"
    },
    {
        "name": "Gannet",
        "latin": "Morus bassanus",
        "group": "seabird",
        "img": "images/gannet.jpg"
    },
    {
        "name": "Great Crested Grebe",
        "latin": "Podiceps cristatus",
        "group": "grebe",
        "img": "images/greatcrestedgrebe.jpg"
    },
    {
        "name": "Carrion Crow",
        "latin": "Corvus corone",
        "group": "corvid",
        "img": "images/carrioncrow.jpg"
    },
    {
        "name": "Rook",
        "latin": "Corvus frugilegus",
        "group": "corvid",
        "img": "images/rook.jpg"
    },
    {
        "name": "Jackdaw",
        "latin": "Coloeus monedula",
        "group": "corvid",
        "img": "images/jackdaw.jpg"
    },
    {
        "name": "Raven",
        "latin": "Corvus corax",
        "group": "corvid",
        "img": "images/raven.jpg"
    },
    {
        "name": "Hooded Crow",
        "latin": "Corvus cornix",
        "group": "corvid",
        "img": "images/hoodedcrow.jpg"
    },
    {
        "name": "Feral Pigeon",
        "latin": "Columba livia",
        "group": "pigeon",
        "img": "images/feralpigeon.jpg"
    },
    {
        "name": "Stock Dove",
        "latin": "Columba oenas",
        "group": "pigeon",
        "img": "images/stockdove.jpg"
    },
    {
        "name": "Turtle Dove",
        "latin": "Streptopelia turtur",
        "group": "pigeon",
        "img": "images/turtledove.jpg"
    },
    {
        "name": "Marsh Tit",
        "latin": "Poecile palustris",
        "group": "tit",
        "img": "images/marshtit.jpg"
    },
    {
        "name": "Willow Tit",
        "latin": "Poecile montanus",
        "group": "tit",
        "img": "images/willowtit.jpg"
    },
    {
        "name": "Crested Tit",
        "latin": "Lophophanes cristatus",
        "group": "tit",
        "img": "images/crestedtit.jpg"
    },
    {
        "name": "Bearded Tit",
        "latin": "Panurus biarmicus",
        "group": "tit",
        "img": "images/beardedtit.jpg"
    },
    {
        "name": "Treecreeper",
        "latin": "Certhia familiaris",
        "group": "treecreeper",
        "img": "images/treecreeper.jpg"
    },
    {
        "name": "Goldcrest",
        "latin": "Regulus regulus",
        "group": "crest",
        "img": "images/goldcrest.jpg"
    },
    {
        "name": "Firecrest",
        "latin": "Regulus ignicapilla",
        "group": "crest",
        "img": "images/firecrest.jpg"
    },
    {
        "name": "Chiffchaff",
        "latin": "Phylloscopus collybita",
        "group": "warbler",
        "img": "images/chiffchaff.jpg"
    },
    {
        "name": "Willow Warbler",
        "latin": "Phylloscopus trochilus",
        "group": "warbler",
        "img": "images/willowwarbler.jpg"
    },
    {
        "name": "Wood Warbler",
        "latin": "Phylloscopus sibilatrix",
        "group": "warbler",
        "img": "images/woodwarbler.jpg"
    },
    {
        "name": "Blackcap",
        "latin": "Sylvia atricapilla",
        "group": "warbler",
        "img": "images/blackcap.jpg"
    },
    {
        "name": "Garden Warbler",
        "latin": "Sylvia borin",
        "group": "warbler",
        "img": "images/gardenwarbler.jpg"
    },
    {
        "name": "Whitethroat",
        "latin": "Curruca communis",
        "group": "warbler",
        "img": "images/whitethroat.jpg"
    },
    {
        "name": "Lesser Whitethroat",
        "latin": "Curruca curruca",
        "group": "warbler",
        "img": "images/lesserwhitethroat.jpg"
    },
    {
        "name": "Sedge Warbler",
        "latin": "Acrocephalus schoenobaenus",
        "group": "warbler",
        "img": "images/sedgewarbler.jpg"
    },
    {
        "name": "Reed Warbler",
        "latin": "Acrocephalus scirpaceus",
        "group": "warbler",
        "img": "images/reedwarbler.jpg"
    },
    {
        "name": "Grasshopper Warbler",
        "latin": "Locustella naevia",
        "group": "warbler",
        "img": "images/grasshopperwarbler.jpg"
    },
    {
        "name": "Cetti's Warbler",
        "latin": "Cettia cetti",
        "group": "warbler",
        "img": "images/cettiswarbler.jpg"
    },
    {
        "name": "Dartford Warbler",
        "latin": "Curruca undata",
        "group": "warbler",
        "img": "images/dartfordwarbler.jpg"
    },
    {
        "name": "Spotted Flycatcher",
        "latin": "Muscicapa striata",
        "group": "flycatcher",
        "img": "images/spottedflycatcher.jpg"
    },
    {
        "name": "Pied Flycatcher",
        "latin": "Ficedula hypoleuca",
        "group": "flycatcher",
        "img": "images/piedflycatcher.jpg"
    },
    {
        "name": "Redstart",
        "latin": "Phoenicurus phoenicurus",
        "group": "chat",
        "img": "images/redstart.jpg"
    },
    {
        "name": "Black Redstart",
        "latin": "Phoenicurus ochruros",
        "group": "chat",
        "img": "images/blackredstart.jpg"
    },
    {
        "name": "Nightingale",
        "latin": "Luscinia megarhynchos",
        "group": "chat",
        "img": "images/nightingale.jpg"
    },
    {
        "name": "Stonechat",
        "latin": "Saxicola rubicola",
        "group": "chat",
        "img": "images/stonechat.jpg"
    },
    {
        "name": "Whinchat",
        "latin": "Saxicola rubetra",
        "group": "chat",
        "img": "images/whinchat.jpg"
    },
    {
        "name": "Wheatear",
        "latin": "Oenanthe oenanthe",
        "group": "chat",
        "img": "images/wheatear.jpg"
    },
    {
        "name": "Fieldfare",
        "latin": "Turdus pilaris",
        "group": "thrush",
        "img": "images/fieldfare.jpg"
    },
    {
        "name": "Redwing",
        "latin": "Turdus iliacus",
        "group": "thrush",
        "img": "images/redwing.jpg"
    },
    {
        "name": "Mistle Thrush",
        "latin": "Turdus viscivorus",
        "group": "thrush",
        "img": "images/mistlethrush.jpg"
    },
    {
        "name": "Ring Ouzel",
        "latin": "Turdus torquatus",
        "group": "thrush",
        "img": "images/ringouzel.jpg"
    },
    {
        "name": "Linnet",
        "latin": "Linaria cannabina",
        "group": "finch",
        "img": "images/linnet.jpg"
    },
    {
        "name": "Lesser Redpoll",
        "latin": "Acanthis cabaret",
        "group": "finch",
        "img": "images/lesserredpoll.jpg"
    },
    {
        "name": "Common Redpoll",
        "latin": "Acanthis flammea",
        "group": "finch",
        "img": "images/commonredpoll.jpg"
    },
    {
        "name": "Twite",
        "latin": "Linaria flavirostris",
        "group": "finch",
        "img": "images/twite.jpg"
    },
    {
        "name": "Hawfinch",
        "latin": "Coccothraustes coccothraustes",
        "group": "finch",
        "img": "images/hawfinch.jpg"
    },
    {
        "name": "Crossbill",
        "latin": "Loxia curvirostra",
        "group": "finch",
        "img": "images/crossbill.jpg"
    },
    {
        "name": "Brambling",
        "latin": "Fringilla montifringilla",
        "group": "finch",
        "img": "images/brambling.jpg"
    },
    {
        "name": "Tree Sparrow",
        "latin": "Passer montanus",
        "group": "sparrow",
        "img": "images/treesparrow.jpg"
    },
    {
        "name": "Reed Bunting",
        "latin": "Emberiza schoeniclus",
        "group": "bunting",
        "img": "images/reedbunting.jpg"
    },
    {
        "name": "Corn Bunting",
        "latin": "Emberiza calandra",
        "group": "bunting",
        "img": "images/cornbunting.jpg"
    },
    {
        "name": "Cirl Bunting",
        "latin": "Emberiza cirlus",
        "group": "bunting",
        "img": "images/cirlbunting.jpg"
    },
    {
        "name": "Snow Bunting",
        "latin": "Plectrophenax nivalis",
        "group": "bunting",
        "img": "images/snowbunting.jpg"
    },
    {
        "name": "Skylark",
        "latin": "Alauda arvensis",
        "group": "lark",
        "img": "images/skylark.jpg"
    },
    {
        "name": "Woodlark",
        "latin": "Lullula arborea",
        "group": "lark",
        "img": "images/woodlark.jpg"
    },
    {
        "name": "Meadow Pipit",
        "latin": "Anthus pratensis",
        "group": "pipit",
        "img": "images/meadowpipit.jpg"
    },
    {
        "name": "Tree Pipit",
        "latin": "Anthus trivialis",
        "group": "pipit",
        "img": "images/treepipit.jpg"
    },
    {
        "name": "Rock Pipit",
        "latin": "Anthus petrosus",
        "group": "pipit",
        "img": "images/rockpipit.jpg"
    },
    {
        "name": "Yellow Wagtail",
        "latin": "Motacilla flava",
        "group": "wagtail",
        "img": "images/yellowwagtail.jpg"
    },
    {
        "name": "Sand Martin",
        "latin": "Riparia riparia",
        "group": "aerial",
        "img": "images/sandmartin.jpg"
    },
    {
        "name": "Green Woodpecker",
        "latin": "Picus viridis",
        "group": "woodpecker",
        "img": "images/greenwoodpecker.jpg"
    },
    {
        "name": "Lesser Spotted Woodpecker",
        "latin": "Dryobates minor",
        "group": "woodpecker",
        "img": "images/lesserspottedwoodpecker.jpg"
    },
    {
        "name": "Cuckoo",
        "latin": "Cuculus canorus",
        "group": "cuckoo",
        "img": "images/cuckoo.jpg"
    },
    {
        "name": "Little Owl",
        "latin": "Athene noctua",
        "group": "owl",
        "img": "images/littleowl.jpg"
    },
    {
        "name": "Short-eared Owl",
        "latin": "Asio flammeus",
        "group": "owl",
        "img": "images/shortearedowl.jpg"
    },
    {
        "name": "Long-eared Owl",
        "latin": "Asio otus",
        "group": "owl",
        "img": "images/longearedowl.jpg"
    },
    {
        "name": "Sparrowhawk",
        "latin": "Accipiter nisus",
        "group": "raptor",
        "img": "images/sparrowhawk.jpg"
    },
    {
        "name": "Goshawk",
        "latin": "Accipiter gentilis",
        "group": "raptor",
        "img": "images/goshawk.jpg"
    },
    {
        "name": "Peregrine",
        "latin": "Falco peregrinus",
        "group": "raptor",
        "img": "images/peregrine.jpg"
    },
    {
        "name": "Hobby",
        "latin": "Falco subbuteo",
        "group": "raptor",
        "img": "images/hobby.jpg"
    },
    {
        "name": "Merlin",
        "latin": "Falco columbarius",
        "group": "raptor",
        "img": "images/merlin.jpg"
    },
    {
        "name": "Marsh Harrier",
        "latin": "Circus aeruginosus",
        "group": "raptor",
        "img": "images/marshharrier.jpg"
    },
    {
        "name": "Hen Harrier",
        "latin": "Circus cyaneus",
        "group": "raptor",
        "img": "images/henharrier.jpg"
    },
    {
        "name": "Golden Eagle",
        "latin": "Aquila chrysaetos",
        "group": "raptor",
        "img": "images/goldeneagle.jpg"
    },
    {
        "name": "White-tailed Eagle",
        "latin": "Haliaeetus albicilla",
        "group": "raptor",
        "img": "images/whitetailedeagle.jpg"
    },
    {
        "name": "Osprey",
        "latin": "Pandion haliaetus",
        "group": "raptor",
        "img": "images/osprey.jpg"
    },
    {
        "name": "Grey Partridge",
        "latin": "Perdix perdix",
        "group": "gamebird",
        "img": "images/greypartridge.jpg"
    },
    {
        "name": "Red-legged Partridge",
        "latin": "Alectoris rufa",
        "group": "gamebird",
        "img": "images/redleggedpartridge.jpg"
    },
    {
        "name": "Red Grouse",
        "latin": "Lagopus lagopus",
        "group": "gamebird",
        "img": "images/redgrouse.jpg"
    },
    {
        "name": "Black Grouse",
        "latin": "Lyrurus tetrix",
        "group": "gamebird",
        "img": "images/blackgrouse.jpg"
    },
    {
        "name": "Capercaillie",
        "latin": "Tetrao urogallus",
        "group": "gamebird",
        "img": "images/capercaillie.jpg"
    },
    {
        "name": "Quail",
        "latin": "Coturnix coturnix",
        "group": "gamebird",
        "img": "images/quail.jpg"
    },
    {
        "name": "Grey Plover",
        "latin": "Pluvialis squatarola",
        "group": "wader",
        "img": "images/greyplover.jpg"
    },
    {
        "name": "Golden Plover",
        "latin": "Pluvialis apricaria",
        "group": "wader",
        "img": "images/goldenplover.jpg"
    },
    {
        "name": "Ringed Plover",
        "latin": "Charadrius hiaticula",
        "group": "wader",
        "img": "images/ringedplover.jpg"
    },
    {
        "name": "Little Ringed Plover",
        "latin": "Charadrius dubius",
        "group": "wader",
        "img": "images/littleringedplover.jpg"
    },
    {
        "name": "Dunlin",
        "latin": "Calidris alpina",
        "group": "wader",
        "img": "images/dunlin.jpg"
    },
    {
        "name": "Sanderling",
        "latin": "Calidris alba",
        "group": "wader",
        "img": "images/sanderling.jpg"
    },
    {
        "name": "Knot",
        "latin": "Calidris canutus",
        "group": "wader",
        "img": "images/knot.jpg"
    },
    {
        "name": "Turnstone",
        "latin": "Arenaria interpres",
        "group": "wader",
        "img": "images/turnstone.jpg"
    },
    {
        "name": "Redshank",
        "latin": "Tringa totanus",
        "group": "wader",
        "img": "images/redshank.jpg"
    },
    {
        "name": "Greenshank",
        "latin": "Tringa nebularia",
        "group": "wader",
        "img": "images/greenshank.jpg"
    },
    {
        "name": "Common Sandpiper",
        "latin": "Actitis hypoleucos",
        "group": "wader",
        "img": "images/commonsandpiper.jpg"
    },
    {
        "name": "Green Sandpiper",
        "latin": "Tringa ochropus",
        "group": "wader",
        "img": "images/greensandpiper.jpg"
    },
    {
        "name": "Snipe",
        "latin": "Gallinago gallinago",
        "group": "wader",
        "img": "images/snipe.jpg"
    },
    {
        "name": "Woodcock",
        "latin": "Scolopax rusticola",
        "group": "wader",
        "img": "images/woodcock.jpg"
    },
    {
        "name": "Black-tailed Godwit",
        "latin": "Limosa limosa",
        "group": "wader",
        "img": "images/blacktailedgodwit.jpg"
    },
    {
        "name": "Bar-tailed Godwit",
        "latin": "Limosa lapponica",
        "group": "wader",
        "img": "images/bartailedgodwit.jpg"
    },
    {
        "name": "Whimbrel",
        "latin": "Numenius phaeopus",
        "group": "wader",
        "img": "images/whimbrel.jpg"
    },
    {
        "name": "Avocet",
        "latin": "Recurvirostra avosetta",
        "group": "wader",
        "img": "images/avocet.jpg"
    },
    {
        "name": "Ruff",
        "latin": "Calidris pugnax",
        "group": "wader",
        "img": "images/ruff.jpg"
    },
    {
        "name": "Little Stint",
        "latin": "Calidris minuta",
        "group": "wader",
        "img": "images/littlestint.jpg"
    },
    {
        "name": "Purple Sandpiper",
        "latin": "Calidris maritima",
        "group": "wader",
        "img": "images/purplesandpiper.jpg"
    },
    {
        "name": "Grey Lag Goose",
        "latin": "Anser anser",
        "group": "waterfowl",
        "img": "images/greylaggoose.jpg"
    },
    {
        "name": "Pink-footed Goose",
        "latin": "Anser brachyrhynchus",
        "group": "waterfowl",
        "img": "images/pinkfootedgoose.jpg"
    },
    {
        "name": "White-fronted Goose",
        "latin": "Anser albifrons",
        "group": "waterfowl",
        "img": "images/whitefrontedgoose.jpg"
    },
    {
        "name": "Barnacle Goose",
        "latin": "Branta leucopsis",
        "group": "waterfowl",
        "img": "images/barnaclegoose.jpg"
    },
    {
        "name": "Brent Goose",
        "latin": "Branta bernicla",
        "group": "waterfowl",
        "img": "images/brentgoose.jpg"
    },
    {
        "name": "Egyptian Goose",
        "latin": "Alopochen aegyptiaca",
        "group": "waterfowl",
        "img": "images/egyptiangoose.jpg"
    },
    {
        "name": "Shelduck",
        "latin": "Tadorna tadorna",
        "group": "waterfowl",
        "img": "images/shelduck.jpg"
    },
    {
        "name": "Wigeon",
        "latin": "Mareca penelope",
        "group": "waterfowl",
        "img": "images/wigeon.jpg"
    },
    {
        "name": "Gadwall",
        "latin": "Mareca strepera",
        "group": "waterfowl",
        "img": "images/gadwall.jpg"
    },
    {
        "name": "Teal",
        "latin": "Anas crecca",
        "group": "waterfowl",
        "img": "images/teal.jpg"
    },
    {
        "name": "Pintail",
        "latin": "Anas acuta",
        "group": "waterfowl",
        "img": "images/pintail.jpg"
    },
    {
        "name": "Shoveler",
        "latin": "Spatula clypeata",
        "group": "waterfowl",
        "img": "images/shoveler.jpg"
    },
    {
        "name": "Pochard",
        "latin": "Aythya ferina",
        "group": "waterfowl",
        "img": "images/pochard.jpg"
    },
    {
        "name": "Tufted Duck",
        "latin": "Aythya fuligula",
        "group": "waterfowl",
        "img": "images/tuftedduck.jpg"
    },
    {
        "name": "Goldeneye",
        "latin": "Bucephala clangula",
        "group": "waterfowl",
        "img": "images/goldeneye.jpg"
    },
    {
        "name": "Goosander",
        "latin": "Mergus merganser",
        "group": "waterfowl",
        "img": "images/goosander.jpg"
    },
    {
        "name": "Red-breasted Merganser",
        "latin": "Mergus serrator",
        "group": "waterfowl",
        "img": "images/redbreastedmerganser.jpg"
    },
    {
        "name": "Eider",
        "latin": "Somateria mollissima",
        "group": "waterfowl",
        "img": "images/eider.jpg"
    },
    {
        "name": "Common Scoter",
        "latin": "Melanitta nigra",
        "group": "waterfowl",
        "img": "images/commonscoter.jpg"
    },
    {
        "name": "Long-tailed Duck",
        "latin": "Clangula hyemalis",
        "group": "waterfowl",
        "img": "images/longtailedduck.jpg"
    },
    {
        "name": "Mandarin Duck",
        "latin": "Aix galericulata",
        "group": "waterfowl",
        "img": "images/mandarinduck.jpg"
    },
    {
        "name": "Whooper Swan",
        "latin": "Cygnus cygnus",
        "group": "waterfowl",
        "img": "images/whooperswan.jpg"
    },
    {
        "name": "Bewick's Swan",
        "latin": "Cygnus columbianus",
        "group": "waterfowl",
        "img": "images/bewicksswan.jpg"
    },
    {
        "name": "Little Grebe",
        "latin": "Tachybaptus ruficollis",
        "group": "grebe",
        "img": "images/littlegrebe.jpg"
    },
    {
        "name": "Slavonian Grebe",
        "latin": "Podiceps auritus",
        "group": "grebe",
        "img": "images/slavoniangrebe.jpg"
    },
    {
        "name": "Black-necked Grebe",
        "latin": "Podiceps nigricollis",
        "group": "grebe",
        "img": "images/blackneckedgrebe.jpg"
    },
    {
        "name": "Water Rail",
        "latin": "Rallus aquaticus",
        "group": "rail",
        "img": "images/waterrail.jpg"
    },
    {
        "name": "Little Egret",
        "latin": "Egretta garzetta",
        "group": "heron",
        "img": "images/littleegret.jpg"
    },
    {
        "name": "Great White Egret",
        "latin": "Ardea alba",
        "group": "heron",
        "img": "images/greatwhiteegret.jpg"
    },
    {
        "name": "Cattle Egret",
        "latin": "Bubulcus ibis",
        "group": "heron",
        "img": "images/cattleegret.jpg"
    },
    {
        "name": "Bittern",
        "latin": "Botaurus stellaris",
        "group": "heron",
        "img": "images/bittern.jpg"
    },
    {
        "name": "Spoonbill",
        "latin": "Platalea leucorodia",
        "group": "heron",
        "img": "images/spoonbill.jpg"
    },
    {
        "name": "Common Tern",
        "latin": "Sterna hirundo",
        "group": "tern",
        "img": "images/commontern.jpg"
    },
    {
        "name": "Arctic Tern",
        "latin": "Sterna paradisaea",
        "group": "tern",
        "img": "images/arctictern.jpg"
    },
    {
        "name": "Sandwich Tern",
        "latin": "Thalasseus sandvicensis",
        "group": "tern",
        "img": "images/sandwichtern.jpg"
    },
    {
        "name": "Little Tern",
        "latin": "Sternula albifrons",
        "group": "tern",
        "img": "images/littletern.jpg"
    },
    {
        "name": "Common Gull",
        "latin": "Larus canus",
        "group": "gull",
        "img": "images/commongull.jpg"
    },
    {
        "name": "Lesser Black-backed Gull",
        "latin": "Larus fuscus",
        "group": "gull",
        "img": "images/lesserblackbackedgull.jpg"
    },
    {
        "name": "Great Black-backed Gull",
        "latin": "Larus marinus",
        "group": "gull",
        "img": "images/greatblackbackedgull.jpg"
    },
    {
        "name": "Kittiwake",
        "latin": "Rissa tridactyla",
        "group": "gull",
        "img": "images/kittiwake.jpg"
    },
    {
        "name": "Mediterranean Gull",
        "latin": "Ichthyaetus melanocephalus",
        "group": "gull",
        "img": "images/mediterraneangull.jpg"
    },
    {
        "name": "Guillemot",
        "latin": "Uria aalge",
        "group": "seabird",
        "img": "images/guillemot.jpg"
    },
    {
        "name": "Razorbill",
        "latin": "Alca torda",
        "group": "seabird",
        "img": "images/razorbill.jpg"
    },
    {
        "name": "Black Guillemot",
        "latin": "Cepphus grylle",
        "group": "seabird",
        "img": "images/blackguillemot.jpg"
    },
    {
        "name": "Fulmar",
        "latin": "Fulmarus glacialis",
        "group": "seabird",
        "img": "images/fulmar.jpg"
    },
    {
        "name": "Manx Shearwater",
        "latin": "Puffinus puffinus",
        "group": "seabird",
        "img": "images/manxshearwater.jpg"
    },
    {
        "name": "Shag",
        "latin": "Gulosus aristotelis",
        "group": "seabird",
        "img": "images/shag.jpg"
    },
    {
        "name": "Storm Petrel",
        "latin": "Hydrobates pelagicus",
        "group": "seabird",
        "img": "images/stormpetrel.jpg"
    },
    {
        "name": "Arctic Skua",
        "latin": "Stercorarius parasiticus",
        "group": "seabird",
        "img": "images/arcticskua.jpg"
    },
    {
        "name": "Great Skua",
        "latin": "Stercorarius skua",
        "group": "seabird",
        "img": "images/greatskua.jpg"
    },
    {
        "name": "Little Auk",
        "latin": "Alle alle",
        "group": "seabird",
        "img": "images/littleauk.jpg"
    },
    {
        "name": "Dipper",
        "latin": "Cinclus cinclus",
        "group": "lbb",
        "img": "images/dipper.jpg"
    },
    {
        "name": "Waxwing",
        "latin": "Bombycilla garrulus",
        "group": "waxwing",
        "img": "images/waxwing.jpg"
    },
    {
        "name": "Nightjar",
        "latin": "Caprimulgus europaeus",
        "group": "nightjar",
        "img": "images/nightjar.jpg"
    },
    {
        "name": "Hoopoe",
        "latin": "Upupa epops",
        "group": "exotic",
        "img": "images/hoopoe.jpg"
    },
    {
        "name": "Wryneck",
        "latin": "Jynx torquilla",
        "group": "woodpecker",
        "img": "images/wryneck.jpg"
    },
    {
        "name": "Corncrake",
        "latin": "Crex crex",
        "group": "rail",
        "img": "images/corncrake.jpg"
    },
    {
        "name": "Spotted Crake",
        "latin": "Porzana porzana",
        "group": "rail",
        "img": "images/spottedcrake.jpg"
    },
    {
        "name": "Stone Curlew",
        "latin": "Burhinus oedicnemus",
        "group": "wader",
        "img": "images/stonecurlew.jpg"
    },
    {
        "name": "Chough",
        "latin": "Pyrrhocorax pyrrhocorax",
        "group": "corvid",
        "img": "images/chough.jpg"
    },
    {
        "name": "Red-necked Phalarope",
        "latin": "Phalaropus lobatus",
        "group": "wader",
        "img": "images/redneckedphalarope.jpg"
    },
    {
        "name": "Grey Phalarope",
        "latin": "Phalaropus fulicarius",
        "group": "wader",
        "img": "images/greyphalarope.jpg"
    },
    {
        "name": "Ptarmigan",
        "latin": "Lagopus muta",
        "group": "gamebird",
        "img": "images/ptarmigan.jpg"
    },
    {
        "name": "Crested Lark",
        "latin": "Galerida cristata",
        "group": "lark",
        "img": "images/crestedlark.jpg"
    },
    {
        "name": "Shore Lark",
        "latin": "Eremophila alpestris",
        "group": "lark",
        "img": "images/shorelark.jpg"
    },
    {
        "name": "Water Pipit",
        "latin": "Anthus spinoletta",
        "group": "pipit",
        "img": "images/waterpipit.jpg"
    },
    {
        "name": "Richard's Pipit",
        "latin": "Anthus richardi",
        "group": "pipit",
        "img": "images/richardspipit.jpg"
    },
    {
        "name": "Yellow-browed Warbler",
        "latin": "Phylloscopus inornatus",
        "group": "warbler",
        "img": "images/yellowbrowedwarbler.jpg"
    },
    {
        "name": "Pallas's Warbler",
        "latin": "Phylloscopus proregulus",
        "group": "warbler",
        "img": "images/pallasswarbler.jpg"
    },
    {
        "name": "Barred Warbler",
        "latin": "Curruca nisoria",
        "group": "warbler",
        "img": "images/barredwarbler.jpg"
    },
    {
        "name": "Icterine Warbler",
        "latin": "Hippolais icterina",
        "group": "warbler",
        "img": "images/icterinewarbler.jpg"
    },
    {
        "name": "Marsh Warbler",
        "latin": "Acrocephalus palustris",
        "group": "warbler",
        "img": "images/marshwarbler.jpg"
    },
    {
        "name": "Savi's Warbler",
        "latin": "Locustella luscinioides",
        "group": "warbler",
        "img": "images/saviswarbler.jpg"
    },
    {
        "name": "Red-backed Shrike",
        "latin": "Lanius collurio",
        "group": "shrike",
        "img": "images/redbackedshrike.jpg"
    },
    {
        "name": "Great Grey Shrike",
        "latin": "Lanius excubitor",
        "group": "shrike",
        "img": "images/greatgreyshrike.jpg"
    },
    {
        "name": "Golden Oriole",
        "latin": "Oriolus oriolus",
        "group": "exotic",
        "img": "images/goldenoriole.jpg"
    },
    {
        "name": "Serin",
        "latin": "Serinus serinus",
        "group": "finch",
        "img": "images/serin.jpg"
    },
    {
        "name": "Common Rosefinch",
        "latin": "Carpodacus erythrinus",
        "group": "finch",
        "img": "images/commonrosefinch.jpg"
    },
    {
        "name": "Ortolan Bunting",
        "latin": "Emberiza hortulana",
        "group": "bunting",
        "img": "images/ortolanbunting.jpg"
    },
    {
        "name": "Lapland Bunting",
        "latin": "Calcarius lapponicus",
        "group": "bunting",
        "img": "images/laplandbunting.jpg"
    },
    {
        "name": "Little Bunting",
        "latin": "Emberiza pusilla",
        "group": "bunting",
        "img": "images/littlebunting.jpg"
    },
    {
        "name": "Red-throated Diver",
        "latin": "Gavia stellata",
        "group": "diver",
        "img": "images/redthroateddiver.jpg"
    },
    {
        "name": "Black-throated Diver",
        "latin": "Gavia arctica",
        "group": "diver",
        "img": "images/blackthroateddiver.jpg"
    },
    {
        "name": "Great Northern Diver",
        "latin": "Gavia immer",
        "group": "diver",
        "img": "images/greatnortherndiver.jpg"
    },
    {
        "name": "Garganey",
        "latin": "Spatula querquedula",
        "group": "waterfowl",
        "img": "images/garganey.jpg"
    },
    {
        "name": "Smew",
        "latin": "Mergellus albellus",
        "group": "waterfowl",
        "img": "images/smew.jpg"
    },
    {
        "name": "Scaup",
        "latin": "Aythya marila",
        "group": "waterfowl",
        "img": "images/scaup.jpg"
    },
    {
        "name": "Velvet Scoter",
        "latin": "Melanitta fusca",
        "group": "waterfowl",
        "img": "images/velvetscoter.jpg"
    },
    {
        "name": "Ruddy Duck",
        "latin": "Oxyura jamaicensis",
        "group": "waterfowl",
        "img": "images/ruddyduck.jpg"
    },
    {
        "name": "Honey Buzzard",
        "latin": "Pernis apivorus",
        "group": "raptor",
        "img": "images/honeybuzzard.jpg"
    },
    {
        "name": "Montagu's Harrier",
        "latin": "Circus pygargus",
        "group": "raptor",
        "img": "images/montagusharrier.jpg"
    },
    {
        "name": "Rough-legged Buzzard",
        "latin": "Buteo lagopus",
        "group": "raptor",
        "img": "images/roughleggedbuzzard.jpg"
    },
    {
        "name": "Sabine's Gull",
        "latin": "Xema sabini",
        "group": "gull",
        "img": "images/sabinesgull.jpg"
    },
    {
        "name": "Iceland Gull",
        "latin": "Larus glaucoides",
        "group": "gull",
        "img": "images/icelandgull.jpg"
    },
    {
        "name": "Glaucous Gull",
        "latin": "Larus hyperboreus",
        "group": "gull",
        "img": "images/glaucousgull.jpg"
    },
    {
        "name": "Yellow-legged Gull",
        "latin": "Larus michahellis",
        "group": "gull",
        "img": "images/yellowleggedgull.jpg"
    },
    {
        "name": "Roseate Tern",
        "latin": "Sterna dougallii",
        "group": "tern",
        "img": "images/roseatetern.jpg"
    },
    {
        "name": "Black Tern",
        "latin": "Chlidonias niger",
        "group": "tern",
        "img": "images/blacktern.jpg"
    },
    {
        "name": "Pomarine Skua",
        "latin": "Stercorarius pomarinus",
        "group": "seabird",
        "img": "images/pomarineskua.jpg"
    }
];

// ANNIE'S BIRD ID - V3 (adaptive difficulty, one-chance hint, persistent stats)

const ROUND_LIMIT = 20;
const STATS_KEY = "anniesBirdStats_v1";

let gameDeck = [];
let currentBird = null;
let score = 0;
let roundCount = 0;
let passedBirds = [];
let hintedBirds = [];        // birds a hint was used on
let hintUsedThisRound = false;

// --- PERSISTENT STATS (per bird: seen count + correct count) ---
// Stored in the browser on this device. Switching device/browser starts fresh.
function loadStats() {
    try {
        const raw = localStorage.getItem(STATS_KEY);
        return raw ? JSON.parse(raw) : {};
    } catch (e) {
        return {};
    }
}

function saveStats(stats) {
    try {
        localStorage.setItem(STATS_KEY, JSON.stringify(stats));
    } catch (e) {
        // storage unavailable (e.g. private mode); game still works, just no memory
    }
}

// Record an outcome for a bird. correct = true only when she got it unaided.
function recordResult(birdName, correct) {
    const stats = loadStats();
    if (!stats[birdName]) {
        stats[birdName] = { seen: 0, correct: 0 };
    }
    stats[birdName].seen += 1;
    if (correct) {
        stats[birdName].correct += 1;
    }
    saveStats(stats);
}

// Weight for the deal: unseen birds get the highest weight, then birds with a
// low success rate. Mastered birds keep a small weight so they still resurface.
function birdWeight(bird, stats) {
    const s = stats[bird.name];
    if (!s || s.seen === 0) {
        return 6;            // never seen: strong priority
    }
    const accuracy = s.correct / s.seen;
    // accuracy 0 -> weight ~5, accuracy 1 -> weight ~1
    return 1 + Math.round((1 - accuracy) * 4);
}

// Weighted draw of n distinct birds from the master list.
function weightedDeal(n) {
    const stats = loadStats();
    let pool = masterBirdList.map(b => ({ bird: b, weight: birdWeight(b, stats) }));
    const chosen = [];

    while (chosen.length < n && pool.length > 0) {
        const total = pool.reduce((sum, p) => sum + p.weight, 0);
        let r = Math.random() * total;
        let idx = 0;
        for (let i = 0; i < pool.length; i++) {
            r -= pool[i].weight;
            if (r <= 0) { idx = i; break; }
        }
        chosen.push(pool[idx].bird);
        pool.splice(idx, 1);   // remove so the deal has no duplicates
    }
    return chosen;
}

function shuffle(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

function setControlsState(enabled) {
    document.getElementById("submit-btn").disabled = !enabled;
    document.getElementById("hint-btn").disabled = !enabled;
    document.getElementById("pass-btn").disabled = !enabled;
    document.getElementById("guess-input").disabled = !enabled;
}

function restartGame() {
    document.getElementById("game-view").style.display = "block";
    document.getElementById("summary-view").style.display = "none";
    document.getElementById("passed-section").style.display = "none";
    document.getElementById("hinted-section").style.display = "none";

    // Adaptive weighted deal, then shuffle the chosen set so order varies too.
    gameDeck = weightedDeal(Math.min(ROUND_LIMIT, masterBirdList.length));
    shuffle(gameDeck);

    score = 0;
    roundCount = 0;
    passedBirds = [];
    hintedBirds = [];

    document.getElementById("score-display").textContent = "Score: 0";
    document.getElementById("result-message").textContent = "";
    document.getElementById("passed-list").innerHTML = "";
    document.getElementById("hinted-list").innerHTML = "";

    loadNextBird();
}

function loadNextBird() {
    if (gameDeck.length === 0) {
        endGame();
        return;
    }

    currentBird = gameDeck.pop();
    roundCount++;
    hintUsedThisRound = false;

    setControlsState(true);

    const imgElement = document.getElementById("bird-image");
    imgElement.src = currentBird.img;
    imgElement.onerror = function() {
        console.log("Failed to load: " + currentBird.img);
        this.src = "";
        this.alt = "Image not found for " + currentBird.name;
    };

    document.getElementById("count-display").textContent = `Bird: ${roundCount}/${ROUND_LIMIT}`;
    document.getElementById("hint-options").style.display = "none";
    document.getElementById("hint-options").innerHTML = "";
    document.getElementById("result-message").textContent = "";
    document.getElementById("guess-input").value = "";
    document.getElementById("guess-input").focus();
}

// Typed guesses: correct advances; wrong lets her try again (normal play).
function checkGuess() {
    setControlsState(false);

    const userGuess = document.getElementById("guess-input").value.trim().toLowerCase();
    const correctAnswer = currentBird.name.toLowerCase();
    const messageElement = document.getElementById("result-message");

    if (userGuess === "") {
        messageElement.textContent = "TYPE A NAME FIRST.";
        messageElement.style.color = "#c0392b";
        setControlsState(true);
        document.getElementById("guess-input").focus();
        return;
    }

    let isCorrect = false;
    if (userGuess === correctAnswer) {
        isCorrect = true;
    } else if (correctAnswer.includes(userGuess) && userGuess.length > (correctAnswer.length * 0.6)) {
        isCorrect = true;
    } else {
        const tolerance = correctAnswer.length > 6 ? 2 : 1;
        if (getEditDistance(userGuess, correctAnswer) <= tolerance) {
            isCorrect = true;
        }
    }

    if (isCorrect) {
        messageElement.textContent = "CORRECT! IT'S A " + currentBird.name.toUpperCase();
        messageElement.style.color = "#27ae60";
        score++;
        document.getElementById("score-display").textContent = "Score: " + score;
        lockHintButtons();
        // unaided correct only counts if no hint was used this round
        recordResult(currentBird.name, !hintUsedThisRound);
        setTimeout(loadNextBird, 1500);
    } else if (hintUsedThisRound) {
        // one chance: once the hint is open, a wrong answer reveals and advances
        messageElement.textContent = "WRONG. IT WAS A " + currentBird.name.toUpperCase();
        messageElement.style.color = "#c0392b";
        lockHintButtons();
        recordResult(currentBird.name, false);
        setTimeout(loadNextBird, 2200);
    } else {
        messageElement.textContent = "INCORRECT. TRY AGAIN!";
        messageElement.style.color = "#c0392b";
        setControlsState(true);
        document.getElementById("guess-input").focus();
    }
}

function passBird() {
    setControlsState(false);
    passedBirds.push(currentBird.name);
    recordResult(currentBird.name, false);

    const messageElement = document.getElementById("result-message");
    messageElement.textContent = "PASSED. The answer was: " + currentBird.name;
    messageElement.style.color = "#e74c3c";

    setTimeout(loadNextBird, 2000);
}

// --- MULTIPLE-CHOICE HINT (one chance) ---
// Builds 4 options: the correct bird plus 3 decoys, preferring the same group.
// Clicking the right one scores it; clicking a wrong one reveals the answer
// and moves on. Only the first hint of a round is offered.
function showHint() {
    if (!hintUsedThisRound) {
        hintedBirds.push(currentBird.name);
        hintUsedThisRound = true;
    }

    let sameGroup = masterBirdList.filter(
        b => b.group === currentBird.group && b.name !== currentBird.name
    );
    shuffle(sameGroup);

    let decoys = sameGroup.slice(0, 3);

    if (decoys.length < 3) {
        let others = masterBirdList.filter(
            b => b.name !== currentBird.name && !decoys.includes(b)
        );
        shuffle(others);
        decoys = decoys.concat(others.slice(0, 3 - decoys.length));
    }

    let options = shuffle([currentBird, ...decoys]);

    const container = document.getElementById("hint-options");
    container.innerHTML = "";
    options.forEach(opt => {
        const btn = document.createElement("button");
        btn.classList.add("hint-choice");
        btn.textContent = opt.name;
        btn.onclick = function() {
            document.getElementById("guess-input").value = opt.name;
            checkGuess();
        };
        container.appendChild(btn);
    });
    container.style.display = "grid";
}

function lockHintButtons() {
    const buttons = document.querySelectorAll("#hint-options .hint-choice");
    buttons.forEach(b => b.disabled = true);
}

function endGame() {
    document.getElementById("game-view").style.display = "none";
    document.getElementById("summary-view").style.display = "block";
    document.getElementById("result-message").textContent = "";

    const titleElement = document.getElementById("final-score-title");

    if (score === ROUND_LIMIT && hintedBirds.length === 0) {
        titleElement.textContent = "PERFECT SCORE! YOU ARE A BIRD GENIUS!";
        titleElement.style.color = "#d4af37";
        titleElement.style.fontSize = "1.8rem";
        startConfetti();
    } else {
        titleElement.textContent = `GAME OVER! FINAL SCORE: ${score}/${ROUND_LIMIT}`;
        titleElement.style.color = "#1a1a1a";
        titleElement.style.fontSize = "1.4rem";
    }

    // overall mastery line: how many of the 250 she has got right at least once
    const stats = loadStats();
    let mastered = 0;
    let seen = 0;
    Object.keys(stats).forEach(name => {
        seen++;
        if (stats[name].correct > 0) mastered++;
    });
    const masteryEl = document.getElementById("mastery-line");
    if (masteryEl) {
        masteryEl.textContent = `Birds mastered: ${mastered} of ${masterBirdList.length}  (seen ${seen})`;
    }

    if (passedBirds.length > 0) {
        document.getElementById("passed-section").style.display = "block";
        const list = document.getElementById("passed-list");
        list.innerHTML = "";
        passedBirds.forEach(name => {
            const li = document.createElement("li");
            li.textContent = name;
            list.appendChild(li);
        });
    } else {
        document.getElementById("passed-section").style.display = "none";
    }

    if (hintedBirds.length > 0) {
        document.getElementById("hinted-section").style.display = "block";
        const list = document.getElementById("hinted-list");
        list.innerHTML = "";
        hintedBirds.forEach(name => {
            const li = document.createElement("li");
            li.textContent = name;
            list.appendChild(li);
        });
    } else {
        document.getElementById("hinted-section").style.display = "none";
    }
}

function startConfetti() {
    const colors = ['#e74c3c', '#f2d705', '#27ae60', '#3498db', '#9b59b6'];
    for (let i = 0; i < 100; i++) {
        const confetti = document.createElement('div');
        confetti.classList.add('confetti');
        confetti.style.left = Math.random() * 100 + 'vw';
        confetti.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
        confetti.style.animation = `fall ${Math.random() * 3 + 2}s linear forwards`;
        document.body.appendChild(confetti);
        setTimeout(() => { confetti.remove(); }, 5000);
    }
}

function getEditDistance(a, b) {
    if (a.length === 0) return b.length;
    if (b.length === 0) return a.length;
    var matrix = [];
    var i;
    for (i = 0; i <= b.length; i++) { matrix[i] = [i]; }
    var j;
    for (j = 0; j <= a.length; j++) { matrix[0][j] = j; }
    for (i = 1; i <= b.length; i++) {
        for (j = 1; j <= a.length; j++) {
            if (b.charAt(i - 1) == a.charAt(j - 1)) {
                matrix[i][j] = matrix[i - 1][j - 1];
            } else {
                matrix[i][j] = Math.min(matrix[i - 1][j - 1] + 1, Math.min(matrix[i][j - 1] + 1, matrix[i - 1][j] + 1));
            }
        }
    }
    return matrix[b.length][a.length];
}

document.getElementById("guess-input").addEventListener("keypress", function(event) {
    if (event.key === "Enter") {
        checkGuess();
    }
});

restartGame();