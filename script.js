'use strict';

// =============================================================================
//  ANNIE'S BIRD ID GAME — script.js  (V3 + single-pane mobile UI)
//
//  Drop-in replacement. No manual edits required.
//  Preserves the original anniesBirdStats_v1 localStorage key so all
//  accumulated difficulty data carries over to this version.
// =============================================================================


// ── BIRD DATA ─────────────────────────────────────────────────────────────────

const masterBirdList = [
    { name: "Robin",                     latin: "Erithacus rubecula",              group: "chat",        img: "images/robin.jpg",                     fact: "British robins are fiercely territorial and will sing through winter to defend their patch." },
    { name: "Blue Tit",                  latin: "Cyanistes caeruleus",             group: "tit",         img: "images/bluetit.jpg",                   fact: "A single blue tit can eat hundreds of aphids and caterpillars a day, making it a gardener's ally." },
    { name: "Great Tit",                 latin: "Parus major",                     group: "tit",         img: "images/greattit.jpg",                  fact: "Great tits have a remarkably varied song, so much so that birders joke if you hear an unknown call, it is probably a great tit." },
    { name: "Blackbird",                 latin: "Turdus merula",                   group: "thrush",      img: "images/blackbird.jpg",                 fact: "The male's rich, fluting song is one of the most admired of any British bird, often delivered from a rooftop at dusk." },
    { name: "Magpie",                    latin: "Pica pica",                       group: "corvid",      img: "images/magpie.jpg",                    fact: "Magpies are among the few animals thought to recognise themselves in a mirror, a sign of unusual intelligence." },
    { name: "Goldfinch",                 latin: "Carduelis carduelis",             group: "finch",       img: "images/goldfinch.jpg",                 fact: "A flock of goldfinches is delightfully called a 'charm', from an old word for their twittering song." },
    { name: "Chaffinch",                 latin: "Fringilla coelebs",               group: "finch",       img: "images/chaffinch.jpg",                 fact: "Chaffinches in different regions sing in distinct local dialects." },
    { name: "Wood Pigeon",               latin: "Columba palumbus",                group: "pigeon",      img: "images/woodpigeon.jpg",                fact: "The wood pigeon is Britain's largest and commonest pigeon, recognisable by the white patches on its neck." },
    { name: "Collared Dove",             latin: "Streptopelia decaocto",           group: "pigeon",      img: "images/collareddove.jpg",              fact: "The collared dove spread across Europe from Asia in just a few decades, reaching Britain in the 1950s." },
    { name: "Dunnock",                   latin: "Prunella modularis",              group: "lbb",         img: "images/dunnock.jpg",                   fact: "Despite its plain looks, the dunnock has a complex love life, often with several mates sharing a territory." },
    { name: "Starling",                  latin: "Sturnus vulgaris",                group: "starling",    img: "images/starling.jpg",                  fact: "Starlings gather in vast swirling flocks called murmurations that move as one before roosting." },
    { name: "House Sparrow",             latin: "Passer domesticus",               group: "sparrow",     img: "images/housesparrow.jpg",              fact: "Once everywhere, the house sparrow has declined sharply in British cities in recent decades." },
    { name: "Long-tailed Tit",           latin: "Aegithalos caudatus",             group: "tit",         img: "images/longtailedtit.jpg",             fact: "Its tail is longer than its body, and family groups huddle together on cold nights to keep warm." },
    { name: "Greenfinch",                latin: "Chloris chloris",                 group: "finch",       img: "images/greenfinch.jpg",                fact: "Greenfinches show flashes of yellow on the wings and tail in flight." },
    { name: "Coal Tit",                  latin: "Periparus ater",                  group: "tit",         img: "images/coaltit.jpg",                   fact: "The smallest British tit, it often hides seeds to eat later." },
    { name: "Wren",                      latin: "Troglodytes troglodytes",         group: "lbb",         img: "images/wren.jpg",                      fact: "One of Britain's smallest birds, the wren has a song astonishingly loud for its size." },
    { name: "Song Thrush",               latin: "Turdus philomelos",               group: "thrush",      img: "images/songthrush.jpg",                fact: "The song thrush smashes snails against a favourite stone, called an 'anvil', to reach the flesh." },
    { name: "Nuthatch",                  latin: "Sitta europaea",                  group: "treecreeper", img: "images/nuthatch.jpg",                  fact: "The nuthatch is the only British bird that can climb down a tree trunk head-first." },
    { name: "Great Spotted Woodpecker",  latin: "Dendrocopos major",               group: "woodpecker",  img: "images/greatspottedwoodpecker.jpg",    fact: "Its loud spring drumming is made by hammering its bill against wood, not by calling." },
    { name: "Jay",                       latin: "Garrulus glandarius",             group: "corvid",      img: "images/jay.jpg",                       fact: "Jays bury thousands of acorns each autumn and help plant new oak woods by forgetting some." },
    { name: "Grey Heron",                latin: "Ardea cinerea",                   group: "heron",       img: "images/greyheron.jpg",                 fact: "Herons stand motionless for long periods before striking fish with lightning speed." },
    { name: "Mute Swan",                 latin: "Cygnus olor",                     group: "waterfowl",   img: "images/muteswan.jpg",                  fact: "Despite the name, mute swans are not silent and hiss and grunt; their wings also make a distinctive throbbing in flight." },
    { name: "Mallard",                   latin: "Anas platyrhynchos",              group: "waterfowl",   img: "images/mallard.jpg",                   fact: "The familiar quack belongs only to the female; the male makes a quieter rasping call." },
    { name: "Coot",                      latin: "Fulica atra",                     group: "rail",        img: "images/coot.jpg",                      fact: "Coots have lobed, not webbed, feet and are known for aggressive squabbling on the water." },
    { name: "Moorhen",                   latin: "Gallinula chloropus",             group: "rail",        img: "images/moorhen.jpg",                   fact: "Moorhens flick their tails to show the white feathers beneath as a signal to others." },
    { name: "Canada Goose",              latin: "Branta canadensis",               group: "waterfowl",   img: "images/canadagoose.jpg",               fact: "Introduced from North America, the Canada goose is now a familiar sight on British parks and lakes." },
    { name: "Kestrel",                   latin: "Falco tinnunculus",               group: "raptor",      img: "images/kestrel.jpg",                   fact: "The kestrel hovers in place by flying into the wind, holding its head perfectly still to spot prey." },
    { name: "Buzzard",                   latin: "Buteo buteo",                     group: "raptor",      img: "images/buzzard.jpg",                   fact: "Once rare, the buzzard is now Britain's commonest bird of prey, often seen soaring on broad wings." },
    { name: "Red Kite",                  latin: "Milvus milvus",                   group: "raptor",      img: "images/redkite.jpg",                   fact: "Brought back from near-extinction in Britain, the red kite is recognisable by its forked tail." },
    { name: "Barn Owl",                  latin: "Tyto alba",                       group: "owl",         img: "images/barnowl.jpg",                   fact: "The barn owl's flight is almost silent thanks to soft fringes on its wing feathers." },
    { name: "Tawny Owl",                 latin: "Strix aluco",                     group: "owl",         img: "images/tawnyowl.jpg",                  fact: "The classic 'twit-twoo' is actually two birds, the female's 'kewick' answered by the male's hoot." },
    { name: "Pheasant",                  latin: "Phasianus colchicus",             group: "gamebird",    img: "images/pheasant.jpg",                  fact: "Introduced for shooting centuries ago, the pheasant originally came from Asia." },
    { name: "Swift",                     latin: "Apus apus",                       group: "aerial",      img: "images/swift.jpg",                     fact: "Swifts spend almost their entire lives in the air, even sleeping on the wing." },
    { name: "Swallow",                   latin: "Hirundo rustica",                 group: "aerial",      img: "images/swallow.jpg",                   fact: "Swallows migrate thousands of miles to Africa each winter and return to the same nest sites." },
    { name: "House Martin",              latin: "Delichon urbicum",                group: "aerial",      img: "images/housemartin.jpg",               fact: "House martins build cup-shaped mud nests under the eaves of houses." },
    { name: "Kingfisher",                latin: "Alcedo atthis",                   group: "kingfisher",  img: "images/kingfisher.jpg",                fact: "The kingfisher's brilliant blue is not pigment but an optical effect of its feather structure." },
    { name: "Bullfinch",                 latin: "Pyrrhula pyrrhula",               group: "finch",       img: "images/bullfinch.jpg",                 fact: "The male's bright pink breast makes it one of the most striking British finches." },
    { name: "Siskin",                    latin: "Spinus spinus",                   group: "finch",       img: "images/siskin.jpg",                    fact: "Siskins are small, streaky finches that flock to garden feeders in winter." },
    { name: "Yellowhammer",              latin: "Emberiza citrinella",             group: "bunting",     img: "images/yellowhammer.jpg",              fact: "Its song is often described as 'a little bit of bread and no cheese'." },
    { name: "Pied Wagtail",              latin: "Motacilla alba",                  group: "wagtail",     img: "images/piedwagtail.jpg",               fact: "The pied wagtail constantly bobs its long tail up and down as it runs after insects." },
    { name: "Grey Wagtail",              latin: "Motacilla cinerea",               group: "wagtail",     img: "images/greywagtail.jpg",               fact: "Despite the name, it shows striking yellow underparts and favours fast-flowing streams." },
    { name: "Cormorant",                 latin: "Phalacrocorax carbo",             group: "seabird",     img: "images/cormorant.jpg",                 fact: "Cormorants are often seen perched with wings spread wide to dry after diving for fish." },
    { name: "Oystercatcher",             latin: "Haematopus ostralegus",           group: "wader",       img: "images/oystercatcher.jpg",             fact: "Its loud piping call and long orange bill make the oystercatcher easy to identify on the coast." },
    { name: "Curlew",                    latin: "Numenius arquata",                group: "wader",       img: "images/curlew.jpg",                    fact: "The curlew's bubbling call is one of the most evocative sounds of British moorland and estuary." },
    { name: "Lapwing",                   latin: "Vanellus vanellus",               group: "wader",       img: "images/lapwing.jpg",                   fact: "Also called the peewit after its call, the lapwing has a distinctive wispy crest." },
    { name: "Puffin",                    latin: "Fratercula arctica",              group: "seabird",     img: "images/puffin.jpg",                    fact: "Puffins shed the colourful outer plates of their bills after the breeding season." },
    { name: "Herring Gull",              latin: "Larus argentatus",                group: "gull",        img: "images/herringgull.jpg",               fact: "The red spot on an adult's bill is a target the chicks peck to beg for food." },
    { name: "Black-headed Gull",         latin: "Chroicocephalus ridibundus",      group: "gull",        img: "images/blackheadedgull.jpg",           fact: "In winter its chocolate-brown 'hood' shrinks to just a dark smudge behind the eye." },
    { name: "Gannet",                    latin: "Morus bassanus",                  group: "seabird",     img: "images/gannet.jpg",                    fact: "Gannets dive into the sea from great height, hitting the water at speed to catch fish." },
    { name: "Great Crested Grebe",       latin: "Podiceps cristatus",              group: "grebe",       img: "images/greatcrestedgrebe.jpg",         fact: "Pairs perform an elaborate courtship dance, rising up breast to breast on the water." },
    { name: "Carrion Crow",              latin: "Corvus corone",                   group: "corvid",      img: "images/carrioncrow.jpg",               fact: "Carrion crows are highly adaptable and have been seen using tools to reach food." },
    { name: "Rook",                      latin: "Corvus frugilegus",               group: "corvid",      img: "images/rook.jpg",                      fact: "Rooks nest in noisy colonies called rookeries high in tall trees." },
    { name: "Jackdaw",                   latin: "Coloeus monedula",                group: "corvid",      img: "images/jackdaw.jpg",                   fact: "Jackdaws are the smallest British crow and pair for life, recognisable by their pale grey eyes." },
    { name: "Raven",                     latin: "Corvus corax",                    group: "corvid",      img: "images/raven.jpg",                     fact: "The raven is the largest member of the crow family and famous for its deep, croaking call." },
    { name: "Hooded Crow",               latin: "Corvus cornix",                   group: "corvid",      img: "images/hoodedcrow.jpg",                fact: "The grey-and-black hooded crow replaces the carrion crow in northern and western Scotland and Ireland." },
    { name: "Feral Pigeon",              latin: "Columba livia",                   group: "pigeon",      img: "images/feralpigeon.jpg",               fact: "Town pigeons are descendants of the wild rock dove, which nested on sea cliffs." },
    { name: "Stock Dove",                latin: "Columba oenas",                   group: "pigeon",      img: "images/stockdove.jpg",                 fact: "Smaller and shyer than the wood pigeon, the stock dove lacks white markings and nests in tree holes." },
    { name: "Turtle Dove",               latin: "Streptopelia turtur",             group: "pigeon",      img: "images/turtledove.jpg",                fact: "Its gentle purring call was once a sound of British summers but it has declined dramatically." },
    { name: "Marsh Tit",                 latin: "Poecile palustris",               group: "tit",         img: "images/marshtit.jpg",                  fact: "Almost identical to the willow tit, the marsh tit is best told apart by its sneezing 'pitchou' call." },
    { name: "Willow Tit",                latin: "Poecile montanus",                group: "tit",         img: "images/willowtit.jpg",                 fact: "The willow tit excavates its own nest hole in soft, rotting wood." },
    { name: "Crested Tit",               latin: "Lophophanes cristatus",           group: "tit",         img: "images/crestedtit.jpg",                fact: "In Britain this tit is found almost only in the old pine forests of the Scottish Highlands." },
    { name: "Bearded Tit",               latin: "Panurus biarmicus",               group: "tit",         img: "images/beardedtit.jpg",                fact: "Despite the name it is not a true tit; it lives among reedbeds and has a black moustache, not a beard." },
    { name: "Treecreeper",               latin: "Certhia familiaris",              group: "treecreeper", img: "images/treecreeper.jpg",               fact: "The treecreeper spirals up tree trunks searching bark crevices for insects with its curved bill." },
    { name: "Goldcrest",                 latin: "Regulus regulus",                 group: "crest",       img: "images/goldcrest.jpg",                 fact: "The goldcrest is Britain's smallest bird, weighing about the same as a five-pence coin." },
    { name: "Firecrest",                 latin: "Regulus ignicapilla",             group: "crest",       img: "images/firecrest.jpg",                 fact: "Similar to the goldcrest but brighter, with a bold white stripe over the eye." },
    { name: "Chiffchaff",                latin: "Phylloscopus collybita",          group: "warbler",     img: "images/chiffchaff.jpg",                fact: "It is named after its simple, repetitive 'chiff-chaff' song." },
    { name: "Willow Warbler",            latin: "Phylloscopus trochilus",          group: "warbler",     img: "images/willowwarbler.jpg",             fact: "Nearly identical to the chiffchaff by sight, it is told apart by its sweet, descending song." },
    { name: "Wood Warbler",              latin: "Phylloscopus sibilatrix",         group: "warbler",     img: "images/woodwarbler.jpg",               fact: "Its trilling song speeds up like a spinning coin coming to rest." },
    { name: "Blackcap",                  latin: "Sylvia atricapilla",              group: "warbler",     img: "images/blackcap.jpg",                  fact: "Increasingly, blackcaps from central Europe now spend winter in British gardens." },
    { name: "Garden Warbler",            latin: "Sylvia borin",                    group: "warbler",     img: "images/gardenwarbler.jpg",             fact: "Plain in appearance, the garden warbler is best known for its rich, warbling song." },
    { name: "Whitethroat",               latin: "Curruca communis",                group: "warbler",     img: "images/whitethroat.jpg",               fact: "The male sings a scratchy song during a short, dancing display flight." },
    { name: "Lesser Whitethroat",        latin: "Curruca curruca",                 group: "warbler",     img: "images/lesserwhitethroat.jpg",         fact: "Greyer than the common whitethroat, it sings a distinctive rattling note." },
    { name: "Sedge Warbler",             latin: "Acrocephalus schoenobaenus",      group: "warbler",     img: "images/sedgewarbler.jpg",              fact: "Each male sings a different, improvised song, never repeating the exact same sequence." },
    { name: "Reed Warbler",              latin: "Acrocephalus scirpaceus",         group: "warbler",     img: "images/reedwarbler.jpg",               fact: "Reed warblers are frequent hosts to cuckoos, raising the impostor chick as their own." },
    { name: "Grasshopper Warbler",       latin: "Locustella naevia",               group: "warbler",     img: "images/grasshopperwarbler.jpg",        fact: "Its song is a long, mechanical reeling, easily mistaken for an insect." },
    { name: "Cetti's Warbler",           latin: "Cettia cetti",                    group: "warbler",     img: "images/cettiswarbler.jpg",             fact: "Loud and explosive, its song bursts out suddenly from dense cover where the bird stays hidden." },
    { name: "Dartford Warbler",          latin: "Curruca undata",                  group: "warbler",     img: "images/dartfordwarbler.jpg",           fact: "A rare resident of southern heathland, it suffers badly in harsh winters." },
    { name: "Spotted Flycatcher",        latin: "Muscicapa striata",               group: "flycatcher",  img: "images/spottedflycatcher.jpg",         fact: "It darts out from a perch to snatch flying insects, then returns to the same spot." },
    { name: "Pied Flycatcher",           latin: "Ficedula hypoleuca",              group: "flycatcher",  img: "images/piedflycatcher.jpg",            fact: "The male is smart black and white in summer; it favours western oak woods." },
    { name: "Redstart",                  latin: "Phoenicurus phoenicurus",         group: "chat",        img: "images/redstart.jpg",                  fact: "The redstart constantly quivers its rusty-red tail." },
    { name: "Black Redstart",            latin: "Phoenicurus ochruros",            group: "chat",        img: "images/blackredstart.jpg",             fact: "In Britain it often nests on industrial sites and old buildings rather than in the countryside." },
    { name: "Nightingale",               latin: "Luscinia megarhynchos",           group: "chat",        img: "images/nightingale.jpg",               fact: "Famed for its powerful song, the nightingale often sings at night as well as by day." },
    { name: "Stonechat",                 latin: "Saxicola rubicola",               group: "chat",        img: "images/stonechat.jpg",                 fact: "Its call sounds like two stones being knocked together." },
    { name: "Whinchat",                  latin: "Saxicola rubetra",                group: "chat",        img: "images/whinchat.jpg",                  fact: "A summer visitor to rough grassland, it perches prominently on tall stems." },
    { name: "Wheatear",                  latin: "Oenanthe oenanthe",               group: "chat",        img: "images/wheatear.jpg",                  fact: "One of the earliest spring migrants, it flashes a white rump as it flies away." },
    { name: "Fieldfare",                 latin: "Turdus pilaris",                  group: "thrush",      img: "images/fieldfare.jpg",                 fact: "A large winter thrush from Scandinavia, often seen in flocks stripping berries from hedges." },
    { name: "Redwing",                   latin: "Turdus iliacus",                  group: "thrush",      img: "images/redwing.jpg",                   fact: "The smallest British thrush, the redwing arrives in winter and shows rusty-red flanks." },
    { name: "Mistle Thrush",             latin: "Turdus viscivorus",               group: "thrush",      img: "images/mistlethrush.jpg",              fact: "It often sings from a high perch during winter storms, earning the old name 'stormcock'." },
    { name: "Ring Ouzel",                latin: "Turdus torquatus",                group: "thrush",      img: "images/ringouzel.jpg",                 fact: "A mountain thrush, the male is black with a bold white crescent on the breast." },
    { name: "Linnet",                    latin: "Linaria cannabina",               group: "finch",       img: "images/linnet.jpg",                    fact: "The male's crimson breast in summer once made linnets popular cage birds." },
    { name: "Lesser Redpoll",            latin: "Acanthis cabaret",                group: "finch",       img: "images/lesserredpoll.jpg",             fact: "These tiny finches feed acrobatically, often hanging upside down from birch catkins." },
    { name: "Common Redpoll",            latin: "Acanthis flammea",                group: "finch",       img: "images/commonredpoll.jpg",             fact: "Slightly larger and paler than the lesser redpoll, it visits Britain mainly in winter." },
    { name: "Twite",                     latin: "Linaria flavirostris",            group: "finch",       img: "images/twite.jpg",                     fact: "Sometimes called the mountain linnet, it breeds on uplands and moves to coasts in winter." },
    { name: "Hawfinch",                  latin: "Coccothraustes coccothraustes",   group: "finch",       img: "images/hawfinch.jpg",                  fact: "The hawfinch has a massive bill powerful enough to crack cherry stones." },
    { name: "Crossbill",                 latin: "Loxia curvirostra",               group: "finch",       img: "images/crossbill.jpg",                 fact: "Its crossed bill tips are specially shaped to prise seeds from pine cones." },
    { name: "Brambling",                 latin: "Fringilla montifringilla",        group: "finch",       img: "images/brambling.jpg",                 fact: "A winter visitor related to the chaffinch, it can gather in enormous flocks where beech mast is plentiful." },
    { name: "Tree Sparrow",              latin: "Passer montanus",                 group: "sparrow",     img: "images/treesparrow.jpg",               fact: "Both sexes have a chestnut cap and a black cheek spot, unlike the house sparrow." },
    { name: "Reed Bunting",              latin: "Emberiza schoeniclus",            group: "bunting",     img: "images/reedbunting.jpg",               fact: "The breeding male has a striking black head and white collar." },
    { name: "Corn Bunting",              latin: "Emberiza calandra",               group: "bunting",     img: "images/cornbunting.jpg",               fact: "A plump farmland bird whose jangling song is likened to a bunch of rattling keys." },
    { name: "Cirl Bunting",              latin: "Emberiza cirlus",                 group: "bunting",     img: "images/cirlbunting.jpg",               fact: "Once widespread, it is now largely confined to south Devon in Britain." },
    { name: "Snow Bunting",              latin: "Plectrophenax nivalis",           group: "bunting",     img: "images/snowbunting.jpg",               fact: "This Arctic breeder visits British coasts and mountains in winter, flashing white in flight." },
    { name: "Skylark",                   latin: "Alauda arvensis",                 group: "lark",        img: "images/skylark.jpg",                   fact: "The skylark sings continuously while hovering high overhead, sometimes for minutes at a time." },
    { name: "Woodlark",                  latin: "Lullula arborea",                 group: "lark",        img: "images/woodlark.jpg",                  fact: "Its melodious song is often heard at dusk over heathland clearings." },
    { name: "Meadow Pipit",              latin: "Anthus pratensis",                group: "pipit",       img: "images/meadowpipit.jpg",               fact: "A small streaky bird of open country, it parachutes down on stiff wings while singing." },
    { name: "Tree Pipit",                latin: "Anthus trivialis",                group: "pipit",       img: "images/treepipit.jpg",                 fact: "Very like the meadow pipit, it is best separated by its song flight from a tree." },
    { name: "Rock Pipit",                latin: "Anthus petrosus",                 group: "pipit",       img: "images/rockpipit.jpg",                 fact: "A larger, darker pipit found along rocky coasts." },
    { name: "Yellow Wagtail",            latin: "Motacilla flava",                 group: "wagtail",     img: "images/yellowwagtail.jpg",             fact: "A bright yellow summer visitor of damp meadows and grazing marshes." },
    { name: "Sand Martin",               latin: "Riparia riparia",                 group: "aerial",      img: "images/sandmartin.jpg",                fact: "Sand martins nest in tunnels they dig into sandy riverbanks and quarries." },
    { name: "Green Woodpecker",          latin: "Picus viridis",                   group: "woodpecker",  img: "images/greenwoodpecker.jpg",           fact: "Its loud laughing call has earned it the country name 'yaffle'." },
    { name: "Lesser Spotted Woodpecker", latin: "Dryobates minor",                 group: "woodpecker",  img: "images/lesserspottedwoodpecker.jpg",   fact: "Barely bigger than a sparrow, it is Britain's smallest and most elusive woodpecker." },
    { name: "Cuckoo",                    latin: "Cuculus canorus",                 group: "cuckoo",      img: "images/cuckoo.jpg",                    fact: "The cuckoo lays its eggs in other birds' nests, leaving them to raise its chick." },
    { name: "Little Owl",                latin: "Athene noctua",                   group: "owl",         img: "images/littleowl.jpg",                 fact: "Introduced to Britain in the 1800s, this small owl is often active by day." },
    { name: "Short-eared Owl",           latin: "Asio flammeus",                   group: "owl",         img: "images/shortearedowl.jpg",             fact: "Unusually for an owl, it hunts in daylight over open moors and marshes." },
    { name: "Long-eared Owl",            latin: "Asio otus",                       group: "owl",         img: "images/longearedowl.jpg",              fact: "Strictly nocturnal and secretive, it roosts in dense cover by day." },
    { name: "Sparrowhawk",               latin: "Accipiter nisus",                 group: "raptor",      img: "images/sparrowhawk.jpg",               fact: "The sparrowhawk twists through gardens and woodland at speed to ambush small birds." },
    { name: "Goshawk",                   latin: "Accipiter gentilis",              group: "raptor",      img: "images/goshawk.jpg",                   fact: "A larger, more powerful relative of the sparrowhawk, it hunts in mature forest." },
    { name: "Peregrine",                 latin: "Falco peregrinus",                group: "raptor",      img: "images/peregrine.jpg",                 fact: "The peregrine is the fastest animal on Earth, reaching huge speeds in its hunting dive." },
    { name: "Hobby",                     latin: "Falco subbuteo",                  group: "raptor",      img: "images/hobby.jpg",                     fact: "Agile enough to catch swifts and dragonflies in mid-air, the hobby is a summer visitor." },
    { name: "Merlin",                    latin: "Falco columbarius",               group: "raptor",      img: "images/merlin.jpg",                    fact: "Britain's smallest falcon, the merlin chases small birds in fast, low flight." },
    { name: "Marsh Harrier",             latin: "Circus aeruginosus",              group: "raptor",      img: "images/marshharrier.jpg",              fact: "It quarters low over reedbeds on raised wings, recovering well after near-extinction in Britain." },
    { name: "Hen Harrier",               latin: "Circus cyaneus",                  group: "raptor",      img: "images/henharrier.jpg",                fact: "The pale grey male is often called the 'grey ghost' for its ghostly low flight." },
    { name: "Golden Eagle",              latin: "Aquila chrysaetos",               group: "raptor",      img: "images/goldeneagle.jpg",               fact: "This majestic eagle of the Scottish Highlands holds territories spanning many miles." },
    { name: "White-tailed Eagle",        latin: "Haliaeetus albicilla",            group: "raptor",      img: "images/whitetailedeagle.jpg",          fact: "Britain's largest bird of prey, reintroduced to Scotland after being lost for decades." },
    { name: "Osprey",                    latin: "Pandion haliaetus",               group: "raptor",      img: "images/osprey.jpg",                    fact: "The osprey plunges feet-first into water to seize fish in its talons." },
    { name: "Grey Partridge",            latin: "Perdix perdix",                   group: "gamebird",    img: "images/greypartridge.jpg",             fact: "A native farmland bird that has declined steeply with changes in agriculture." },
    { name: "Red-legged Partridge",      latin: "Alectoris rufa",                  group: "gamebird",    img: "images/redleggedpartridge.jpg",        fact: "Introduced from continental Europe, it is recognised by its bold facial markings and red legs." },
    { name: "Red Grouse",                latin: "Lagopus lagopus",                 group: "gamebird",    img: "images/redgrouse.jpg",                 fact: "A bird of British heather moorland, it is found nowhere else in quite the same form." },
    { name: "Black Grouse",              latin: "Lyrurus tetrix",                  group: "gamebird",    img: "images/blackgrouse.jpg",               fact: "Males gather at communal display grounds called 'leks' to compete for females." },
    { name: "Capercaillie",              latin: "Tetrao urogallus",                group: "gamebird",    img: "images/capercaillie.jpg",              fact: "Europe's largest grouse, the turkey-sized male performs a dramatic display in Scottish pine forests." },
    { name: "Quail",                     latin: "Coturnix coturnix",               group: "gamebird",    img: "images/quail.jpg",                     fact: "The quail is more often heard than seen, its rhythmic 'wet-my-lips' call coming from tall crops." },
    { name: "Grey Plover",               latin: "Pluvialis squatarola",            group: "wader",       img: "images/greyplover.jpg",                fact: "A coastal wader in winter, it transforms to spangled black-and-silver in breeding plumage." },
    { name: "Golden Plover",             latin: "Pluvialis apricaria",             group: "wader",       img: "images/goldenplover.jpg",              fact: "In breeding plumage it gains a striking black face and belly bordered with gold." },
    { name: "Ringed Plover",             latin: "Charadrius hiaticula",            group: "wader",       img: "images/ringedplover.jpg",              fact: "It runs and pauses along shingle beaches, blending in with its surroundings." },
    { name: "Little Ringed Plover",      latin: "Charadrius dubius",               group: "wader",       img: "images/littleringedplover.jpg",        fact: "Smaller than the ringed plover, it has a distinctive yellow ring around the eye." },
    { name: "Dunlin",                    latin: "Calidris alpina",                 group: "wader",       img: "images/dunlin.jpg",                    fact: "The commonest small wader on British estuaries, often seen in large, wheeling flocks." },
    { name: "Sanderling",                latin: "Calidris alba",                   group: "wader",       img: "images/sanderling.jpg",                fact: "Sanderlings chase the waves on sandy beaches, running back and forth at the water's edge." },
    { name: "Knot",                      latin: "Calidris canutus",                group: "wader",       img: "images/knot.jpg",                      fact: "Knots gather in spectacular dense flocks that twist and turn over estuaries." },
    { name: "Turnstone",                 latin: "Arenaria interpres",              group: "wader",       img: "images/turnstone.jpg",                 fact: "True to its name, it flips over seaweed and stones to find food beneath." },
    { name: "Redshank",                  latin: "Tringa totanus",                  group: "wader",       img: "images/redshank.jpg",                  fact: "Its bright red legs and loud alarm call earn it the nickname 'sentinel of the marsh'." },
    { name: "Greenshank",                latin: "Tringa nebularia",                group: "wader",       img: "images/greenshank.jpg",                fact: "A graceful, pale wader with greenish legs and a slightly upturned bill." },
    { name: "Common Sandpiper",          latin: "Actitis hypoleucos",              group: "wader",       img: "images/commonsandpiper.jpg",           fact: "It bobs its tail constantly and flies low over water on stiff, flickering wings." },
    { name: "Green Sandpiper",           latin: "Tringa ochropus",                 group: "wader",       img: "images/greensandpiper.jpg",            fact: "Dark above and white below, it flushes with a sharp call from ditches and pools." },
    { name: "Snipe",                     latin: "Gallinago gallinago",             group: "wader",       img: "images/snipe.jpg",                     fact: "The male's display 'drumming' is made by air rushing through its outer tail feathers." },
    { name: "Woodcock",                  latin: "Scolopax rusticola",              group: "wader",       img: "images/woodcock.jpg",                  fact: "Superbly camouflaged, the woodcock has eyes set far back for near all-round vision." },
    { name: "Black-tailed Godwit",       latin: "Limosa limosa",                   group: "wader",       img: "images/blacktailedgodwit.jpg",         fact: "A tall, elegant wader showing a bold black-and-white wing pattern in flight." },
    { name: "Bar-tailed Godwit",         latin: "Limosa lapponica",                group: "wader",       img: "images/bartailedgodwit.jpg",           fact: "Some bar-tailed godwits make one of the longest non-stop migrations of any bird." },
    { name: "Whimbrel",                  latin: "Numenius phaeopus",               group: "wader",       img: "images/whimbrel.jpg",                  fact: "Like a small curlew, it is told apart by its striped crown and tittering call." },
    { name: "Avocet",                    latin: "Recurvirostra avosetta",          group: "wader",       img: "images/avocet.jpg",                    fact: "The avocet sweeps its upturned bill side to side through water to catch food; it features on the RSPB logo." },
    { name: "Ruff",                      latin: "Calidris pugnax",                 group: "wader",       img: "images/ruff.jpg",                      fact: "Breeding males grow extravagant ruffs of feathers and gather to display at leks." },
    { name: "Little Stint",              latin: "Calidris minuta",                 group: "wader",       img: "images/littlestint.jpg",               fact: "One of the smallest waders, it passes through Britain on migration." },
    { name: "Purple Sandpiper",          latin: "Calidris maritima",               group: "wader",       img: "images/purplesandpiper.jpg",           fact: "It favours wave-battered rocky shores in winter, often alongside turnstones." },
    { name: "Grey Lag Goose",            latin: "Anser anser",                     group: "waterfowl",   img: "images/greylaggoose.jpg",              fact: "The greylag is the ancestor of most domestic geese." },
    { name: "Pink-footed Goose",         latin: "Anser brachyrhynchus",            group: "waterfowl",   img: "images/pinkfootedgoose.jpg",           fact: "Large flocks arrive from Iceland and Greenland to spend winter on British farmland." },
    { name: "White-fronted Goose",       latin: "Anser albifrons",                 group: "waterfowl",   img: "images/whitefrontedgoose.jpg",         fact: "Named for the white patch around the base of its bill, it is a winter visitor." },
    { name: "Barnacle Goose",            latin: "Branta leucopsis",                group: "waterfowl",   img: "images/barnaclegoose.jpg",             fact: "Medieval people once believed these geese hatched from barnacles, hence the name." },
    { name: "Brent Goose",               latin: "Branta bernicla",                 group: "waterfowl",   img: "images/brentgoose.jpg",                fact: "A small, dark goose of coastal mudflats, feeding on eelgrass in winter." },
    { name: "Egyptian Goose",            latin: "Alopochen aegyptiaca",            group: "waterfowl",   img: "images/egyptiangoose.jpg",             fact: "An introduced species, it is really more closely related to shelducks than true geese." },
    { name: "Shelduck",                  latin: "Tadorna tadorna",                 group: "waterfowl",   img: "images/shelduck.jpg",                  fact: "A large, boldly patterned duck that often nests in old rabbit burrows." },
    { name: "Wigeon",                    latin: "Mareca penelope",                 group: "waterfowl",   img: "images/wigeon.jpg",                    fact: "The male's whistling call carries far across winter estuaries and floods." },
    { name: "Gadwall",                   latin: "Mareca strepera",                 group: "waterfowl",   img: "images/gadwall.jpg",                   fact: "A subtly patterned grey duck, the male shows a black stern and a white wing patch." },
    { name: "Teal",                      latin: "Anas crecca",                     group: "waterfowl",   img: "images/teal.jpg",                      fact: "Britain's smallest duck, the teal springs almost vertically from the water when flushed." },
    { name: "Pintail",                   latin: "Anas acuta",                      group: "waterfowl",   img: "images/pintail.jpg",                   fact: "An elegant duck, the male has a long pointed tail and a slender neck." },
    { name: "Shoveler",                  latin: "Spatula clypeata",                group: "waterfowl",   img: "images/shoveler.jpg",                  fact: "Its huge spatula-shaped bill sifts tiny food from the water's surface." },
    { name: "Pochard",                   latin: "Aythya ferina",                   group: "waterfowl",   img: "images/pochard.jpg",                   fact: "A diving duck, the male has a rich chestnut head and pale grey body." },
    { name: "Tufted Duck",               latin: "Aythya fuligula",                 group: "waterfowl",   img: "images/tuftedduck.jpg",                fact: "The male has a neat drooping crest and bright golden eyes." },
    { name: "Goldeneye",                 latin: "Bucephala clangula",              group: "waterfowl",   img: "images/goldeneye.jpg",                 fact: "It nests in tree holes, and chicks leap from the nest to the ground soon after hatching." },
    { name: "Goosander",                 latin: "Mergus merganser",                group: "waterfowl",   img: "images/goosander.jpg",                 fact: "A sawbill duck with a serrated bill for gripping fish." },
    { name: "Red-breasted Merganser",    latin: "Mergus serrator",                 group: "waterfowl",   img: "images/redbreastedmerganser.jpg",      fact: "A slim sawbill of coasts and lochs, the male sports a spiky double crest." },
    { name: "Eider",                     latin: "Somateria mollissima",            group: "waterfowl",   img: "images/eider.jpg",                     fact: "The eider's soft down has long been collected to fill quilts and pillows." },
    { name: "Common Scoter",             latin: "Melanitta nigra",                 group: "waterfowl",   img: "images/commonscoter.jpg",              fact: "An all-dark sea duck, often seen in long lines flying low over the waves." },
    { name: "Long-tailed Duck",          latin: "Clangula hyemalis",               group: "waterfowl",   img: "images/longtailedduck.jpg",            fact: "A hardy sea duck of northern waters, the male has a very long, slender tail." },
    { name: "Mandarin Duck",             latin: "Aix galericulata",                group: "waterfowl",   img: "images/mandarinduck.jpg",              fact: "Introduced from East Asia, the male is among the most ornately coloured of all ducks." },
    { name: "Whooper Swan",              latin: "Cygnus cygnus",                   group: "waterfowl",   img: "images/whooperswan.jpg",               fact: "A wild swan from Iceland, it has a yellow-and-black bill and a bugling call." },
    { name: "Bewick's Swan",             latin: "Cygnus columbianus",              group: "waterfowl",   img: "images/bewicksswan.jpg",               fact: "The smallest swan to visit Britain, each one has a unique bill pattern." },
    { name: "Little Grebe",              latin: "Tachybaptus ruficollis",          group: "grebe",       img: "images/littlegrebe.jpg",               fact: "Also called the dabchick, it dives suddenly and pops up some distance away." },
    { name: "Slavonian Grebe",           latin: "Podiceps auritus",                group: "grebe",       img: "images/slavoniangrebe.jpg",            fact: "In breeding plumage it has golden head plumes; a rare breeder in Scotland." },
    { name: "Black-necked Grebe",        latin: "Podiceps nigricollis",            group: "grebe",       img: "images/blackneckedgrebe.jpg",          fact: "Recognisable in summer by its golden ear tufts and steep forehead." },
    { name: "Water Rail",                latin: "Rallus aquaticus",                group: "rail",        img: "images/waterrail.jpg",                 fact: "Secretive in reedbeds, it makes a strange squealing call like a piglet." },
    { name: "Little Egret",              latin: "Egretta garzetta",                group: "heron",       img: "images/littleegret.jpg",               fact: "Once a rare visitor, this small white heron is now a familiar sight in southern wetlands." },
    { name: "Great White Egret",         latin: "Ardea alba",                      group: "heron",       img: "images/greatwhiteegret.jpg",           fact: "A tall, all-white heron, increasingly seen in Britain as its range expands." },
    { name: "Cattle Egret",              latin: "Bubulcus ibis",                   group: "heron",       img: "images/cattleegret.jpg",               fact: "It often follows grazing livestock to catch the insects they disturb." },
    { name: "Bittern",                   latin: "Botaurus stellaris",              group: "heron",       img: "images/bittern.jpg",                   fact: "The male's deep booming call in spring carries over a kilometre across reedbeds." },
    { name: "Spoonbill",                 latin: "Platalea leucorodia",             group: "heron",       img: "images/spoonbill.jpg",                 fact: "Its spoon-shaped bill is swept side to side through shallow water to catch food." },
    { name: "Common Tern",               latin: "Sterna hirundo",                  group: "tern",        img: "images/commontern.jpg",                fact: "Graceful and fork-tailed, terns plunge-dive for small fish near the surface." },
    { name: "Arctic Tern",               latin: "Sterna paradisaea",               group: "tern",        img: "images/arctictern.jpg",                fact: "The Arctic tern makes the longest migration of any animal, between the Arctic and Antarctic." },
    { name: "Sandwich Tern",             latin: "Thalasseus sandvicensis",         group: "tern",        img: "images/sandwichtern.jpg",              fact: "A large tern with a shaggy crest and a black bill tipped with yellow." },
    { name: "Little Tern",               latin: "Sternula albifrons",              group: "tern",        img: "images/littletern.jpg",                fact: "Britain's smallest tern, nesting on open shingle beaches vulnerable to disturbance." },
    { name: "Common Gull",               latin: "Larus canus",                     group: "gull",        img: "images/commongull.jpg",                fact: "Smaller and gentler-looking than the herring gull, with a yellow-green bill and legs." },
    { name: "Lesser Black-backed Gull",  latin: "Larus fuscus",                   group: "gull",        img: "images/lesserblackbackedgull.jpg",     fact: "Many now nest on city rooftops far inland." },
    { name: "Great Black-backed Gull",   latin: "Larus marinus",                  group: "gull",        img: "images/greatblackbackedgull.jpg",      fact: "The world's largest gull, powerful enough to take other seabirds as prey." },
    { name: "Kittiwake",                 latin: "Rissa tridactyla",                group: "gull",        img: "images/kittiwake.jpg",                 fact: "A true seabird gull, it nests on sheer cliff ledges and is named after its call." },
    { name: "Mediterranean Gull",        latin: "Ichthyaetus melanocephalus",      group: "gull",        img: "images/mediterraneangull.jpg",         fact: "Once a rare visitor, it now breeds in Britain and shows pure white wingtips as an adult." },
    { name: "Guillemot",                 latin: "Uria aalge",                      group: "seabird",     img: "images/guillemot.jpg",                 fact: "Guillemots pack tightly onto cliff ledges, laying pear-shaped eggs that roll in a circle if knocked." },
    { name: "Razorbill",                 latin: "Alca torda",                      group: "seabird",     img: "images/razorbill.jpg",                 fact: "A relative of the puffin, it has a deep black bill marked with a fine white line." },
    { name: "Black Guillemot",           latin: "Cepphus grylle",                  group: "seabird",     img: "images/blackguillemot.jpg",            fact: "All black with bold white wing patches and bright red feet in summer." },
    { name: "Fulmar",                    latin: "Fulmarus glacialis",              group: "seabird",     img: "images/fulmar.jpg",                    fact: "It can spit a foul-smelling oil at intruders that threaten its nest." },
    { name: "Manx Shearwater",           latin: "Puffinus puffinus",               group: "seabird",     img: "images/manxshearwater.jpg",            fact: "It comes ashore only at night to its burrow, navigating back across vast distances of ocean." },
    { name: "Shag",                      latin: "Gulosus aristotelis",             group: "seabird",     img: "images/shag.jpg",                      fact: "Similar to a cormorant but slimmer, with a jaunty crest in the breeding season." },
    { name: "Storm Petrel",              latin: "Hydrobates pelagicus",            group: "seabird",     img: "images/stormpetrel.jpg",               fact: "Barely larger than a sparrow, this tiny seabird flutters over the open ocean." },
    { name: "Arctic Skua",               latin: "Stercorarius parasiticus",        group: "seabird",     img: "images/arcticskua.jpg",                fact: "A piratical seabird that chases terns and gulls to make them drop their catch." },
    { name: "Great Skua",                latin: "Stercorarius skua",               group: "seabird",     img: "images/greatskua.jpg",                 fact: "Powerful and aggressive, the great skua will dive-bomb anyone near its nest." },
    { name: "Little Auk",                latin: "Alle alle",                       group: "seabird",     img: "images/littleauk.jpg",                 fact: "A tiny Arctic seabird that sometimes turns up on British coasts after winter storms." },
    { name: "Dipper",                    latin: "Cinclus cinclus",                 group: "lbb",         img: "images/dipper.jpg",                    fact: "The only British songbird that swims, it walks underwater along stream beds to feed." },
    { name: "Waxwing",                   latin: "Bombycilla garrulus",             group: "waxwing",     img: "images/waxwing.jpg",                   fact: "In some winters waxwings arrive in numbers from the north to feast on berries." },
    { name: "Nightjar",                  latin: "Caprimulgus europaeus",           group: "nightjar",    img: "images/nightjar.jpg",                  fact: "Active at dusk, the nightjar's churring song sounds almost mechanical." },
    { name: "Hoopoe",                    latin: "Upupa epops",                     group: "exotic",      img: "images/hoopoe.jpg",                    fact: "An exotic-looking visitor with a pink crest it raises like a fan." },
    { name: "Wryneck",                   latin: "Jynx torquilla",                  group: "woodpecker",  img: "images/wryneck.jpg",                   fact: "A relative of the woodpeckers, it can twist its neck around in a snake-like way." },
    { name: "Corncrake",                 latin: "Crex crex",                       group: "rail",        img: "images/corncrake.jpg",                 fact: "Its rasping call comes from hayfields, but it is now rare except in the Scottish isles." },
    { name: "Spotted Crake",             latin: "Porzana porzana",                 group: "rail",        img: "images/spottedcrake.jpg",              fact: "Extremely secretive, it is far more often heard than seen in dense wetland." },
    { name: "Stone Curlew",              latin: "Burhinus oedicnemus",             group: "wader",       img: "images/stonecurlew.jpg",               fact: "A bird of dry, stony ground with large yellow eyes for hunting at dusk." },
    { name: "Chough",                    latin: "Pyrrhocorax pyrrhocorax",         group: "corvid",      img: "images/chough.jpg",                    fact: "The chough is a crow with a curved red bill and red legs, found on western sea cliffs." },
    { name: "Red-necked Phalarope",      latin: "Phalaropus lobatus",              group: "wader",       img: "images/redneckedphalarope.jpg",        fact: "Unusually, the female is brighter than the male, who alone incubates the eggs." },
    { name: "Grey Phalarope",            latin: "Phalaropus fulicarius",           group: "wader",       img: "images/greyphalarope.jpg",             fact: "It spins on the water to stir up food, and winters far out at sea." },
    { name: "Ptarmigan",                 latin: "Lagopus muta",                    group: "gamebird",    img: "images/ptarmigan.jpg",                 fact: "It turns white in winter for camouflage in the snow of high Scottish mountains." },
    { name: "Crested Lark",              latin: "Galerida cristata",               group: "lark",        img: "images/crestedlark.jpg",               fact: "Common across much of Europe but only a rare visitor to Britain, with a distinctive spiky crest." },
    { name: "Shore Lark",                latin: "Eremophila alpestris",            group: "lark",        img: "images/shorelark.jpg",                 fact: "A winter visitor to coasts, with striking black-and-yellow face markings." },
    { name: "Water Pipit",               latin: "Anthus spinoletta",               group: "pipit",       img: "images/waterpipit.jpg",                fact: "It moves to lowland watercress beds and marshes in winter from its mountain breeding grounds." },
    { name: "Richard's Pipit",           latin: "Anthus richardi",                 group: "pipit",       img: "images/richardspipit.jpg",             fact: "A large pipit and a scarce autumn visitor from Asia." },
    { name: "Yellow-browed Warbler",     latin: "Phylloscopus inornatus",          group: "warbler",     img: "images/yellowbrowedwarbler.jpg",       fact: "Tiny and once rare, growing numbers now reach Britain each autumn from Siberia." },
    { name: "Pallas's Warbler",          latin: "Phylloscopus proregulus",         group: "warbler",     img: "images/pallasswarbler.jpg",            fact: "A jewel of a warbler with bold stripes, sometimes called the 'seven-striped sprite'." },
    { name: "Barred Warbler",            latin: "Curruca nisoria",                 group: "warbler",     img: "images/barredwarbler.jpg",             fact: "A robust warbler and scarce autumn visitor, usually seen as a plain young bird." },
    { name: "Icterine Warbler",          latin: "Hippolais icterina",              group: "warbler",     img: "images/icterinewarbler.jpg",           fact: "A passage migrant with a long bill and a fast, chattering song." },
    { name: "Marsh Warbler",             latin: "Acrocephalus palustris",          group: "warbler",     img: "images/marshwarbler.jpg",              fact: "A brilliant mimic, it weaves imitations of dozens of other birds into its song." },
    { name: "Savi's Warbler",            latin: "Locustella luscinioides",         group: "warbler",     img: "images/saviswarbler.jpg",              fact: "Its reeling song resembles the grasshopper warbler's but is lower and buzzier." },
    { name: "Red-backed Shrike",         latin: "Lanius collurio",                 group: "shrike",      img: "images/redbackedshrike.jpg",           fact: "It impales insects and small prey on thorns to store them, earning the name 'butcher bird'." },
    { name: "Great Grey Shrike",         latin: "Lanius excubitor",                group: "shrike",      img: "images/greatgreyshrike.jpg",           fact: "A winter visitor that hunts from prominent perches over open ground." },
    { name: "Golden Oriole",             latin: "Oriolus oriolus",                 group: "exotic",      img: "images/goldenoriole.jpg",              fact: "Brilliant yellow but hard to see, it stays hidden in the leafy tops of tall trees." },
    { name: "Serin",                     latin: "Serinus serinus",                 group: "finch",       img: "images/serin.jpg",                     fact: "A tiny streaky finch with a fast, jangling song, common in Europe but rare in Britain." },
    { name: "Common Rosefinch",          latin: "Carpodacus erythrinus",           group: "finch",       img: "images/commonrosefinch.jpg",           fact: "The breeding male is washed with rosy-red; most British records are of plain young birds." },
    { name: "Ortolan Bunting",           latin: "Emberiza hortulana",              group: "bunting",     img: "images/ortolanbunting.jpg",            fact: "A scarce migrant, long notorious as a delicacy in parts of Europe." },
    { name: "Lapland Bunting",           latin: "Calcarius lapponicus",            group: "bunting",     img: "images/laplandbunting.jpg",            fact: "A winter visitor to coastal fields, breeding in the high Arctic." },
    { name: "Little Bunting",            latin: "Emberiza pusilla",                group: "bunting",     img: "images/littlebunting.jpg",             fact: "A small, neatly marked bunting and a scarce visitor from the east." },
    { name: "Red-throated Diver",        latin: "Gavia stellata",                  group: "diver",       img: "images/redthroateddiver.jpg",          fact: "The smallest diver, it can take off from water more easily than its larger relatives." },
    { name: "Black-throated Diver",      latin: "Gavia arctica",                   group: "diver",       img: "images/blackthroateddiver.jpg",        fact: "An elegant diver of northern lochs, sleek and striking in summer plumage." },
    { name: "Great Northern Diver",      latin: "Gavia immer",                     group: "diver",       img: "images/greatnortherndiver.jpg",        fact: "A large, powerful diver that visits British coasts in winter." },
    { name: "Garganey",                  latin: "Spatula querquedula",             group: "waterfowl",   img: "images/garganey.jpg",                  fact: "A small duck and one of the few that leaves Britain to winter in Africa." },
    { name: "Smew",                      latin: "Mergellus albellus",              group: "waterfowl",   img: "images/smew.jpg",                      fact: "The male is a striking white with fine black markings, like cracked ice." },
    { name: "Scaup",                     latin: "Aythya marila",                   group: "waterfowl",   img: "images/scaup.jpg",                     fact: "A diving duck of the coast in winter, the male resembles a tufted duck without the tuft." },
    { name: "Velvet Scoter",             latin: "Melanitta fusca",                 group: "waterfowl",   img: "images/velvetscoter.jpg",              fact: "A sea duck told from the common scoter by a white wing patch shown in flight." },
    { name: "Ruddy Duck",                latin: "Oxyura jamaicensis",              group: "waterfowl",   img: "images/ruddyduck.jpg",                 fact: "Introduced from North America, the male has a bright blue bill in the breeding season." },
    { name: "Honey Buzzard",             latin: "Pernis apivorus",                 group: "raptor",      img: "images/honeybuzzard.jpg",              fact: "Despite its name it feeds largely on the grubs of wasps and bees." },
    { name: "Montagu's Harrier",         latin: "Circus pygargus",                 group: "raptor",      img: "images/montagusharrier.jpg",           fact: "Britain's rarest breeding bird of prey, slimmer and more graceful than the marsh harrier." },
    { name: "Rough-legged Buzzard",      latin: "Buteo lagopus",                   group: "raptor",      img: "images/roughleggedbuzzard.jpg",        fact: "A winter visitor from the north, it hovers more than the common buzzard." },
    { name: "Sabine's Gull",             latin: "Xema sabini",                     group: "gull",        img: "images/sabinesgull.jpg",               fact: "A small, beautiful gull with a bold triangular wing pattern, seen mostly during sea storms." },
    { name: "Iceland Gull",              latin: "Larus glaucoides",                group: "gull",        img: "images/icelandgull.jpg",               fact: "A pale 'white-winged' gull from the Arctic, lacking black in the wingtips." },
    { name: "Glaucous Gull",             latin: "Larus hyperboreus",               group: "gull",        img: "images/glaucousgull.jpg",              fact: "A large, pale gull from the high Arctic, bulkier than the similar Iceland gull." },
    { name: "Yellow-legged Gull",        latin: "Larus michahellis",               group: "gull",        img: "images/yellowleggedgull.jpg",          fact: "Similar to the herring gull but with bright yellow legs, increasingly seen in Britain." },
    { name: "Roseate Tern",              latin: "Sterna dougallii",                group: "tern",        img: "images/roseatetern.jpg",               fact: "One of Britain's rarest seabirds, with a pale pinkish flush to the breast in summer." },
    { name: "Black Tern",                latin: "Chlidonias niger",                group: "tern",        img: "images/blacktern.jpg",                 fact: "A marsh tern that dips to pick food from the surface rather than plunge-diving." },
    { name: "Pomarine Skua",             latin: "Stercorarius pomarinus",          group: "seabird",     img: "images/pomarineskua.jpg",              fact: "A robust skua whose adults have distinctive twisted central tail feathers." }
];


