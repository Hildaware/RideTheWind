local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Types: AceModule
local types = addon:NewModule('Types')

---@class RaceIDs
local raceIds = {
    bronze = 0,
    silver = 0,
    gold = 0
}

---@class Race
local Race = {
    id = 0,
    normal = raceIds,
    advanced = raceIds,
    reversed = raceIds,
    name = '',
    zone = 0,
    coords = {
        x = 0,
        y = 0
    }
}

types.Race = Race
types.RaceIDs = raceIds

types:Enable()
