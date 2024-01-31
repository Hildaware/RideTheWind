---@diagnostic disable: assign-type-mismatch
local addonName = ... ---@type string
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local gui = LibStub('AceGUI-3.0')

---@class RaceListView: AceModule
local view = addon:NewModule('RaceListView')

---@class RaceListItem: AceModule
local listItem = addon:GetModule('RaceListItem')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class Enums: AceModule
local enums = addon:GetModule('Enums')

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

---@class Database: AceModule
local database = addon:GetModule('Database')

---@class Maps: AceModule
local maps = addon:GetModule('Maps')

---@class Session: AceModule
local session = addon:GetModule('Session')

-- TODO:Put this in a func
---@type AceGUIFrame
local frame = gui:Create('Window')
frame:SetTitle("Ride the Wind")
frame:SetLayout('Fill')

---@type AceGUISimpleGroup
local header = gui:Create('SimpleGroup')
header:SetFullWidth(true)
header:SetLayout('Flow')
frame:AddChild(header)

---@type AceGUILabel
header.name = gui:Create('Label')
header.name:SetText('Pin               Race - Zone')
header.name:SetRelativeWidth(0.6)
header.name:SetFontObject('GameFontHighlight')
header.name:SetColor(1, 1, 0)
header:AddChild(header.name)

---@type AceGUILabel
header.normal = gui:Create('Label')
header.normal:SetText('Normal')
header.normal:SetRelativeWidth(0.12)
header.normal:SetJustifyH('CENTER')
header.normal:SetFontObject('GameFontHighlight')
header.normal:SetColor(1, 1, 0)
header:AddChild(header.normal)

---@type AceGUILabel
header.advanced = gui:Create('Label')
header.advanced:SetText('Advanced')
header.advanced:SetRelativeWidth(0.12)
header.advanced:SetJustifyH('CENTER')
header.advanced:SetFontObject('GameFontHighlight')
header.advanced:SetColor(1, 1, 0)
header:AddChild(header.advanced)

---@type AceGUILabel
header.reversed = gui:Create('Label')
header.reversed:SetText('Reverse')
header.reversed:SetRelativeWidth(0.12)
header.reversed:SetJustifyH('CENTER')
header.reversed:SetFontObject('GameFontHighlight')
header.reversed:SetColor(1, 1, 0)
header:AddChild(header.reversed)

---@type AceGUISimpleGroup
frame.scrollContainer = gui:Create('SimpleGroup')
frame.scrollContainer:SetFullWidth(true)
frame.scrollContainer:SetFullHeight(true)
frame.scrollContainer:SetLayout('Fill')
header:AddChild(frame.scrollContainer)

---@type AceGUIScrollFrame
frame.scroll = gui:Create('ScrollFrame')
frame.scroll:SetLayout('Flow')
frame.scrollContainer:AddChild(frame.scroll)

frame:Hide()

function view:Show()
    frame:Show()
end

function view:Hide()
    frame:Hide()
end

---@return boolean
function view:IsShown()
    return frame:IsShown()
end

function view:Toggle()
    if view:IsShown() then
        view:Hide()
    else
        view:Show()
    end
end

-- Events

-- On Event > Check Race Stats
function events:ZONE_CHANGED_NEW_AREA()
    local zoneInfo = utils.GetDragonRacingZone()
    if zoneInfo == nil then return end

    local raceData = maps.Races[zoneInfo.id]
    if raceData == nil then return end

    for _, race in pairs(raceData) do
        ---@type Race
        local raceInfo = race
        local f = listItem.Create(raceInfo, nil)
        frame.scroll:AddChild(f)
    end

    frame:Show()
end

-- Set Global
function events:PLAYER_LOGIN()
    local playerName = resolver.GetPlayerName()

    local buffIDs = {}
    local iter = 1
    for _, zones in pairs(maps.Races) do
        for _, race in pairs(zones) do
            buffIDs[iter] = race.id
            iter = iter + 1
        end
    end

    session.raceIDs = buffIDs

    -- Check on Login
    local zoneInfo = utils.GetDragonRacingZone()
    if zoneInfo == nil then return end

    local raceData = maps.Races[zoneInfo.id]
    if raceData == nil then return end

    for _, race in pairs(raceData) do
        ---@type Race
        local raceInfo = race
        local raceStats = database:GetRaceDetailsById(raceInfo.id)
        local f = listItem.Create(raceInfo, raceStats)
        frame.scroll:AddChild(f)
    end

    -- frame:Show()
end

view:Enable()