// ── GAME CONSTANTS ────────────────────────────────────────────────────────────

const ROUND_LIMIT = 20;
const HINT_LIMIT  = 10;
const STATS_KEY   = "anniesBirdStats_v1";   // unchanged: carries over existing data


// ── GAME STATE ────────────────────────────────────────────────────────────────

let gameDeck          = [];
let currentBird       = null;
let score             = 0;
let roundCount        = 0;
let passedBirds       = [];
let hintedBirds       = [];
let hintUsedThisRound = false;
let hintsRemaining    = HINT_LIMIT;
let roundOutcomes     = [];


// ── PERSISTENT STATS ──────────────────────────────────────────────────────────
//  Schema: { [birdName]: { seen: N, correct: N } }
//  'correct' increments only on unaided correct answers.

function loadStats() {
    try {
        const raw = localStorage.getItem(STATS_KEY);
        return raw ? JSON.parse(raw) : {};
    } catch (e) { return {}; }
}

function saveStats(stats) {
    try { localStorage.setItem(STATS_KEY, JSON.stringify(stats)); }
    catch (e) {}
}

function recordResult(birdName, correct) {
    const stats = loadStats();
    if (!stats[birdName]) stats[birdName] = { seen: 0, correct: 0 };
    stats[birdName].seen += 1;
    if (correct) stats[birdName].correct += 1;
    saveStats(stats);
}

