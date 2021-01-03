local myname, ns = ...

local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")
local module = core:GetModule("ClickTarget")
local Debug = core.Debug

module.pools = {}
function module:GetPopupLookPool(look)
	look = look and (self.Looks[look] and look) or "SilverDragon"
	if not module.pools[look] then
		module.pools[look] = CreateObjectPool(
			function(pool) return module:CreatePopup(look) end,
			function(pool, popup)
				popup:Reset()
				tDeleteItem(module.stack, popup)
				module:ProcessQueue()
			end
		)
	end
	return module.pools[look]
end

function module:Acquire(look)
	return self:GetPopupLookPool(look):Acquire()
end

function module:Release(popup)
	self:GetPopupLookPool(popup.look):Release(popup)
end

do
	local function enumerate()
		for look, pool in pairs(module.pools) do
			for popup in pool:EnumerateActive() do
				coroutine.yield(popup, look)
			end
		end
	end
	function module:EnumerateActive()
		return coroutine.wrap(enumerate)
	end
end

module.queue = {}
module.stack = {}
function module:Enqueue(data, front)
	for _, data2 in ipairs(self.queue) do
		if data.type == data2.type and data.id == data2.id then
			-- don't double up on the queue
			return
		end
	end
	for _, popup in ipairs(self.stack) do
		if popup.data and popup.data.type == data.type  and popup.data.id == data.id then
			-- also don't double up on already-shown
			return
		end
	end
	if front then
		table.insert(self.queue, data)
	else
		table.insert(self.queue, 1, data)
	end
	if InCombatLockdown() then
		Debug("Queueing popup for out-of-combat")
		data.unit = nil
	else
		self:ProcessQueue()
	end
end

function module:ProcessQueue()
	if module.PAUSED or InCombatLockdown() then return end
	while #self.queue > 0 and #self.stack < self.db.profile.stacksize do
		local data = table.remove(self.queue)
		Debug("Showing queued popup")
		table.insert(self.stack, self:ShowFrame(data))
	end
	self:Reflow()
end

function module:Reflow()
	if module.PAUSED or InCombatLockdown() then return end
	for i, popup in ipairs(self.stack) do
		popup:ClearAllPoints() -- in case we've just been dragged around
		if i == 1 then
			popup:SetPoint("CENTER", self.anchor, "CENTER")
		else
			-- TODO: directional
			local _, y = self.anchor:GetCenter()
			local s = self.anchor:GetScale()
			if (y * s) < (UIParent:GetHeight() / 2) then
				popup:SetPoint("BOTTOM", self.stack[i - 1], "TOP", 0, 10)
			else
				popup:SetPoint("TOP", self.stack[i - 1], "BOTTOM", 0, -10)
			end
		end
	end
end

function module:Redraw()
	if module.PAUSED or InCombatLockdown() then return end
	module.PAUSED = true
	-- need to loop twice and bypass the duplicate checks
	for i, popup in ipairs(self.stack) do
		table.insert(self.queue, popup.data)
	end
	while #self.stack > 0 do
		-- this will release and reset the existing frame
		table.remove(self.stack):Hide()
	end
	module.PAUSED = false
	self:ProcessQueue()
end
