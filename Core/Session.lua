local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Session: AceModule
local session = addon:NewModule('Session')

function session:OnInitialize()
    self.raceIDs = {}
    self.zoneView = {
        hide = false
    }
end

session:Enable()