// Unseen: weight 6. Seen: weight 1 (mastered) to 5 (never correct).
function birdWeight(bird, stats) {
    const s = stats[bird.name];
    if (!s || s.seen === 0) return 6;
    const accuracy = s.correct / s.seen;
    return 1 + Math.round((1 - accuracy) * 4);
}

// Weighted draw without replacement.
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
        pool.splice(idx, 1);
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


// ── UI HELPERS ────────────────────────────────────────────────────────────────

function setControlsState(enabled) {
    document.getElementById('submit-btn').disabled  = !enabled;
    document.getElementById('pass-btn').disabled    = !enabled;
    document.getElementById('guess-input').disabled = !enabled;
    document.getElementById('hint-btn').disabled    = !enabled || hintsRemaining <= 0;
}

function updateHintDisplay() {
    const btn = document.getElementById('hint-btn');
    if (!btn) return;
    btn.textContent = 'HINT? (' + hintsRemaining + ')';
    if (hintsRemaining <= 0) btn.disabled = true;
}

function buildProgressBar() {
    const bar = document.getElementById('progress-bar');
    if (!bar) return;
    bar.innerHTML = '';
    for (let i = 0; i < ROUND_LIMIT; i++) {
        const seg = document.createElement('div');
        seg.className = 'seg';
        bar.appendChild(seg);
    }
}

