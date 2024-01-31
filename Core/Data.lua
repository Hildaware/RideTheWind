local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Database: AceModule
local database = addon:NewModule('Database')

---@class Enums: AceModule
local enums = addon:GetModule('Enums')

---@class RaceDetails
---@field best integer?
---@field gold integer?
local raceDetailsProto = {
    best = nil,
    gold = nil
}

---@class RaceStats
---@field normal RaceDetails?
---@field advanced RaceDetails?
---@field reverse RaceDetails?
---@field challenge RaceDetails?
---@field challengeReverse RaceDetails?
local raceStatsProto = {
    normal = nil,
    advanced = nil,
    reverse = nil,
    challenge = nil,
    challengeReverse = nil
}

---@class databaseOptions
local defaults = {
    global = {
        Races = {
            [1] = {} ---@class RaceStats
        },
        Views = {
            ZoneView = {
                Enabled = true,
                Color = {
                    R = 0,
                    G = 0,
                    B = 0,
                    A = 0.25
                },
                Position = {
                    X = 500,
                    Y = 500
                },
                Font = {
                    Name = 'Friz Quadrata TT',
                    Path = 'Fonts\\FRIZQT__.TTF'
                }
            }
        }
    }
}

function database:OnInitialize()
    database.internal = LibStub('AceDB-3.0'):New(addonName .. 'DB',
        defaults --[[@as AceDB.Schema]], true) --[[@as databaseOptions]]
end

--#region Fetches

--- Gets the race details by the Buff ID. This id shows up when the aura is found
---@param id integer
---@return RaceStats
function database:GetRaceDetailsById(id)
    return self.internal.global.Races[id]
end

---@return { X: integer, Y: integer }
function database:GetZoneViewPosition()
    return self.internal.global.Views.ZoneView.Position
end

---@return boolean
function database:GetZoneViewEnabled()
    return self.internal.global.Views.ZoneView.Enabled
end

---@return { r: integer, g: integer, b: integer, a: integer }
function database:GetZoneViewColor()
    local color = self.internal.global.Views.ZoneView.Color
    return { r = color.R, g = color.G, b = color.B, a = color.A }
end

---comment
---@return { name: string, path: string }
function database:GetZoneViewFont()
    local font = self.internal.global.Views.ZoneView.Font
    return { name = font.Name, path = font.Path }
end

--#endregion

--#region Writes

---@param raceId integer
---@param raceTimes RaceStats
function database:SaveRaceTimes(raceId, raceTimes)
    local savedTimes = database.internal.global.Races[raceId]
    if savedTimes == nil then
        database.internal.global.Races[raceId] = raceTimes
        return
    end

    if raceTimes.normal.best < savedTimes.normal.best then
        database.internal.global.Races[raceId].normal.best = raceTimes.normal.best
    end

    if raceTimes.advanced.best < savedTimes.advanced.best then
        database.internal.global.Races[raceId].advanced.best = raceTimes.advanced.best
    end

    if raceTimes.reverse.best < savedTimes.reverse.best then
        database.internal.global.Races[raceId].reverse.best = raceTimes.reverse.best
    end
end

---@param x integer
---@param y integer
function database:SaveZoneViewPosition(x, y)
    database.internal.global.Views.ZoneView.Position.X = x
    database.internal.global.Views.ZoneView.Position.Y = y
end

---@param value boolean
function database:SetZoneViewEnabled(value)
    database.internal.global.Views.ZoneView.Enabled = value

    ---@class ZoneView
    local zoneView = addon:GetModule('ZoneView')
    if not value then
        zoneView.data.view.frame:Hide()
    else
        zoneView.data.view.frame:Show()
    end
end

---@param r integer
---@param g integer
---@param b integer
---@param a integer
function database:SetZoneViewColor(r, g, b, a)
    local color = database.internal.global.Views.ZoneView.Color
    color.R = r
    color.G = g
    color.B = b
    color.A = a

    ---@class ZoneView
    local zoneView = addon:GetModule('ZoneView')
    zoneView:UpdateColor(color)
end

---@param name string
---@param path string
function database:SetZoneViewFont(name, path)
    local font = database.internal.global.Views.ZoneView.Font
    font.Name = name
    font.Path = path

    ---@class ZoneView
    local zoneView = addon:GetModule('ZoneView')
    zoneView:UpdateFont(path)
end

--#endregion

database:Enable()
