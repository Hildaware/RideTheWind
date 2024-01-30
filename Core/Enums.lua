local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Enums: AceModule
local enums = addon:NewModule('Enums')

---@enum Enums.RacingZones
enums.RacingZoneIds = {
    2022,
    2023,
    2024,
    2025,
    2133,
    2151,
    -- EmeraldDream = ???
}

enums:Enable()