function markProgress(index, outcome) {
    const segs = document.querySelectorAll('#progress-bar .seg');
    if (segs[index]) segs[index].classList.add(outcome);
}


// ── GAME INIT ─────────────────────────────────────────────────────────────────

function restartGame() {
    document.getElementById('summary-view').style.display   = 'none';
    document.getElementById('passed-section').style.display = 'none';
    document.getElementById('hinted-section').style.display = 'none';

    gameDeck = weightedDeal(Math.min(ROUND_LIMIT, masterBirdList.length));
    shuffle(gameDeck);

    score             = 0;
    roundCount        = 0;
    passedBirds       = [];
    hintedBirds       = [];
    hintsRemaining    = HINT_LIMIT;
    roundOutcomes     = [];
    hintUsedThisRound = false;

    document.getElementById('score-display').textContent = 'Score: 0';
    buildProgressBar();
    updateHintDisplay();
    loadNextBird();
}


// ── LOAD BIRD ─────────────────────────────────────────────────────────────────

function loadNextBird() {
    if (gameDeck.length === 0) { endGame(); return; }

    currentBird       = gameDeck.pop();
    roundCount++;
    hintUsedThisRound = false;

    // Switch bottom panel to guessing state
    document.getElementById('result-zone').style.display  = 'none';
    document.getElementById('guess-zone').style.display   = 'flex';
    document.getElementById('guess-input').style.display  = '';
    document.getElementById('hint-options').style.display = 'none';
    document.getElementById('hint-options').innerHTML     = '';
    document.getElementById('result-message').textContent = '';
    document.getElementById('result-message').className   = '';
    document.getElementById('bird-fact').textContent      = '';

    setControlsState(true);
    updateHintDisplay();

    document.getElementById('count-display').textContent =
        'Bird: ' + roundCount + '/' + ROUND_LIMIT;

    const img = document.getElementById('bird-image');
    img.src   = currentBird.img;
    img.onerror = function () {
        this.src = '';
        this.alt = 'Image not found for ' + currentBird.name;
    };

    const input = document.getElementById('guess-input');
    input.value = '';
    input.focus();
}


