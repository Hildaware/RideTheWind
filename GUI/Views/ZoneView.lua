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

---@class Session: AceModule
local session = addon:GetModule('Session')

---@class SimpleRaceItem: AceModule
local simpleRaceItem = addon:GetModule('SimpleRaceItem')

---@class (exact) ZoneViewData
---@field view AceGUIFrame
---@field races Race[]
---@field currentZone integer
local viewPrototype = {}

function zoneView:OnInitialize()
    ---@type ZoneViewData
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
    ---@field title Frame
    ---@field titletext FontString
    ---@field closebutton Button
    ---@field localstatus table
    local view = gui:Create('Window')
    view:SetWidth(240)
    view:SetLayout('Flow')
    view:EnableResize(false)
    view.frame:DisableDrawLayer('BACKGROUND')
    view.frame:DisableDrawLayer('BORDER')
    view.titletext:SetFont(font.path, 16, 'OUTLINE')
    view.title:HookScript('OnMouseUp', function()
        database:SaveZoneViewPosition(view.localstatus.left, view.localstatus.top)
    end)

    view.closebutton:HookScript('OnClick', function()
        session.zoneView.hide = true
    end)
    view.closebutton:HookScript('OnEnter', function(self)
        GameTooltip:SetOwner(self, 'ANCHOR_TOP')
        GameTooltip:SetText('Closing the window will Hide this window for the current session.')
        GameTooltip:Show()
    end)
    view.closebutton:HookScript('OnLeave', function()
        GameTooltip:Hide()
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

    local normal = zoneView:CreateHeader('N', 'Normal Course', font.path)
    listHeader.Normal = normal
    listHeader:AddChild(normal)

    local advanced = zoneView:CreateHeader('A', 'Advanced Course', font.path)
    listHeader.Advanced = advanced
    listHeader:AddChild(advanced)

    local reverse = zoneView:CreateHeader('R', 'Reverse Course', font.path)
    listHeader.Reverse = reverse
    listHeader:AddChild(reverse)

    local challenge = zoneView:CreateHeader('C', 'Challenge Course', font.path)
    listHeader.Challenge = challenge
    listHeader:AddChild(challenge)

    local challengeReverse = zoneView:CreateHeader('CR', 'Challenge Reverse Course', font.path)
    listHeader.ChallengeReverse = challengeReverse
    listHeader:AddChild(challengeReverse)


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

    local raceData = maps.Races[zoneInfo.id]
    if raceData == nil then return end

    zoneView:UpdateRaces(raceData)

    if self.data == nil then return end

    if zoneInfo.isCup == true then
        if resolver.IsRaceHoliday() == zoneInfo.id then
            self.data.view:SetTitle(zoneInfo.name)
        end
    else
        self.data.view:SetTitle(resolver.GetMapName(self.data.races[1].zone))
    end

    self.data.view.ScrollContainer:ReleaseChildren()

    for _, race in pairs(self.data.races) do
        local widget = simpleRaceItem:Create()
        local raceStats = database:GetRaceDetailsById(race.id)
        simpleRaceItem.Build(widget, race, raceStats)

        self.data.view.ScrollContainer:AddChild(widget)
    end

    local scrollKids = self.data.view.ScrollContainer.children
    if #scrollKids > 0 then
        local calculatedHeight = #scrollKids * (scrollKids[1].frame:GetHeight() + 4)
        self.data.view.ScrollHeight(calculatedHeight)
        self.data.view:SetHeight(calculatedHeight + 70)
    end

    if self:ShouldShowView() then
        self.data.view.frame:Show()
    end
end

---@param label string
---@param tooltipText string
---@param fontPath string
---@return AceGUIInteractiveLabel
function zoneView:CreateHeader(label, tooltipText, fontPath)
    ---@class AceGUIInteractiveLabel
    local widget = gui:Create('InteractiveLabel')
    widget:SetText(label)
    widget:SetJustifyH('CENTER')
    widget:SetJustifyV('TOP')
    widget:SetFont(fontPath, 14, 'OUTLINE')
    widget:SetRelativeWidth(0.2)
    widget:SetCallback('OnEnter', function(self)
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        GameTooltip:SetText(tooltipText)
        GameTooltip:Show()
    end)
    widget:SetCallback('OnLeave', function(self)
        GameTooltip:Hide()
    end)

    return widget
end

---@param color { R:integer, G:integer, B:integer, A:integer }
function zoneView:UpdateColor(color)
    self.data.view.BackgroundColor:SetColorTexture(color.R, color.G, color.B, color.A)
end

function zoneView:UpdateFont(fontPath)
    self.data.view.titletext:SetFont(fontPath, 16, 'OUTLINE')

    self.data.view.ListHeader.Normal:SetFont(fontPath, 14, 'OUTLINE')
    self.data.view.ListHeader.Advanced:SetFont(fontPath, 14, 'OUTLINE')
    self.data.view.ListHeader.Reverse:SetFont(fontPath, 14, 'OUTLINE')
    self.data.view.ListHeader.Challenge:SetFont(fontPath, 14, 'OUTLINE')
    self.data.view.ListHeader.ChallengeReverse:SetFont(fontPath, 14, 'OUTLINE')

    for _, widget in pairs(self.data.view.ScrollContainer.children) do
        widget.Name:SetFont(fontPath, 16, 'OUTLINE')
    end
end

function zoneView:UpdateRaces(raceData)
    self.data.races = raceData
end

function zoneView:Show()
    database:SetZoneViewEnabled(true)
    session.zoneView.hide = false
    self.data.view:Show()
end

function zoneView:Hide()
    self.data.view:Hide()
end

---@return boolean
function zoneView:IsShown()
    return self.data.view:IsShown()
end

function zoneView:Toggle()
    if zoneView:IsShown() then
        zoneView:Hide()
    else
        zoneView:Show()
    end
end

---@return boolean
function zoneView:ShouldShowView()
    if database:GetZoneViewEnabled() ~= true then return false end
    if session.zoneView.hide == true then return false end
    return true
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

function events:TRACKED_ACHIEVEMENT_UPDATE()
    zoneView:Update()
end

zoneView:Enable()
