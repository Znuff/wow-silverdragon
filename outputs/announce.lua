﻿local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Announce", "LibSink-2.0")
local Debug = core.Debug

local LSM = LibStub("LibSharedMedia-3.0")

if LSM then
	-- Register some media
	LSM:Register("sound", "Rubber Ducky", [[Sound\Doodad\Goblin_Lottery_Open01.wav]])
	LSM:Register("sound", "Cartoon FX", [[Sound\Doodad\Goblin_Lottery_Open03.wav]])
	LSM:Register("sound", "Explosion", [[Sound\Doodad\Hellfire_Raid_FX_Explosion05.wav]])
	LSM:Register("sound", "Shing!", [[Sound\Doodad\PortcullisActive_Closed.wav]])
	LSM:Register("sound", "Wham!", [[Sound\Doodad\PVP_Lordaeron_Door_Open.wav]])
	LSM:Register("sound", "Simon Chime", [[Sound\Doodad\SimonGame_LargeBlueTree.wav]])
	LSM:Register("sound", "War Drums", [[Sound\Event Sounds\Event_wardrum_ogre.wav]])--NPC Scan default
	LSM:Register("sound", "Scourge Horn", [[Sound\Events\scourge_horn.wav]])--NPC Scan default
	LSM:Register("sound", "Cheer", [[Sound\Event Sounds\OgreEventCheerUnique.wav]])
	LSM:Register("sound", "Humm", [[Sound\Spells\SimonGame_Visual_GameStart.wav]])
	LSM:Register("sound", "Short Circuit", [[Sound\Spells\SimonGame_Visual_BadPress.wav]])
	LSM:Register("sound", "Fel Portal", [[Sound\Spells\Sunwell_Fel_PortalStand.wav]])
	LSM:Register("sound", "Fel Nova", [[Sound\Spells\SeepingGaseous_Fel_Nova.wav]])
	LSM:Register("sound", "PVP Flag", [[Sound\Spells\PVPFlagTaken.wav]])
	LSM:Register("sound", "Algalon: Beware!", [[Sound\Creature\AlgalonTheObserver\UR_Algalon_BHole01.wav]])
	LSM:Register("sound", "Yogg Saron: Laugh", [[Sound\Creature\YoggSaron\UR_YoggSaron_Slay01.wav]])
	LSM:Register("sound", "Illidan: Not Prepared", [[Sound\Creature\Illidan\BLACK_Illidan_04.wav]])
	LSM:Register("sound", "Magtheridon: I am Unleashed", [[Sound\Creature\Magtheridon\HELL_Mag_Free01.wav]])
	LSM:Register("sound", "NPCScan", [[Sound\Event Sounds\Event_wardrum_ogre.wav]])--Sound file is actually bogus, this just forces the option NPCScan into menu. We hack it later.
end