// ── FUZZY MATCHING ────────────────────────────────────────────────────────────

function getEditDistance(a, b) {
    if (a.length === 0) return b.length;
    if (b.length === 0) return a.length;
    const matrix = [];
    for (let i = 0; i <= b.length; i++) matrix[i] = [i];
    for (let j = 0; j <= a.length; j++) matrix[0][j] = j;
    for (let i = 1; i <= b.length; i++) {
        for (let j = 1; j <= a.length; j++) {
            matrix[i][j] = b[i - 1] === a[j - 1]
                ? matrix[i - 1][j - 1]
                : Math.min(matrix[i - 1][j - 1] + 1, matrix[i][j - 1] + 1, matrix[i - 1][j] + 1);
        }
    }
    return matrix[b.length][a.length];
}

function isMatch(userGuess, correctAnswer) {
    const g = userGuess.trim().toLowerCase();
    const c = correctAnswer.toLowerCase();
    if (g === c) return true;
    if (c.includes(g) && g.length > c.length * 0.6) return true;
    const tolerance = c.length > 6 ? 2 : 1;
    return getEditDistance(g, c) <= tolerance;
}


// ── CHECK GUESS ───────────────────────────────────────────────────────────────

function checkGuess() {
    setControlsState(false);

    const userGuess = document.getElementById('guess-input').value;
    if (!userGuess.trim()) {
        setControlsState(true);
        document.getElementById('guess-input').focus();
        return;
    }

    const correct = isMatch(userGuess, currentBird.name);

    if (correct) {
        score++;
        document.getElementById('score-display').textContent = 'Score: ' + score;
        lockHintButtons();
        // Stats: only count as 'correct' if no hint was open
        recordResult(currentBird.name, !hintUsedThisRound);
        endRound(hintUsedThisRound ? 'hinted' : 'correct');

    } else if (hintUsedThisRound) {
        // One-chance rule: wrong answer after hint is opened ends the round
        lockHintButtons();
        recordResult(currentBird.name, false);
        endRound('wrong');

    } else {
        // Wrong with no hint open: let her try again
        document.getElementById('guess-input').value       = '';
        document.getElementById('guess-input').placeholder = 'TRY AGAIN...';
        setControlsState(true);
        document.getElementById('guess-input').focus();
        setTimeout(function () {
            document.getElementById('guess-input').placeholder = 'TYPE BIRD NAME...';
        }, 1400);
    }
}


