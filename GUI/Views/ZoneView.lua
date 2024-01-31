---@diagnostic disable: assign-type-mismatch
local addonName = ... ---@type string
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local gui = LibStub('AceGUI-3.0')

---@class ZoneView: AceModule
local zoneView = addon:NewModule('ZoneView')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class Maps: AceModule
local maps = addon:GetModule('Maps')

---@class Database: AceModule
local database = addon:GetModule('Database')

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

---@class SimpleRaceItem: AceModule
local simpleRaceItem = addon:GetModule('SimpleRaceItem')

---@class (exact) View
---@field view AceGUIFrame
---@field races Race[]
---@field currentZone integer
local viewPrototype = {}

function zoneView:OnInitialize()
    ---@type View
    self.data = {
        view = {},
        currentZone = 0,
        races = {}
    }

    self:Create()
end

function zoneView:Create()
    local position = database:GetZoneViewPosition()
    local font = database:GetZoneViewFont()

    ---@class AceGUIFrame
    ---@field frame Frame
    ---@field closebutton Button
    ---@field title Frame
    ---@field titletext FontString
    ---@field localstatus table
    local view = gui:Create('Window')
    view:SetWidth(240)
    view:SetLayout('Flow')
    view:EnableResize(false)
    -- view.closebutton:Hide()
    view.frame:DisableDrawLayer('BACKGROUND')
    view.frame:DisableDrawLayer('BORDER')
    view.titletext:SetFont(font.path, 16, 'OUTLINE')
    view.title:HookScript('OnMouseUp', function()
        database:SaveZoneViewPosition(view.localstatus.left, view.localstatus.top)
    end)

    local bgColor = database:GetZoneViewColor()

    local viewTex = view.frame:CreateTexture(nil, 'ARTWORK')
    viewTex:SetAllPoints(view.frame)
    viewTex:SetColorTexture(bgColor.r, bgColor.g, bgColor.b, bgColor.a)
    view.BackgroundColor = viewTex

    ---@class AceGUISimpleGroup
    local header = gui:Create('SimpleGroup')
    header:SetFullWidth(true)
    header:SetLayout('Flow')
    view:AddChild(header)

    --#region List Header

    ---@class AceGUISimpleGroup
    ---@field frame Frame
    local listHeader = gui:Create('SimpleGroup')
    listHeader:SetLayout('Flow')
    listHeader:SetFullWidth(true)
    local tex = listHeader.frame:CreateTexture(nil, 'BACKGROUND')
    tex:SetPoint('TOPLEFT', listHeader.frame, 'TOPLEFT', -14, 1)
    tex:SetPoint('BOTTOMRIGHT', listHeader.frame, 'BOTTOMRIGHT', 14, -4)
    tex:SetTexture('Interface\\Addons\\RideTheWind\\Media\\Doublefade')
    tex:SetVertexColor(0, 0.6, 1, 1)

    header:AddChild(listHeader)

    ---@class AceGUILabel
    local name = gui:Create('Label')
    name:SetText('Normal')
    name:SetJustifyH('CENTER')
    name:SetJustifyV('TOP')
    name:SetFont(font.path, 14, 'OUTLINE')
    name:SetRelativeWidth(0.3)
    listHeader.Name = name
    listHeader:AddChild(name)

    ---@class AceGUILabel
    local advanced = gui:Create('Label')
    advanced:SetText('Advanced')
    advanced:SetJustifyH('CENTER')
    advanced:SetJustifyV('TOP')
    advanced:SetFont(font.path, 14, 'OUTLINE')
    advanced:SetRelativeWidth(0.35)
    listHeader.Advanced = advanced
    listHeader:AddChild(advanced)

    ---@class AceGUILabel
    local reverse = gui:Create('Label')
    reverse:SetText('Reverse')
    reverse:SetJustifyH('RIGHT')
    reverse:SetJustifyV('TOP')
    reverse:SetFont(font.path, 14, 'OUTLINE')
    reverse:SetRelativeWidth(0.3)
    listHeader.Reverse = reverse
    listHeader:AddChild(reverse)

    view.ListHeader = listHeader

    --#endregion

    ---@type AceGUISimpleGroup
    local container = gui:Create('SimpleGroup')
    container:SetFullWidth(true)
    container:SetLayout('Fill')
    header:AddChild(container)

    view.ScrollHeight = function(val)
        container:SetHeight(val)
    end

    ---@class AceGUIScrollFrame
    ---@field children table
    local scroll = gui:Create('ScrollFrame')
    scroll:SetLayout('Flow')
    container:AddChild(scroll)

    view.ScrollContainer = scroll

    self.data.view = view
    self.data.view.frame:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', position.X, position.Y)
    self.data.view.frame:Hide()
end

function zoneView:Update()
    local zoneInfo = utils.GetDragonRacingZone()
    if zoneInfo == nil then return end

    -- No need to refresh if the *main* zone didn't change
    if zoneView.data.currentZone == zoneInfo.id then return end

    local raceData = maps.Races[zoneInfo.id]
    if raceData == nil then return end

    zoneView:UpdateRaces(raceData)

    if database:GetZoneViewEnabled() ~= true then return end

    if self.data == nil then return end

    self.data.view:SetTitle(resolver.GetMapName(self.data.races[1].zone))

    self.data.view.ScrollContainer:ReleaseChildren()

    local index = 1
    for _, race in pairs(self.data.races) do
        local widget = simpleRaceItem:Create()
        local raceStats = database:GetRaceDetailsById(race.id)
        simpleRaceItem.Build(widget, race, raceStats)

        self.data.view.ScrollContainer:AddChild(widget)

        index = index + 1
    end

    local scrollKids = self.data.view.ScrollContainer.children
    if #scrollKids > 0 then
        local calculatedHeight = #scrollKids * (scrollKids[1].frame:GetHeight() + 4)
        self.data.view.ScrollHeight(calculatedHeight)
        self.data.view:SetHeight(calculatedHeight + 70)
    end

    self.data.view.frame:Show()
end

---@param color { R:integer, G:integer, B:integer, A:integer }
function zoneView:UpdateColor(color)
    self.data.view.BackgroundColor:SetColorTexture(color.R, color.G, color.B, color.A)
end

function zoneView:UpdateFont(fontPath)
    self.data.view.titletext:SetFont(fontPath, 16, 'OUTLINE')

    self.data.view.ListHeader.Name:SetFont(fontPath, 14, 'OUTLINE')
    self.data.view.ListHeader.Advanced:SetFont(fontPath, 14, 'OUTLINE')
    self.data.view.ListHeader.Reverse:SetFont(fontPath, 14, 'OUTLINE')

    for _, widget in pairs(self.data.view.ScrollContainer.children) do
        widget.Name:SetFont(fontPath, 16, 'OUTLINE')
    end
end

function zoneView:UpdateRaces(raceData)
    self.data.races = raceData
end

function zoneView:Show()
    self.data.view:Show()
end

function events:ACHIEVEMENT_EARNED()
    zoneView:Update()
end

function events:ZONE_CHANGED_NEW_AREA()
    zoneView:Update()
end

function events:VARIABLES_LOADED()
    zoneView:Update()
end

zoneView:Enable()
