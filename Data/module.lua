local BZ = LibStub("LibBabble-Zone-3.0"):GetUnstrictLookupTable()
local BZR = LibStub("LibBabble-Zone-3.0"):GetReverseLookupTable()
local BCTR = LibStub("LibBabble-CreatureType-3.0"):GetReverseLookupTable()

local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:NewModule("Data")

function module:Import()
	if not self.GetDefaults then return end
	local defaults = self:GetDefaults()
	local gdb = core.db.global
	for zone, mobs in pairs(defaults) do
		if core.zone_to_mapfile[BZ[zone]] then
			-- instances get to stay as they are, note
			zone = core.zone_to_mapfile[BZ[zone]]
		end
		for name, info in pairs(mobs) do
			gdb.mob_level[name] = info.level
			gdb.mob_type[name] = BCTR[info.creature_type]
			if info.elite then gdb.mob_elite[name] = true end
			if not gdb.mobs_byzone[zone][name] then
				gdb.mobs_byzone[zone][name] = 0 -- never seen
				for _, loc in pairs(info.locations) do
					table.insert(gdb.mob_locations[name], loc)
				end
			else
				for _, loc in pairs(info.locations) do
					local new_x, new_y = core:GetXY(loc)
					local newloc = true
					for _, oldloc in pairs(gdb.mob_locations[name]) do
						local old_x, old_y = core:GetXY(loc)
						if math.abs(new_x - old_x) < 0.05 and math.abs(new_y - old_y) < 0.05 then
							newloc = false
							break
						end
					end
					if newloc then
						table.insert(gdb.mob_locations[name], loc)
					end
				end
			end
		end
	end
	defaults = nil
end

-- there'll be some config here soon for importing this