// ── HINT SYSTEM ───────────────────────────────────────────────────────────────

function showHint() {
    if (hintUsedThisRound || hintsRemaining <= 0) return;

    hintUsedThisRound = true;
    hintsRemaining--;
    hintedBirds.push(currentBird.name);
    updateHintDisplay();

    // Build decoys from the same group, topping up from elsewhere if needed
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

    const options = shuffle([currentBird, ...decoys]);

    const container = document.getElementById('hint-options');
    container.innerHTML = '';
    options.forEach(function (opt) {
        const btn         = document.createElement('button');
        btn.className     = 'hint-option';
        btn.textContent   = opt.name;
        btn.onclick       = function () {
            // Route the click through checkGuess via the text input
            document.getElementById('guess-input').value = opt.name;
            checkGuess();
        };
        container.appendChild(btn);
    });

    // Hide the text input; show the multiple-choice options
    document.getElementById('guess-input').style.display  = 'none';
    document.getElementById('hint-options').style.display = 'flex';
}

function lockHintButtons() {
    document.querySelectorAll('#hint-options .hint-option').forEach(function (b) {
        b.disabled = true;
    });
}


// ── PASS ──────────────────────────────────────────────────────────────────────

function passBird() {
    setControlsState(false);
    passedBirds.push(currentBird.name);
    recordResult(currentBird.name, false);
    endRound('passed');
}


