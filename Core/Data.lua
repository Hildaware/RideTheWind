local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Database: AceModule
local database = addon:NewModule('Database')

---@class Enums: AceModule
local enums = addon:GetModule('Enums')

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

---@class RaceStats
---@field normal integer?
---@field advanced integer?
---@field reverse integer?
---@field challenge integer?
---@field challengeReverse integer?
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
                    X = 800,
                    Y = 500
                },
                Font = {
                    Name = 'Accidental Presidency',
                    Path = 'Interface\\AddOns\\RideTheWind\\Fonts\\AccidentalPresidency.ttf'
                }
            },
            HeadsUpView = {
                Enabled = true,
                DefaultEnabled = false,
                Locked = true,
                Position = {
                    X = 500,
                    Y = 500
                },
                Scale = 1.0
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

--#region ZoneView

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

---@return { name: string, path: string }
function database:GetZoneViewFont()
    local font = self.internal.global.Views.ZoneView.Font
    return { name = font.Name, path = font.Path }
end

--#endregion

--#region HeadsUpView
---@return boolean

function database:GetHeadsUpViewEnabled()
    return self.internal.global.Views.HeadsUpView.Enabled
end

function database:GetDefaultDisplayEnabled()
    return self.internal.global.Views.HeadsUpView.DefaultEnabled
end

function database:GetHeadsUpViewLocked()
    return self.internal.global.Views.HeadsUpView.Locked
end

---@return { X: integer, Y: integer }
function database:GetHeadsUpViewPosition()
    return self.internal.global.Views.HeadsUpView.Position
end

---@return number
function database:GetHeadsUpViewScale()
    return self.internal.global.Views.HeadsUpView.Scale
end

--#endregion

--#endregion

--#region Writes

---@param raceId integer
---@param raceTimes RaceStats
function database:SaveRaceTimes(raceId, raceTimes)
    local savedTimes = database.internal.global.Races[raceId]
    if savedTimes == nil then
        database.internal.global.Races[raceId] = raceTimes

        ---@class ZoneView: AceModule
        local zoneView = addon:GetModule('ZoneView')
        zoneView:Update()
        return
    end

    local shouldUpdateView = false
    if raceTimes.normal < savedTimes.normal then
        database.internal.global.Races[raceId].normal = raceTimes.normal
        shouldUpdateView = true
    end

    if raceTimes.advanced < savedTimes.advanced then
        database.internal.global.Races[raceId].advanced = raceTimes.advanced
        shouldUpdateView = true
    end

    if raceTimes.reverse < savedTimes.reverse then
        database.internal.global.Races[raceId].reverse = raceTimes.reverse
        shouldUpdateView = true
    end

    if raceTimes.challenge < savedTimes.challenge then
        database.internal.global.Races[raceId].challenge = raceTimes.challenge
        shouldUpdateView = true
    end

    if raceTimes.challengeReverse < savedTimes.challengeReverse then
        database.internal.global.Races[raceId].challengeReverse = raceTimes.challengeReverse
        shouldUpdateView = true
    end

    if shouldUpdateView then
        ---@class ZoneView: AceModule
        local zoneView = addon:GetModule('ZoneView')
        zoneView:Update()
    end
end

--#region ZoneView

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

--#region HeadsUpView

---@param value boolean
function database:SetHeadsUpViewEnabled(value)
    database.internal.global.Views.HeadsUpView.Enabled = value

    ---@class HeadsUpView
    local view = addon:GetModule('HeadsUpView')
    if not value then
        view.data.view:Hide()
    else
        view.data.view:Show()
    end
end

---@param value boolean
function database:SetDefaultDisplayEnabled(value)
    database.internal.global.Views.HeadsUpView.DefaultEnabled = value

    resolver.ToggleDefaultHeadsUpDisplay(value)
end

---@param value boolean
function database:SetHeadsUpViewLocked(value)
    database.internal.global.Views.HeadsUpView.Locked = value
    ---@class HeadsUpView: AceModule
    local view = addon:GetModule('HeadsUpView')
    view:UpdateMovable(value)
end

---@param x integer
---@param y integer
function database:SetHeadsUpViewPosition(x, y)
    database.internal.global.Views.HeadsUpView.Position.X = x
    database.internal.global.Views.HeadsUpView.Position.Y = y
end

---@param x integer
function database:SetHeadsUpViewPositionX(x)
    database.internal.global.Views.HeadsUpView.Position.X = x
    ---@class HeadsUpView: AceModule
    local view = addon:GetModule('HeadsUpView')
    view:UpdatePosition(x, database.internal.global.Views.HeadsUpView.Position.Y)
    -- Update
end

---@param y integer
function database:SetHeadsUpViewPositionY(y)
    database.internal.global.Views.HeadsUpView.Position.Y = y
    ---@class HeadsUpView: AceModule
    local view = addon:GetModule('HeadsUpView')
    view:UpdatePosition(database.internal.global.Views.HeadsUpView.Position.X, y)
end

---@param scale number
function database:SetHeadsUpViewScale(scale)
    database.internal.global.Views.HeadsUpView.Scale = scale
    ---@class HeadsUpView: AceModule
    local view = addon:GetModule('HeadsUpView')
    view:UpdateScale(scale)
end

--#endregion

--#endregion

database:Enable()