function module:OnInitialize()
	self.db = core.db:RegisterNamespace("Announce", {
		profile = {
			sink = true,
			sound = true,
			soundfile = "Wham!",
			flash = true,
			instances = true,
			expansions = {
				classic = true,
				bc = true,
				wrath = true,
				cataclysm = true,
				pandaria = true,
				cities = true,
				unknown = true,
			},
			sink_opts = {},
		},
	})

	self:SetSinkStorage(self.db.profile.sink_opts)
	core.RegisterCallback(self, "Seen")

	local config = core:GetModule("Config", true)
	if config then
		local toggle = config.toggle
		config.options.plugins.announce = {
			announce = {
				type = "group",
				name = "Announce",
				get = function(info) return self.db.profile[info[#info]] end,
				set = function(info, v) self.db.profile[info[#info]] = v end,
				args = {
					sink = {
						type = "group", name = "Message", inline = true,
						args = {
							sink = toggle("Message", "Send a message to whatever scrolling text addon you're using."),
							output = self:GetSinkAce3OptionsDataTable()
						},
					},
					flash = toggle("Flash", "Flash the edges of the screen."),
					instances = toggle("Instances", "Show announcements while in an instance"),
					expansions = {
						type = "group", name = "Expansions", inline = true,
						get = function(info) return self.db.profile.expansions[info[#info]] end,
						set = function(info, v) self.db.profile.expansions[info[#info]] = v end,
						args = {
							desc = {
								type = "description",
								name = "Whether to announce rares in zones from this expansion",
								order = 0,
							},
							classic = toggle("Classic", "Vanilla. Basic. 1-60. Whatevs.", 10),
							bc = toggle("Burning Crusade", "Illidan McGrumpypants. 61-70.", 20),
							wrath = toggle("Wrath of the Lich King", "Emo Arthas. 71-80.", 30),
							cataclysm = toggle("Cataclysm", "Play it off, keyboard cataclysm! 81-85.", 40),
							pandaria = toggle("Mists of Pandaria", "Everybody was kung fu fighting. 86-90.", 50),
							cities = toggle("Capitol Cities", "Expansion indifferent and ever evolving.", 60),
							unknown = toggle(UNKNOWN, "Not sure where they fit.", 70),
						},
					},
				},
			},
		}
		if LSM then
			config.options.plugins.announce.announce.args.sound = toggle("Sound", "Play a sound.")
			config.options.plugins.announce.announce.args.soundfile = {
				type = "select", dialogControl = "LSM30_Sound",
				name = "Sound to Play", desc = "Choose a sound file to play.",
				values = AceGUIWidgetLSMlists.sound,
				disabled = function() return not self.db.profile.sound end,
			}
		end
	end
end

-- It's possible I should library-ise this...
local classic_zones = {
	[101] = "Desolace",
	[11] = "Barrens",
	[121] = "Feralas",
	[13] = "Kalimdor",
	[14] = "Azeroth",
	[141] = "Dustwallow",
	[16] = "Arathi",
	[161] = "Tanaris",
	[17] = "Badlands",
	[181] = "Aszhara",
	[182] = "Felwood",
	[19] = "BlastedLands",
	[20] = "Tirisfal",
	[201] = "UngoroCrater",
	[21] = "Silverpine",
	[22] = "WesternPlaguelands",
	[23] = "EasternPlaguelands",
	[24] = "HillsbradFoothills",
	[241] = "Moonglade",
	[26] = "Hinterlands",
	[261] = "Silithus",
	[27] = "DunMorogh",
	[28] = "SearingGorge",
	[281] = "Winterspring",
	[29] = "BurningSteppes",
	[30] = "Elwynn",
	[32] = "DeadwindPass",
	[34] = "Duskwood",
	[35] = "LochModan",
	[36] = "Redridge",
	[37] = "StranglethornJungle",
	[38] = "SwampOfSorrows",
	[39] = "Westfall",
	[4] = "Durotar",
	[40] = "Wetlands",
	[41] = "Teldrassil",
	[42] = "Darkshore",
	[43] = "Ashenvale",
	[462] = "EversongWoods",
	[607] = "SouthernBarrens",
	[61] = "ThousandNeedles",
	[673] = "TheCapeOfStranglethorn",
	[689] = "StranglethornVale",
	[772] = "AhnQirajTheFallenKingdom",
	[81] = "StonetalonMountains",
	[9] = "Mulgore",
	-- starting zones
	[864] = "Northshire",
	[866] = "ColdridgeValley",
	[888] = "ShadowglenStart",
	[890] = "CampNaracheStart",
	[892] = "DeathknellStart",
	[895] = "NewTinkertownStart",
}
local bc_zones = {
	[465] = "Hellfire",
	[466] = "Expansion01",
	[467] = "Zangarmarsh",
	[473] = "ShadowmoonValley",
	[475] = "BladesEdgeMountains",
	[477] = "Nagrand",
	[478] = "TerokkarForest",
	[479] = "Netherstorm",
	[499] = "Sunwell",
	-- starting zones
	[463] = "Ghostlands",
	[464] = "AzuremystIsle",
	[476] = "BloodmystIsle",
	[893] = "SunstriderIsleStart",
	[894] = "AmmenValeStart",
}
local wrath_zones = {
	[485] = "Northrend",
	[486] = "BoreanTundra",
	[488] = "Dragonblight",
	[490] = "GrizzlyHills",
	[491] = "HowlingFjord",
	[492] = "IcecrownGlacier",
	[493] = "SholazarBasin",
	[495] = "TheStormPeaks",
	[496] = "ZulDrak",
	[501] = "LakeWintergrasp",
	[510] = "CrystalsongForest",
	[541] = "HrothgarsLanding",
}
local cata_zones = {
	[606] = "Hyjal",
	[610] = "VashjirKelpForest",
	[613] = "Vashjir",
	[614] = "VashjirDepths",
	[615] = "VashjirRuins",
	[640] = "Deepholm",
	[700] = "TwilightHighlands",
	[708] = "TolBarad",
	[709] = "TolBaradDailyArea",
	[720] = "Uldum",
	[737] = "TheMaelstrom",
	[751] = "TheMaelstromContinent",
	[795] = "MoltenFront",
	-- starting zones
	[544] = "TheLostIsles",
	[605] = "Kezan",
	[684] = "RuinsofGilneas",
	[685] = "RuinsofGilneasCity",
	[891] = "EchoIslesStart",
}
local mop_zones = {
	[806] = "TheJadeForest",
	[807] = "ValleyoftheFourWinds",
	[809] = "KunLaiSummit",
	[810] = "TownlongWastes",
	[811] = "ValeofEternalBlossoms",
	[857] = "Krasarang",
	[858] = "DreadWastes",
	[862] = "Pandaria",
	[873] = "TheHiddenPass",
	[903] = "ShrineofTwoMoons",
	[905] = "ShrineofSevenStars",
	-- starting zones
	[889] = "ValleyofTrialsStart",
}
local main_cities = {
	[301] = "StormwindCity",
	[321] = "Orgrimmar",
	[341] = "Ironforge",
	[362] = "ThunderBluff",
	[381] = "Darnassus",
	[382] = "Undercity",
	[471] = "TheExodar",
	[480] = "SilvermoonCity",
	[481] = "ShattrathCity",
	[504] = "Dalaran",
	[823] = "DarkmoonFaireIsland",
}

local function guess_expansion(zone)
	if not zone then
		return 'unknown'
	end
	if classic_zones[zone] then
		return 'classic'
	end
	if bc_zones[zone] then
		return 'bc'
	end
	if wrath_zones[zone] then
		return 'wrath'
	end
	if cata_zones[zone] then
		return 'cataclysm'
	end
	if mop_zones[zone] then
		return 'pandaria'
	end
	if main_cities[zone] then
		return 'cities'
	end
	return 'unknown'
end
core.guess_expansion = guess_expansion

function module:Seen(callback, id, name, zone, ...)
	Debug("Announce:Seen", id, name, zone, ...)

	if not self.db.profile.instances and IsInInstance() then
		return
	end

	local exp = guess_expansion(zone)
	if exp and not self.db.profile.expansions[exp] then
		Debug("Skipping due to expansion", exp)
		return
	end

	core.events:Fire("Announce", id, name, zone, ...)
end

core.RegisterCallback("SD Announce Sink", "Announce", function(callback, id, name, zone, x, y, dead, newloc, source)
	if not module.db.profile.sink then
		return
	end

	Debug("Pouring")
	if source:match("^sync") then
		local channel, player = source:match("sync:(.+):(.+)")
		if channel and player then
			local localized_zone = GetMapNameByID(zone) or UNKNOWN
			source = "by " .. player .. " in your " .. strlower(channel) .. "; " .. localized_zone
			if x and y then
				source = source .. " @ " .. core.round(x * 100, 1) .. "," .. core.round(y * 100, 1)
			end
		end
	end
	module:Pour(("Rare seen: %s%s (%s)"):format(name or UNKNOWN, dead and "... but it's dead" or '', source or ''))
end)

core.RegisterCallback("SD Announce Sound", "Announce", function(callback)
	if not (module.db.profile.sound and LSM) then
		return
	end

	Debug("Playing sound", module.db.profile.soundfile)
	if module.db.profile.soundfile == "NPCScan" then
		--Override default behavior and force npcscan behavior of two sounds at once
		PlaySoundFile(LSM:Fetch("sound", "War Drums"), "Master")
		PlaySoundFile(LSM:Fetch("sound", "Scourge Horn"), "Master")
	else
		--Play whatever sound is set
		PlaySoundFile(LSM:Fetch("sound", module.db.profile.soundfile), "Master")
	end
end)

core.RegisterCallback("SD Announce Flash", "Announce", function(callback)
	if not module.db.profile.flash then
		return
	end

	Debug("Flashing")
	LowHealthFrame_StartFlashing(0.5, 0.5, 6, false, 0.5)
end)