// ── END ROUND ─────────────────────────────────────────────────────────────────
//  outcome: 'correct' | 'hinted' | 'wrong' | 'passed'

function endRound(outcome) {
    roundOutcomes.push(outcome);
    markProgress(roundCount - 1, outcome);

    // Result message text and colour class
    const labels = {
        correct : '✓ ' + currentBird.name.toUpperCase(),
        hinted  : '✓ ' + currentBird.name.toUpperCase() + '  (HINTED)',
        wrong   : '✗ ' + currentBird.name.toUpperCase(),
        passed  : '— ' + currentBird.name.toUpperCase()
    };
    const rm       = document.getElementById('result-message');
    rm.textContent = labels[outcome];
    rm.className   = (outcome === 'correct' || outcome === 'hinted') ? 'correct'
                   : outcome === 'passed' ? 'passed'
                   : 'wrong';

    // Fact
    document.getElementById('bird-fact').textContent = currentBird.fact || '';

    // Switch bottom panel to result state
    document.getElementById('guess-zone').style.display  = 'none';
    document.getElementById('result-zone').style.display = 'flex';
}


// ── NEXT BIRD ─────────────────────────────────────────────────────────────────

function nextBird() {
    if (gameDeck.length === 0) {
        endGame();
    } else {
        loadNextBird();
    }
}


