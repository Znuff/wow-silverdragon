-- DO NOT EDIT THIS FILE; run dataminer.lua to regenerate.
local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Data_BattleForAzeroth")

function module:OnInitialize()
	core:RegisterMobData("BattleForAzeroth", {
		[120899] = {name="Kul'krazahn",locations={[862]={59605640},},quest=48333,},
		[121242] = {name="Glompmaw",locations={[863]={68405700},},quest=50361,},
		[122004] = {name="Umbra'jin",locations={[862]={71203240},},},
		[122639] = {name="Old R'gal",faction="Horde",locations={[862]={57804880},},quest=50856,},
		[124185] = {name="Golrakahn",locations={[862]={74002820},},quest=47792,},
		[124375] = {name="Overstuffed Saurolisk",locations={[863]={62006500},},quest=47827,},
		[124397] = {name="Kal'draxa",locations={[863]={52901340},},quest=47843,},
		[124399] = {name="Infected Direhorn",locations={[863]={24407800},},quest=47877,},
		[124475] = {name="Shambling Ambusher",locations={[863]={29205540},},quest=47878,},
		[124548] = {name="Betsy",locations={[896]={58403340},},quest=47884,},
		[124722] = {name="Commodore Calhoun",locations={[864]={42609220},},quest=51098,},
		[125214] = {name="Krubbs",locations={[863]={75803600},},quest=48052,},
		[125232] = {name="Captain Mu'kala",locations={[863]={81803040},},quest=48057,vignette=2029,},
		[125250] = {name="Ancient Jawbreaker",locations={[863]={67402940},},quest=48063,},
		[125453] = {name="Quillrat Matriarch",locations={[896]={66404240},},quest=48178,},
		[126056] = {name="Totem Maker Jash'ga",locations={[863]={49403740},},quest=48406,},
		[126142] = {name="Bajiatha",locations={[863]={42006060},},quest=48439,},
		[126187] = {name="Corpse Bringer Yal'kar",locations={[863]={41205340},},quest=48462,},
		[126460] = {name="Tainted Guardian",locations={[863]={31403820},},quest=48508,},
		[126621] = {name="Bonesquall",locations={[896]={66405080},},quest=48978,},
		[126635] = {name="Blood Priest Xak'lar",locations={[863]={43069033},},quest=48541,},
		[126637] = {name="Kandak",locations={[862]={68604820},},quest=48543,},
		[126907] = {name="Wardrummer Zurula",locations={[863]={49005080},},quest=48623,},
		[126926] = {name="Venomjaw",locations={[863]={29205040},},quest=48626,},
		[127001] = {name="Gwugnug the Cursed",locations={[863]={33408700},},quest=48638,},
		[127129] = {name="Grozgore",locations={[896]={50802020},},quest=49388,},
		[127289] = {name="Saurolisk Tamer Mugg",locations={[895]={58801540},},quest=48806,},
		[127290] = {name="Mugg",locations={[895]={58401480},},quest=48806,},
		[127333] = {name="Barbthorn Queen",locations={[896]={59001700},},quest=48842,},
		[127651] = {name="Vicemaul",locations={[896]={72806040},},quest=48928,},
		[127776] = {name="Scaleclaw Broodmother",locations={[864]={44208060},},quest=51107,},
		[127820] = {name="Scout Skrasniss",locations={[863]={59003900},},quest=48972,},
		[127844] = {name="Gluttonous Yeti",locations={[896]={63006940},},quest=48979,},
		[127873] = {name="Scrounger Patriarch",locations={[863]={58200900},},quest=48980,},
		[127877] = {name="Longfang",locations={[896]={59205540},},quest=48981,vignette=2311,},
		[127901] = {name="Henry Breakwater",locations={[896]={59205540},},quest=48981,vignette=2311,},
		[127939] = {name="Torraske the Eternal",locations={[862]={46406520},},quest=49004,},
		[128426] = {name="Gutrip",locations={[863]={32404340},},quest=49231,},
		[128497] = {name="Bajiani the Slick",locations={[864]={31008080},},quest=51117,},
		[128553] = {name="Azer'tor",locations={[864]={48808900},},quest=51096,},
		[128578] = {name="Zujothgul",locations={[863]={39454969},},quest=50460,},
		[128584] = {name="Vugthuth",locations={[863]={46803340},},},
		[128610] = {name="Maw of Shul-Nagruth",locations={[863]={49806700},},},
		[128674] = {name="Gut-Gut the Glutton",locations={[864]={64004760},},quest=49270,},
		[128686] = {name="Kamid the Trapper",locations={[864]={35205140},},quest=50528,},
		[128699] = {name="Bloodbulge",locations={[862]={59601820},},quest=49267,},
		[128707] = {name="Rimestone",locations={[896]={59607140},},quest=49269,},
		[128930] = {name="Rohnkor",locations={[863]={52405340},},quest=50040,vignette=2529,},
		[128935] = {name="Mala'kili",locations={[863]={52405340},},quest=50040,vignette=2529,},
		[128951] = {name="Nez'ara",locations={[864]={43808640},},},
		[128965] = {name="Uroku the Bound",locations={[863]={44004840},},quest=49305,},
		[128973] = {name="Whargarble the Ill-Tempered",locations={[896]={64802140},},quest=49311,},
		[128974] = {name="Queen Tzxi'kik",locations={[863]={57406780},},quest=49312,},
		[129005] = {name="King Kooba",locations={[863]={53204280},},quest=49317,},
		[129027] = {name="Golanar",locations={[864]={57000620},},notes="World Quest",},
		[129180] = {name="Warbringer Hozzik",locations={[864]={37004620},},quest=49373,},
		[129181] = {name="Barman Bill",locations={[895]={76008360},},quest=50233,},
		[129283] = {name="Jumbo Sandsnapper",locations={[864]={37408440},},},
		[129343] = {name="Avatar of Xolotal",locations={[862]={49805740},},quest=49410,},
		[129411] = {name="Zunashi the Exile",locations={[864]={44005380},},},
		[129476] = {name="Bloated Krolusk",locations={[864]={48805060},},quest=47562,},
		[129657] = {name="Za'amar the Queen's Blade",locations={[863]={38802700},},quest=49469,},
		[129803] = {name="Whiplash",locations={[942]={47206540},},quest=52296,},
		[129805] = {name="Beshol",locations={[896]={50203020},},quest=49481,},
		[129835] = {name="Gorehorn",locations={[896]={56604380},},quest=49480,},
		[129836] = {name="Spelltwister Moephus",locations={[942]={55206140},},},
		[129904] = {name="Cottontail Matron",locations={[896]={52004700},},quest=49216,vignette=2332,},
		[129950] = {name="Talon",locations={[896]={31804100},},quest=49528,},
		[129954] = {name="Gahz'ralka",locations={[862]={64003300},},quest=50439,},
		[129961] = {name="Atal'zul Gotaka",locations={[862]={80802140},},quest=50280,},
		[129995] = {name="Emily Mayville",locations={[896]={63404020},},quest=49530,},
		[130079] = {name="Wagga Snarltusk",locations={[942]={42407500},},quest=50819,},
		[130138] = {name="Nevermore",locations={[896]={60004540},},quest=49601,},
		[130143] = {name="Balethorn",locations={[896]={55402740},},quest=49602,},
		[130401] = {name="Vathikur",locations={[864]={57207340},},quest=49674,},
		[130439] = {name="Ashmane",locations={[864]={54701530},},quest=47532,},
		[130443] = {name="Hivemother Kraxi",locations={[864]={53605340},},quest=47533,},
		[130508] = {name="Broodmother Razora",locations={[895]={83204440},},quest=49999,},
		[130643] = {name="Twisted Child of Rezan",locations={[862]={76602740},},notes="World Quest",},
		[130897] = {name="Captain Razorspine",locations={[942]={47206580},},quest=50170,},
		[131233] = {name="Lei-zhi",locations={[862]={58807420},},quest=49911,},
		[131252] = {name="Merianae",locations={[895]={43201680},},quest=49921,},
		[131262] = {name="Pack Leader Asenya",locations={[895]={39001520},},quest=49923,},
		[131389] = {name="Teres",locations={[895]={63805040},},quest=49942,},
		[131404] = {name="Foreman Scripps",locations={[942]={64206540},},quest=49951,},
		[131476] = {name="Zayoos",locations={[862]={48205420},},quest=49972,},
		[131520] = {name="Kulett the Ornery",locations={[895]={48002220},},quest=49984,},
		[131687] = {name="Tambano",locations={[862]={77401120},},quest=50013,},
		[131704] = {name="Coati",locations={[862]={62801400},},quest=50661,},
		[131718] = {name="Bramblewing",locations={[862]={66403240},},quest=50034,},
		[131735] = {name="Idej the Wise",locations={[896]={65008320},},},
		[131984] = {name="Twin-hearted Construct",locations={[895]={70201260},},quest=50073,},
		[132007] = {name="Galestorm",locations={[942]={71205420},},quest=50075,},
		[132047] = {name="Reinforced Hullbreaker",locations={[942]={69005140},},},
		[132052] = {name="Vol'Jim",locations={[895]={51003200,54802620,65401260},},hidden=true,},
		[132068] = {name="Bashmu",locations={[895]={34203060},},quest=50094,},
		[132076] = {name="Totes",locations={[895]={46402020},},quest=50095,},
		[132086] = {name="Black-Eyed Bart",locations={[895]={56407000},},quest=50096,},
		[132088] = {name="Captain Wintersail",locations={[895]={38402080},},quest=50097,vignette=2542,},
		[132127] = {name="Foxhollow Skyterror",locations={[895]={60002260},},quest=50137,},
		[132179] = {name="Raging Swell",locations={[895]={64405880},},quest=50148,},
		[132182] = {name="Auditor Dolp",locations={[895]={75007880},},quest=50156,},
		[132211] = {name="Fowlmouth",locations={[895]={90007700},},quest=50155,},
		[132244] = {name="Kiboku",locations={[862]={75403580},},quest=50159,},
		[132253] = {name="Ji'arak",locations={[862]={69603400},},notes="World Boss",},
		[132280] = {name="Squacks",locations={[895]={80808260},},quest=50160,},
		[132319] = {name="Bilefang Mother",locations={[896]={35203300},},quest=50163,},
		[132701] = {name="T'zane",locations={[863]={35403300},},},
		[133155] = {name="G'Naat",locations={[862]={80003600},},quest=50260,},
		[133163] = {name="Tia'Kawan",locations={[862]={63602380},},notes="World Quest",quest=50263,},
		[133190] = {name="Daggerjaw",locations={[862]={74203940},},quest=50269,},
		[133356] = {name="Tempestria",locations={[895]={60801740},},quest=50301,vignette=2591,},
		[133373] = {name="Jax'teb the Reanimated",locations={[863]={45205180},},quest=50307,},
		[133527] = {name="Juba the Scarred",locations={[863]={27403420},},quest=50342,},
		[133531] = {name="Xu'ba",locations={[863]={36605060},},quest=50348,},
		[133539] = {name="Lo'kuno",locations={[863]={77404440},},quest=50355,},
		[133812] = {name="Zanxib",locations={[863]={38407140},},quest=50423,},
		[133842] = {name="Warcrawler Karkithiss",locations={[862]={44002540},},quest=50438,},
		[133843] = {name="First Mate Swainbeak",locations={[864]={41202420},},quest=51073,vignette=2889,},
		[134002] = {name="Underlord Xerxiz",locations={[863]={55205740},},quest=50480,},
		[134048] = {name="Vukuba",locations={[862]={62004620},},quest=50508,vignette=2650,},
		[134106] = {name="Lumbergrasp Sentinel",locations={[895]={67401960},},quest=50525,},
		[134147] = {name="Beehemoth",locations={[942]={66207440},},quest=50541,},
		[134213] = {name="Executioner Blackwell",locations={[896]={30801860},},quest=50546,},
		[134293] = {name="Azerite-Infused Slag",locations={[863]={33202700},},quest=50563,},
		[134294] = {name="Enraged Water Elemental",locations={[863]={81406080},},quest=50565,vignette=2659,},
		[134296] = {name="Lucille",locations={[863]={68001980},},quest=50567,vignette=2660,},
		[134298] = {name="Azerite-Infused Elemental",locations={[863]={54008100},},quest=50569,},
		[134571] = {name="Skycaller Teskris",locations={[864]={47002540},},},
		[134625] = {name="Warmother Captive",locations={[864]={50803100},},quest=50658,},
		[134637] = {name="Headhunter Lee'za",locations={[862]={63001400},},quest=50661,},
		[134638] = {name="Warlord Zothix",locations={[864]={30005240},},},
		[134643] = {name="Brgl-Lrgl the Basher",locations={[864]={30004620},},notes="World Quest",},
		[134694] = {name="Mor'fani the Exile",locations={[864]={37408820},},},
		[134706] = {name="Deathcap",locations={[896]={18606040},},quest=50669,},
		[134717] = {name="Umbra'rix",locations={[862]={49002920},},notes="World Quest",quest=50673,},
		[134738] = {name="Hakbi the Risen",locations={[862]={42003620},},quest=50677,},
		[134745] = {name="Skycarver Krakit",locations={[864]={51403620},},},
		[134754] = {name="Hyo'gi",locations={[896]={23004940},},quest=50688,},
		[134760] = {name="Darkspeaker Jo'la",locations={[862]={65201020},},quest=50693,},
		[134782] = {name="Murderbeak",locations={[862]={60606620},},quest=50281,},
		[134884] = {name="Ragna",locations={[942]={41207320},},quest=50725,},
		[134897] = {name="Dagrus the Scorned",locations={[942]={67404040},},quest=50731,},
		[135565] = {name="Guardian of Agussu",locations={[863]={38105770},},quest=50888,vignette=2788,},
		[135796] = {name="Captain Leadfist",locations={[896]={26601460},},quest=50939,},
		[135852] = {name="Ak'tar",locations={[864]={50208180},},quest=51105,},
		[135939] = {name="Vinespeaker Ratha",locations={[942]={49806820},},quest=50037,},
		[135947] = {name="Strange Mushroom Ring",locations={[942]={53106910},},quest=50024,},
		[136183] = {name="Crushtacean",locations={[942]={51405540},},quest=52466,},
		[136189] = {name="The Lichen King",locations={[942]={51807940},},quest=50974,},
		[136304] = {name="Songstress Nahjeen",locations={[864]={66802440},},},
		[136323] = {name="Fangcaller Xorreth",locations={[864]={53603480},},notes="World Quest",quest=51156,},
		[136335] = {name="Enraged Krolusk",locations={[864]={61803740},},quest=51077,},
		[136336] = {name="Scorpox",locations={[864]={32806520},},quest=51076,},
		[136338] = {name="Sirokar",locations={[864]={24606840},},quest=51075,},
		[136340] = {name="Relic Hunter Hazaak",locations={[864]={48807180},},},
		[136341] = {name="Jungleweb Hunter",locations={[864]={60401740},},quest=51074,},
		[136346] = {name="Captain Stef \"Marrow\" Quin",locations={[864]={41202420},},quest=51073,vignette=2889,},
		[136385] = {name="Azurethos",locations={[895]={61402440},},},
		[136393] = {name="Bloodwing Bonepicker",locations={[864]={56005340},},quest=51079,},
		[136413] = {name="Syrawon the Dominus",locations={[862]={53404460},},quest=51080,},
		[136428] = {name="Dark Chronicler",locations={[862]={44007640},},quest=51083,},
		[137025] = {name="Broodmother",locations={[942]={29206940},},quest=33843,},
		[137183] = {name="Honey-Coated Slitherer",locations={[895]={64201940},},quest=51321,vignette=2942,},
		[137529] = {name="Arvon the Betrayed",locations={[896]={35206900},},quest=51383,},
		[137553] = {name="General Krathax",locations={[864]={60606260},},notes="World Quest",},
		[137649] = {name="Pest Remover Mk. II",locations={[942]={36003740,40404520,43205120},},},
		[137665] = {name="Soul Goliath",locations={[896]={20405700,23404940,26405440},},quest=52002,},
		[137681] = {name="King Clickyclack",locations={[864]={38204120},},},
		[137704] = {name="Matron Morana",locations={[896]={34802000},},quest=52000,},
		[137708] = {name="Stone Golem",locations={[896]={49804340},},},
		[137824] = {name="Arclight",locations={[896]={29206880},},quest=51470,},
		[137825] = {name="Avalanche",locations={[896]={43808820},},quest=37410,},
		[137906] = {name="Infused Bedrock",locations={[81]={44403460,48805140},},phase=962,},
		[137983] = {name="Rear Admiral Hainsworth",locations={[895]={65003520},},},
		[138039] = {name="Dark Ranger Clea",locations={[895]={65003520},},},
		[138244] = {name="Briarwood Bulwark",locations={[896]={41203800},},},
		[138279] = {name="Adhara White",locations={[895]={85204340},},quest=54953,},
		[138288] = {name="Ghost of the Deep",locations={[895]={69404700},},quest=51611,},
		[138299] = {name="Bloodmaw",locations={[895]={58803300},},},
		[138618] = {name="Haywire Golem",locations={[896]={23603060},},quest=51698,},
		[138667] = {name="Blighted Monstrosity",locations={[896]={35801120},},quest=52001,},
		[138675] = {name="Gorged Boar",locations={[896]={28002580},},quest=51700,},
		[138794] = {name="Dunegorger Kraulok",locations={[864]={44005540},[894]={44005580},},quest=52196,},
		[138863] = {name="Sister Martha",locations={[896]={33005700},},quest=51748,},
		[138866] = {name="Mack",locations={[896]={24402200},},quest=51749,vignette=2979,},
		[138870] = {name="Mick",locations={[896]={24402200},},quest=51749,vignette=2979,},
		[138871] = {name="Ernie",locations={[896]={24202180},},quest=51749,vignette=2979,},
		[138938] = {name="Seabreaker Skoloth",locations={[942]={33203740},},quest=51757,},
		[138963] = {name="Nestmother Acada",locations={[942]={43204500},},quest=51762,},
		[139135] = {name="Squirgle of the Depths",locations={[895]={48803700},},quest=51807,},
		[139145] = {name="Blackthorne",locations={[895]={85207340},},quest=51808,},
		[139152] = {name="Carla Smirk",locations={[895]={72408100},},quest=51809,},
		[139205] = {name="P4-N73R4",locations={[895]={65206460},},quest=51833,},
		[139233] = {name="Gulliver",locations={[895]={57405580},},quest=53373,},
		[139235] = {name="Tort Jaw",locations={[895]={70005540},},quest=51835,},
		[139278] = {name="Ranja",locations={[895]={68206340},},quest=51872,},
		[139280] = {name="Sythian the Swift",locations={[895]={65401300},},quest=51873,},
		[139285] = {name="Shiverscale the Toxic",locations={[895]={55003240},},quest=51876,},
		[139287] = {name="Sawtooth",locations={[895]={75803060},[1161]={80884747},},quest=51877,},
		[139289] = {name="Tentulos the Drifter",locations={[895]={55205140},},quest=51879,},
		[139290] = {name="Maison the Portable",locations={[895]={58205020},},quest=51880,},
		[139298] = {name="Pinku'shon",locations={[942]={38205100},},quest=51959,},
		[139319] = {name="Slickspill",locations={[942]={41602860},},quest=51958,},
		[139321] = {name="Braedan Whitewall",locations={[896]={27405960},},quest=51922,},
		[139322] = {name="Whitney \"Steelclaw\" Ramsay",locations={[896]={29406420},},quest=51923,},
		[139328] = {name="Sabertron",locations={[942]={34003200},},quest=51956,},
		[139335] = {name="Sabertron",locations={[942]={34203200},},},
		[139336] = {name="Sabertron",locations={[942]={34203200},},},
		[139356] = {name="Sabertron",locations={[942]={34203220},},quest=51956,},
		[139358] = {name="The Caterer",locations={[896]={25201620},},quest=51949,},
		[139359] = {name="Sabertron",locations={[942]={34003200},},},
		[139385] = {name="Deepfang",locations={[942]={52805140},},quest=50692,},
		[139968] = {name="Corrupted Tideskipper",locations={[942]={66205100},},quest=52121,},
		[139980] = {name="Taja the Tidehowler",locations={[942]={60004620},},quest=52123,},
		[139988] = {name="Sandfang",locations={[942]={73406060},},quest=52125,},
		[140163] = {name="Warbringer Yenajz",locations={[942]={83004920},},},
		[140252] = {name="Hailstone Construct",locations={[896]={49207420},},},
		[140398] = {name="Zeritarj",locations={[942]={31605500,33404660},},quest=53624,},
		[140925] = {name="Doc Marrtens",faction="Alliance",locations={[942]={53406420},},quest=52323,},
		[140938] = {name="Croaker",locations={[942]={62403340},},quest=52303,},
		[140997] = {name="Severus the Outcast",locations={[942]={22607300},},quest=50938,},
		[141029] = {name="Kickers",locations={[942]={31206180},},quest=52318,},
		[141039] = {name="Ice Sickle",locations={[942]={63408340},},quest=52327,},
		[141043] = {name="Jakala the Cruel",faction="Horde",locations={[942]={53406420},},quest=52324,},
		[141059] = {name="Grimscowl the Harebrained",locations={[942]={62007340},},quest=52329,},
		[141088] = {name="Squall",locations={[942]={57007580},},quest=52433,},
		[141143] = {name="Sister Absinthe",locations={[942]={61405700},},quest=52441,},
		[141175] = {name="Song Mistress Dadalea",locations={[942]={70803240},},quest=52448,},
		[141226] = {name="Haegol the Hammer",locations={[942]={33607500},},quest=52460,},
		[141239] = {name="Osca the Bloodied",locations={[942]={41806240},},quest=52461,},
		[141286] = {name="Poacher Zane",locations={[942]={34406740},},quest=52469,},
		[141615] = {name="Burning Goliath",locations={[14]={22405060,31004420},},phase=1137,quest=53017,},
		[141616] = {name="Thundering Goliath",locations={[14]={45205200},},phase=1137,quest=53023,},
		[141618] = {name="Cresting Goliath",locations={[14]={61403140},},phase=1137,quest=53018,},
		[141620] = {name="Rumbling Goliath",locations={[14]={29205940},},phase=1137,quest=53021,},
		[141668] = {name="Echo of Myzrael",locations={[14]={56203660},},phase=1137,quest=53059,},
		[141942] = {name="Molok the Crusher",locations={[14]={46807720},},phase=1137,quest=53057,},
		[142088] = {name="Whirlwing",locations={[942]={46804340},},quest=52457,},
		[142112] = {name="Kor'gresh Coldrage",locations={[14]={49008340},},phase=1137,quest=53058,},
		[142423] = {name="Overseer Krix",locations={[14]={27005640,33003640},},phase=1137,quest=53014,},
		[142433] = {name="Fozruk",locations={[14]={30204800,46205200,57204360,59003020,60203620},},phase=1137,quest=53019,},
		[142434] = {name="Loo'ay",locations={[862]={70600820},},},
		[142435] = {name="Plaguefeather",locations={[14]={35206120,37206660},},phase=1137,quest=53020,},
		[142436] = {name="Ragebeak",locations={[14]={12205200,18402800},},phase=1137,quest=53016,},
		[142437] = {name="Skullripper",locations={[14]={55404560},},phase=1137,quest=53022,},
		[142438] = {name="Venomarus",locations={[14]={56205460},},phase=1137,quest=53024,},
		[142440] = {name="Yogursa",locations={[14]={13203540},},phase=1137,quest=53015,},
		[142475] = {name="Ka'za the Mezmerizing",locations={[862]={70600820},},},
		[142508] = {name="Branchlord Aldrus",locations={[14]={21201960},},phase=1137,quest=53013,},
		[142662] = {name="Geomancer Flintdagger",locations={[14]={79402940},},phase=1137,quest=53060,},
		[142682] = {name="Zalas Witherbark",locations={[14]={62408020},},phase=1137,quest=53094,},
		[142683] = {name="Ruul Onestone",locations={[14]={42805640},},phase=1137,quest=53092,},
		[142684] = {name="Kovork",locations={[14]={24404740},},phase=1137,quest=53089,},
		[142686] = {name="Foulbelly",locations={[14]={22204940},},phase=1137,quest=53086,},
		[142688] = {name="Darbel Montrose",locations={[14]={50203760,50406100},},phase=1137,quest=53084,},
		[142690] = {name="Singer",locations={[14]={50605740,50804060},},phase=1137,quest=53092,},
		[142692] = {name="Nimar the Slayer",locations={[14]={67406040},},phase=1137,quest=53091,},
		[142709] = {name="Beastrider Kama",locations={[14]={65406880},},phase=1137,quest=53083,},
		[142716] = {name="Man-Hunter Rog",locations={[14]={51807620},},phase=1137,quest=54543,},
		[142725] = {name="Horrific Apparition",locations={[14]={19406140,26203120},},phase=1137,quest=53087,},
		[142739] = {name="Knight-Captain Aldrin",faction="Alliance",locations={[14]={47404120},},phase=1137,quest=53088,},
		[142741] = {name="Doomrider Helgrim",faction="Horde",locations={[14]={53005640},},phase=1137,quest=53085,},
		[143311] = {name="Toadcruel",locations={[863]={73404900},},},
		[143313] = {name="Portakillo",locations={[864]={61111820},},},
		[143314] = {name="Bane of the Woods",locations={[862]={45407920},},},
		[143316] = {name="Skullcap",locations={[863]={52406920},},},
		[143536] = {name="High Warlord Volrath",faction="Horde",locations={[862]={51405820},},},
		[144644] = {name="Mirecrawler",locations={[1355]={37201320},},},
		[144722] = {name="Togoth Cruelarm",locations={[895]={79203800},},},
		[144855] = {name="Apothecary Jerrod",locations={[896]={35004140},},},
		[144915] = {name="Firewarden Viton Darkflare",locations={[942]={49604920},},},
		[144946] = {name="Ivus the Forest Lord",faction="Alliance",locations={[62]={41403600},},phase=1176,quest=54896,},
		[144987] = {name="Shadow Hunter Mutumba",locations={[942]={36205120},},},
		[144997] = {name="Gurin Stonebinder",locations={[942]={46804600},},},
		[145020] = {name="Dolizite",locations={[942]={46804600},},},
		[145112] = {name="Zagg Brokeneye",locations={[895]={76404280},},},
		[145278] = {name="Dinomancer Zakuru",locations={[942]={34405800},},},
		[145286] = {name="Motega Bloodshield",locations={[895]={77004120},},},
		[145287] = {name="Zunjo of Sen'jin",locations={[895]={77004160},},},
		[145292] = {name="Alsian Vistreth",locations={[895]={77204120},},},
		[145308] = {name="First Sergeant Steelfang",locations={[895]={84804320},},},
		[145391] = {name="Caravan Leader",locations={[862]={77203740},},},
		[145392] = {name="Ambassador Gaines",locations={[895]={79604180},},},
		[145395] = {name="Katrianna",locations={[895]={79404180},},},
		[145415] = {name="Cap'n Gorok",locations={[942]={37404740},},},
		[145465] = {name="Engineer Bolthold",locations={[896]={27204360},},},
		[145466] = {name="Shredatron-2000",locations={[896]={27404340},},},
		[146607] = {name="Omgar Doombow",locations={[896]={31803300},},},
		[146611] = {name="Strong Arm John",locations={[895]={78004920},},},
		[146651] = {name="Mistweaver Nian",locations={[895]={74404480},},},
		[146675] = {name="Hartford Sternbach",locations={[895]={80403700},},},
		[146773] = {name="First Mate Malone",locations={[895]={84404740},},},
		[146942] = {name="Grand Marshal Fury",locations={[864]={39403740},},},
		[146979] = {name="Ormin Rocketbop",locations={[864]={35804940},},},
		[147061] = {name="Grubb",locations={[895]={84203520},},},
		[147222] = {name="Gnollfeaster",locations={[49]={24407040},},},
		[147240] = {name="Hydrath",locations={[62]={52403200},},phase=1176,quest=54227,},
		[147241] = {name="Cyclarus",locations={[62]={43805340},},phase=1176,quest=54229,},
		[147260] = {name="Conflagros",locations={[62]={39206180},},phase=1176,quest=54232,},
		[147261] = {name="Granokk",locations={[62]={47405580},},phase=1176,quest=54234,},
		[147332] = {name="Stonebinder Ssra'vess",locations={[62]={45405880},},phase=1176,quest=54247,},
		[147435] = {name="Thelar Moonstrike",faction="Alliance",locations={[62]={62001640},},phase=1176,quest=54252,},
		[147489] = {name="Captain Greensails",locations={[895]={76003940},[1161]={77208060},},},
		[147562] = {name="Mortar Master Zapfritz",locations={[942]={42804660},},},
		[147664] = {name="Zim'kaga",faction="Horde",locations={[62]={62400940},},phase=1176,quest=54274,},
		[147701] = {name="Moxo the Beheader",faction="Horde",locations={[62]={63202060},},phase=1176,quest=54277,},
		[147708] = {name="Athrikus Narassin",locations={[62]={58402440},},phase=1176,quest=54278,},
		[147744] = {name="Amberclaw",locations={[62]={57401540},},phase=1176,quest=54285,},
		[147750] = {name="Artillery Master Goodwin",locations={[895]={83004040},},},
		[147751] = {name="Shattershard",locations={[62]={43402920},},phase=1176,quest=54289,},
		[147758] = {name="Onu",faction="Alliance",locations={[62]={45207500},},phase=1176,quest=54291,},
		[147845] = {name="Commander Drald",faction="Horde",locations={[62]={46408600},},phase=1176,quest=54309,},
		[147897] = {name="Soggoth the Slitherer",locations={[62]={40408440},},phase=1176,quest=54320,},
		[147923] = {name="Knight-Captain Joesiph",locations={[942]={31405820},},},
		[147942] = {name="Twilight Prophet Graeme",locations={[62]={40408240},},phase=1176,quest=54397,},
		[147966] = {name="Aman",locations={[62]={37408420},},phase=1176,quest=54405,},
		[147970] = {name="Mrggr'marr",locations={[62]={35408140},},phase=1176,quest=54408,},
		[147998] = {name="Voidmaster Evenshade",locations={[942]={41205400},},},
		[148025] = {name="Commander Ral'esh",locations={[62]={37407620},},phase=1176,quest=54426,},
		[148031] = {name="Gren Tornfur",locations={[62]={40805640},},phase=1176,quest=54428,},
		[148037] = {name="Athil Dewfire",faction="Alliance",locations={[62]={40407320},},phase=1176,quest=54431,},
		[148044] = {name="Owynn Graddock",locations={[942]={51005220},},},
		[148075] = {name="Beast Tamer Watkins",locations={[942]={35006040},},},
		[148092] = {name="Nalaess Featherseeker",locations={[942]={44204900},},},
		[148103] = {name="Sapper Odette",faction="Alliance",locations={[62]={33008380},},phase=1176,quest=54452,},
		[148146] = {name="Zul'aki the Headhunter",locations={[896]={30803540},},},
		[148231] = {name="Siegebreaker Vol'gar",locations={[862]={76203540},},},
		[148253] = {name="Death Captain Detheca",locations={[862]={78405520},},},
		[148257] = {name="Death Captain Danielle",locations={[862]={78405540},},},
		[148259] = {name="Death Captain Delilah",locations={[862]={78405540},},},
		[148264] = {name="Dinomancer Dajingo",locations={[862]={67203740},},},
		[148276] = {name="Tidebinder Maka",locations={[862]={83205291},},},
		[148295] = {name="Ivus the Decayed",faction="Horde",locations={[62]={41003540},},phase=1176,quest=54862,},
		[148308] = {name="Eric Quietfist",locations={[862]={77004880},},},
		[148343] = {name="Dinohunter Wildbeard",locations={[862]={64803980},},},
		[148390] = {name="Jessibelle Moonshield",locations={[862]={75403600},},},
		[148393] = {name="Ancient Defender",locations={[862]={75403620},},},
		[148403] = {name="Portal Keeper Romiir",locations={[862]={79004440},},},
		[148428] = {name="Bilestomper",locations={[862]={75204940},},},
		[148446] = {name="Wolfleader Skraug",locations={[864]={40204840},},},
		[148451] = {name="Siege O' Matic 9000",locations={[864]={36203860},},},
		[148456] = {name="Jin'tago",locations={[864]={33207140},},},
		[148477] = {name="Beastlord Drakara",locations={[864]={34804240},},},
		[148510] = {name="Drox'ar Morgar",locations={[864]={36006400},},},
		[148534] = {name="Evezon the Eternal",locations={[864]={39006720},},},
		[148550] = {name="Caravan Leader",locations={[864]={39404000},},},
		[148558] = {name="Rockfury",locations={[864]={43003840},},},
		[148563] = {name="Duchess Fallensong the Frigid",locations={[896]={40205040},},},
		[148597] = {name="Iron Shaman Grimbeard",locations={[864]={38204140},},},
		[148637] = {name="Shadow Hunter Vol'tris",locations={[863]={52202240},},},
		[148642] = {name="Caravan Leader",locations={[863]={82404140},},},
		[148648] = {name="Packmaster Swiftarrow",locations={[896]={43403920},},},
		[148651] = {name="Overgrown Ancient",locations={[863]={42202240},},},
		[148674] = {name="Plague Master Herbert",locations={[863]={71201840},},},
		[148676] = {name="Caravan Commander Veronica",locations={[896]={31204660},},},
		[148679] = {name="Arcanist Quintril",locations={[863]={63000400},},},
		[148695] = {name="Doctor Lazane",locations={[896]={31404140},},},
		[148717] = {name="Inquisitor Erik",locations={[896]={27803340},},},
		[148744] = {name="Brewmaster Lin",locations={[863]={50802640},},},
		[148753] = {name="Ptin'go",locations={[863]={52601360},},},
		[148759] = {name="Stormcaller Morka",locations={[863]={48801600},},},
		[148779] = {name="Lightforged Warframe",locations={[863]={80401540},},},
		[148787] = {name="Alash'anir",locations={[62]={56403080},},phase=1176,quest=54695,},
		[148790] = {name="Frightened Kodo",locations={[62]={41306550},},phase=1176,},
		[148792] = {name="Skycaptain Thermospark",locations={[863]={48801180},},},
		[148813] = {name="Thomas Vandergrief",locations={[863]={52202760},},},
		[148842] = {name="Siegeotron",locations={[863]={53600860},},},
		[148860] = {name="Grizzwald",locations={[896]={39404000},},},
		[148862] = {name="Zillie Wunderwrench",locations={[896]={39204000},},},
		[149141] = {name="Burninator Mark V",faction="Horde",locations={[62]={41407640},},phase=1176,quest=54768,},
		[149147] = {name="N'chala the Egg Thief",locations={[862]={69203520},},quest=54770,},
		[149383] = {name="Xizz Gutshank",locations={[863]={50201760},},},
		[149517] = {name="Agathe Wyrmwood",faction="Horde",locations={[62]={49402480},},phase=1176,quest=54883,},
		[149651] = {name="Blackpaw",faction="Alliance",locations={[62]={49412481},},phase=1176,quest=54890,},
		[149652] = {name="Agathe Wyrmwood",faction="Horde",locations={[62]={49402480},},phase=1176,quest=54883,},
		[149653] = {name="Carnivorous Lasher",locations={[1355]={54804200},},},
		[149654] = {name="Glimmerspine",locations={[62]={43401960},},phase=1176,quest=54884,},
		[149655] = {name="Croz Bloodrage",faction="Horde",locations={[62]={50403240},},phase=1176,quest=54886,},
		[149656] = {name="Grimhorn",faction="Alliance",locations={[62]={50603240},},phase=1176,quest=54891,},
		[149657] = {name="Madfeather",locations={[62]={44004840},},phase=1176,quest=54887,},
		[149658] = {name="Shadowclaw",faction="Alliance",locations={[62]={39403280},},phase=1176,quest=54892,},
		[149659] = {name="Orwell Stevenson",faction="Horde",locations={[62]={39403340},},phase=1176,quest=54889,},
		[149660] = {name="Blackpaw",locations={[62]={49402480},},phase=1176,},
		[149661] = {name="Croz Bloodrage",faction="Horde",locations={[62]={50603220},},phase=1176,quest=54886,},
		[149662] = {name="Grimhorn",faction="Alliance",locations={[62]={50403240},},phase=1176,quest=54891,},
		[149663] = {name="Shadowclaw",faction="Alliance",locations={[62]={39803240},},phase=1176,},
		[149664] = {name="Orwell Stevenson",faction="Horde",locations={[62]={39803280},},phase=1176,quest=54889,},
		[149665] = {name="Scalefiend",locations={[62]={47404460},},phase=1176,quest=54893,},
		[149847] = {name="Crazed Trogg",locations={[1462]={82202120},},},
		[150342] = {name="Earthbreaker Gulroc",locations={[1462]={62802600},},},
		[150394] = {name="Armored Vaultbot",locations={[1462]={53004940,55404380,60604460,63203880},},},
		[150575] = {name="Rumblerocks",locations={[1462]={38805320},},},
		[150937] = {name="Seaspit",locations={[1462]={19207940},},},
		[151124] = {name="Mechagonian Nullifier",locations={[1462]={56905330},},},
		[151202] = {name="Foul Manifestation",locations={[1462]={65605100},},},
		[151296] = {name="OOX-Avenger/MG",locations={[1462]={56803990},},},
		[151308] = {name="Boggac Skullbash",locations={[1462]={53003300},},},
		[151569] = {name="Deepwater Maw",locations={[1462]={35804300},},},
		[151623] = {name="The Scrap King",locations={[1462]={71204840},},},
		[151625] = {name="The Scrap King",locations={[1462]={71004880},},},
		[151627] = {name="Mr. Fixthis",locations={[1462]={59806080},},},
		[151672] = {name="Mecharantula",locations={[1462]={86801940},},},
		[151684] = {name="Jawbreaker",locations={[1462]={75404400},},},
		[151702] = {name="Paol Pondwader",locations={[1462]={23006860},},},
		[151719] = {name="Voice in the Deeps",locations={[1355]={67603460},},},
		[151870] = {name="Sandcastle",locations={[1355]={78003280},},},
		[151884] = {name="Fungarian Furor",locations={[1462]={48704760},},},
		[151933] = {name="Malfunctioning Beastbot",locations={[1462]={61004120},},},
		[151934] = {name="Arachnoid Harvester",locations={[1462]={51604160},},},
		[151940] = {name="Uncle T'Rogg",locations={[1462]={57002140},},},
		[152001] = {name="Bonepicker",locations={[1462]={65202320},},},
		[152007] = {name="Killsaw",locations={[1462]={40204220,41403360,43404900,50204840},},},
		[152113] = {name="The Kleptoboss",locations={[1462]={68905430},},},
		[152182] = {name="Rustfeather",locations={[1462]={63807800},},},
		[152290] = {name="Soundless",locations={[1355]={57605220},},quest=56298,},
		[152291] = {name="Deepglider",locations={[1355]={56204360},},},
		[152323] = {name="King Gakula",locations={[1355]={28802900},},},
		[152359] = {name="Siltstalker the Packmother",locations={[1355]={71405480},},},
		[152360] = {name="Toxigore the Alpha",locations={[1355]={64604700},},},
		[152397] = {name="Oronu",locations={[1355]={},},},
		[152566] = {name="Banestalker the Packfather",locations={[1355]={71005420},},},
		[152414] = {name="Elder Unu",locations={[1355]={63803260},},},
		[152415] = {name="Alga the Eyeless",locations={[1355]={52404200,61004520},},},
		[152416] = {name="Allseer Oma'kil",locations={[1355]={69204020},},},
		[152448] = {name="Iridescent Glimmershell",locations={[1355]={47205500},},},
		[152465] = {name="Needlespine",locations={[1355]={45602560,52001720},},},
		[152545] = {name="Scale Matriarch Vynara",locations={[1355]={27403720},},},
		[152548] = {name="Scale Matriarch Gratinax",locations={[1355]={35604120},},},
		[152553] = {name="Garnetscale",locations={[1355]={32203320,34804700,36003960},},},
		[152555] = {name="Elderspawn Nalaada",locations={[1355]={52207400},},},
		[152556] = {name="Chasm-Haunter",locations={[1355]={49008800},},},
		[152566] = {name="Anemonar",locations={[1355]={},},},
		[152567] = {name="Kelpwillow",locations={[1355]={},},},
		[152568] = {name="Urduu",locations={[1355]={},},},
		[152569] = {name="Crazed Trogg",locations={[1462]={82002120},},},
		[152570] = {name="Crazed Trogg",locations={[1462]={82202100},},},
		[152681] = {name="Prince Typhonus",locations={[1355]={43008760,44207160},},},
		[152682] = {name="Prince Vortran",locations={[1355]={42807480},},},
		[152712] = {name="Blindlight",locations={[1355]={36408000},},},
		[152729] = {name="Moon Priestess Liara",locations={[1355]={83403300},},},
		[152736] = {name="Guardian Tannin",locations={[1355]={83603740},},},
		[152764] = {name="Oxidized Leachbeast",locations={[1462]={57206260},},},
		[152794] = {name="Amethyst Spireshell",locations={[1355]={72203620},},},
		[152795] = {name="Sandclaw Stoneshell",locations={[1355]={51605240,64605500,64804060,74604400,75405160,79803880,80002740},},},
		[153898] = {name="Tidelord Aquatus",locations={[1355]={62402960},},},
		[153000] = {name="Sparkqueen P'Emp",locations={[1462]={78203080,80802420},},},
		[153200] = {name="Boilburn",locations={[1462]={51205000},},},
		[153205] = {name="Gemicide",locations={[1462]={59606730},},},
		[153206] = {name="Ol' Big Tusk",locations={[1462]={56103600},},},
		[153226] = {name="Steel Singer Freza",locations={[1462]={24807720},},},
		[153228] = {name="Gear Checker Cogstar",locations={[1462]={40203960,52004920},},},
		[153296] = {name="Shalan'ali Stormtongue",locations={[1355]={33204000},},},
		[153299] = {name="Bonebreaker Szun",locations={[1355]={63805700},},},
		[153300] = {name="Iron Zoko",locations={[1355]={42206900,42804300,69003280},},},
		[153301] = {name="Shirakess Starseeker",locations={[1355]={33203920,33603020,42804140},},},
		[153302] = {name="Glacier Mage Zhiela",locations={[1355]={42006760,43004240},},},
		[153303] = {name="Voidblade Kassar",locations={[1355]={33004000,33603020,68803340},},},
		[153304] = {name="Undana Frostbarb",locations={[1355]={68203300},},},
		[153305] = {name="Zanj'ir Brutalizer",locations={[1355]={68403340},},},
		[153309] = {name="Alzana, Arrow of Thunder",locations={[1355]={41602460,61202440},},},
		[153310] = {name="Qalina, Spear of Ice",locations={[1355]={61801220},},},
		[153311] = {name="Slitherblade Azanz",locations={[1355]={33403020,77404340},},},
		[153312] = {name="Kyx'zhul the Deepspeaker",locations={[1355]={41402400},},},
		[153314] = {name="Aldrantiss",locations={[1355]={60401440},},},
		[153658] = {name="Shiz'narasz the Consumer",locations={[1355]={37801440},},},
		[153928] = {name="Tidelord Dispersius",locations={[1355]={57602600},},},
		[154153] = {name="Enforcer KX-T57",locations={[1462]={53806180},},},
		[154225] = {name="The Rusty Prince",locations={[1462]={58305690},},notes="Time displaced",},
		[154701] = {name="Gorged Gear-Cruncher",locations={[1462]={69205340},},},
		[154739] = {name="Caustic Mechaslime",locations={[1462]={66505870},},},
		[155060] = {name="Doppel Ganger",locations={[1462]={80902020},},},
		[155583] = {name="Scrapclaw",locations={[1462]={81407600},},},
		[155811] = {name="Commander Minzera",locations={[1355]={33402940},},},
		[155836] = {name="Theurgist Nitara",locations={[1355]={49406580},},},
	})
end
