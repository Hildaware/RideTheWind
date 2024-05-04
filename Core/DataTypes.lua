local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Types: AceModule
local types = addon:NewModule('Types')

--#region Races

---@class RaceIDs
---@field bronze integer
---@field silver integer
---@field gold integer
local raceIds = {
    bronze = 0,
    silver = 0,
    gold = 0
}

---@class Coordinates
---@field x integer
---@field y integer
local coordinates = {
    x = 0,
    y = 0
}

---@class RaceTimes
---@field silver integer?
---@field gold integer?
---@field currencyId integer?
---@field questId integer?
local raceTimes = {
    silver = nil,
    gold = nil
}

---@class RaceTargets
---@field normal RaceTimes?
---@field advanced RaceTimes?
---@field reverse RaceTimes?
---@field challenge RaceTimes?
---@field challengeReverse RaceTimes?
local raceTargets = {
    normal = nil,
    advanced = nil,
    reverse = nil,
    challenge = nil,
    challengeReverse = nil
}

---@class Race
---@field id integer
---@field normal RaceIDs
---@field advanced RaceIDs
---@field reverse RaceIDs
---@field challenge RaceIDs
---@field challengeReverse RaceIDs
---@field times RaceTargets
---@field name string
---@field zone integer
---@field coords Coordinates
local Race = {
    id = 0,
    normal = raceIds,
    advanced = raceIds,
    reverse = raceIds,
    challenge = raceIds,
    challengeReverse = raceIds,
    times = raceTargets,
    name = '',
    zone = 0,
    coords = {
        x = 0,
        y = 0
    }
}

--#endregion

types:Enable()