// ── END GAME ──────────────────────────────────────────────────────────────────

function endGame() {
    const titleEl = document.getElementById('final-score-title');

    if (score === ROUND_LIMIT && hintedBirds.length === 0) {
        titleEl.textContent  = 'PERFECT SCORE! YOU ARE A BIRD GENIUS!';
        titleEl.style.color  = '#d4af37';
        titleEl.style.fontSize = '1.4rem';
        startConfetti();
    } else {
        titleEl.textContent  = 'GAME OVER! FINAL SCORE: ' + score + '/' + ROUND_LIMIT;
        titleEl.style.color  = '#e0ece0';
        titleEl.style.fontSize = '1.1rem';
    }

    // Mastery line
    const stats = loadStats();
    let mastered = 0;
    let seen = 0;
    Object.keys(stats).forEach(function (name) {
        seen++;
        if (stats[name].correct > 0) mastered++;
    });
    const masteryEl = document.getElementById('mastery-line');
    if (masteryEl) {
        masteryEl.textContent =
            'Birds mastered: ' + mastered + ' of ' + masterBirdList.length +
            '  (seen ' + seen + ')';
    }

    // Passed list
    const passedSection = document.getElementById('passed-section');
    const passedList    = document.getElementById('passed-list');
    passedList.innerHTML = '';
    if (passedBirds.length > 0) {
        passedBirds.forEach(function (name) {
            const li = document.createElement('li');
            li.textContent = name;
            passedList.appendChild(li);
        });
        passedSection.style.display = 'block';
    } else {
        passedSection.style.display = 'none';
    }

    // Hinted list
    const hintedSection = document.getElementById('hinted-section');
    const hintedList    = document.getElementById('hinted-list');
    hintedList.innerHTML = '';
    if (hintedBirds.length > 0) {
        hintedBirds.forEach(function (name) {
            const li = document.createElement('li');
            li.textContent = name;
            hintedList.appendChild(li);
        });
        hintedSection.style.display = 'block';
    } else {
        hintedSection.style.display = 'none';
    }

    document.getElementById('summary-view').style.display = 'flex';
}


// ── CONFETTI ──────────────────────────────────────────────────────────────────

function startConfetti() {
    const colors = ['#e74c3c', '#f2d705', '#27ae60', '#3498db', '#9b59b6'];
    for (let i = 0; i < 100; i++) {
        const el = document.createElement('div');
        el.classList.add('confetti');
        el.style.left            = Math.random() * 100 + 'vw';
        el.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
        el.style.animation       = 'fall ' + (Math.random() * 3 + 2) + 's linear forwards';
        document.body.appendChild(el);
        setTimeout(function () { el.remove(); }, 5000);
    }
}


// ── VIEWPORT LOCK ─────────────────────────────────────────────────────────────
//  When the soft keyboard opens, visualViewport.height shrinks to the area
//  above the keyboard and visualViewport.offsetTop shifts if the page scrolled.
//  Setting both top and height keeps the container locked in place.
//  The 'scroll' event is also needed on iOS where the viewport can shift.

if (window.visualViewport) {
    function onViewportChange() {
        var vv = window.visualViewport;
        var el = document.getElementById('game-container');
        el.style.top    = vv.offsetTop + 'px';
        el.style.height = vv.height + 'px';
    }
    window.visualViewport.addEventListener('resize', onViewportChange);
    window.visualViewport.addEventListener('scroll', onViewportChange);
}


// ── ENTRY POINT ───────────────────────────────────────────────────────────────

document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('guess-input').addEventListener('keydown', function (e) {
        if (e.key !== 'Enter') return;
        // If result is showing, Enter advances to next bird
        if (document.getElementById('result-zone').style.display === 'flex') {
            nextBird();
        } else {
            checkGuess();
        }
    });

    restartGame();
});