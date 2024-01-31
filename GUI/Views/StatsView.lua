---@diagnostic disable: assign-type-mismatch
local addonName = ... ---@type string
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local gui = LibStub('AceGUI-3.0')

---@class StatsView: AceModule
local statsView = addon:NewModule('StatsView')

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

---@class (exact) StatsViewData
---@field view AceGUIFrame
local viewPrototype = {}

function statsView:OnInitialize()
    ---@type StatsViewData
    self.data = {
        view = {}
    }

    self:Create()
end

function statsView:Create()
    ---@type AceGUIFrame
    local frame = gui:Create('Window')
    frame:SetTitle("Ride the Wind - Races")
    frame:SetLayout('Fill')
    frame:SetWidth(800)
    frame.frame:SetResizeBounds(800, 400)

    ---@type AceGUISimpleGroup
    local header = gui:Create('SimpleGroup')
    header:SetFullWidth(true)
    header:SetLayout('Flow')
    frame:AddChild(header)

    ---@type AceGUILabel
    header.name = gui:Create('Label')
    header.name:SetText('Pin               Race - Zone')
    header.name:SetRelativeWidth(0.43)
    header.name:SetFontObject('GameFontHighlight')
    header.name:SetColor(1, 1, 0)
    header:AddChild(header.name)

    ---@type AceGUILabel
    header.normal = gui:Create('Label')
    header.normal:SetText('Normal')
    header.normal:SetRelativeWidth(0.1)
    header.normal:SetJustifyH('CENTER')
    header.normal:SetFontObject('GameFontHighlight')
    header.normal:SetColor(1, 1, 0)
    header:AddChild(header.normal)

    ---@type AceGUILabel
    header.advanced = gui:Create('Label')
    header.advanced:SetText('Advanced')
    header.advanced:SetRelativeWidth(0.1)
    header.advanced:SetJustifyH('CENTER')
    header.advanced:SetFontObject('GameFontHighlight')
    header.advanced:SetColor(1, 1, 0)
    header:AddChild(header.advanced)

    ---@type AceGUILabel
    header.reversed = gui:Create('Label')
    header.reversed:SetText('Reverse')
    header.reversed:SetRelativeWidth(0.1)
    header.reversed:SetJustifyH('CENTER')
    header.reversed:SetFontObject('GameFontHighlight')
    header.reversed:SetColor(1, 1, 0)
    header:AddChild(header.reversed)

    ---@type AceGUILabel
    header.challenge = gui:Create('Label')
    header.challenge:SetText('Challenge')
    header.challenge:SetRelativeWidth(0.1)
    header.challenge:SetJustifyH('CENTER')
    header.challenge:SetFontObject('GameFontHighlight')
    header.challenge:SetColor(1, 1, 0)
    header:AddChild(header.challenge)

    ---@type AceGUILabel
    header.challengeReverse = gui:Create('Label')
    header.challengeReverse:SetText('Challenge Reverse')
    header.challengeReverse:SetRelativeWidth(0.15)
    header.challengeReverse:SetJustifyH('CENTER')
    header.challengeReverse:SetFontObject('GameFontHighlight')
    header.challengeReverse:SetColor(1, 1, 0)
    header:AddChild(header.challengeReverse)

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
    frame.ScrollContainer = frame.scroll

    self.data.view = frame

    self.data.view.frame:Hide()
end

function statsView:Show()
    self.data.view.ScrollContainer:ReleaseChildren()

    -- Gather Data
    for _, races in pairs(maps.Races) do
        for _, race in pairs(races) do
            ---@type Race
            local raceInfo = race
            local raceStats = database:GetRaceDetailsById(raceInfo.id)
            local widget = listItem.Create(raceInfo, raceStats)
            self.data.view.ScrollContainer:AddChild(widget)
        end
    end

    self.data.view:Show()
end

function statsView:Hide()
    self.data.view:Hide()
end

---@return boolean
function statsView:IsShown()
    return self.data.view:IsShown()
end

function statsView:Toggle()
    if statsView:IsShown() then
        statsView:Hide()
    else
        statsView:Show()
    end
end

statsView:Enable()
