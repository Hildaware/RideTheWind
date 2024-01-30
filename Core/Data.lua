local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Database: AceModule
local database = addon:NewModule('Database')

---@class Enums: AceModule
local enums = addon:GetModule('Enums')

---@class RaceDetails
---@field normal integer?
---@field advanced integer?
---@field reversed integer?
local raceDetails = {
    normal = nil,
    advanced = nil,
    reversed = nil
}

---@class databaseOptions
local defaults = {
    global = {
        Races = {
            [1] = {} ---@class RaceDetails
        },
    }
}

function database:OnInitialize()
    database.internal = LibStub('AceDB-3.0'):New(addonName .. 'DB',
        defaults --[[@as AceDB.Schema]], true) --[[@as databaseOptions]]
end

--- Gets the race details by the Buff ID. This id shows up when the aura is found
---@param id integer
---@return RaceDetails
function database:GetRaceDetailsById(id)
    return self.internal.global.Races[id]
end

function database:SaveRaceTimes(raceId, raceTimes)
    database.internal.global.Races[raceId] = raceTimes
end

database:Enable()
