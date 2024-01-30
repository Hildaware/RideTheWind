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

---@class Pooling: AceModule
local pooling = addon:GetModule('Pooling')

---@class SimpleRaceItem: AceModule
local simpleRaceItem = addon:GetModule('SimpleRaceItem')

---@class (exact) View
---@field view AceGUIFrame
---@field pool Pool
---@field races Race[]
---@field currentZone integer
local viewPrototype = {}

function zoneView:OnInitialize()
    ---@type View
    self.data = {
        pool = pooling.Pool.New(),
        view = {},
        currentZone = 0,
        races = {}
    }

    self:Create()
end

function zoneView:Create()
    local position = database:GetZoneViewPosition()

    ---@class AceGUIFrame
    ---@field frame Frame
    ---@field closebutton Button
    ---@field title Frame
    ---@field localstatus table
    local view = gui:Create('Window')
    view:SetWidth(240)
    view:SetLayout('Flow')
    view:EnableResize(false)
    view.closebutton:Hide()
    view.frame:DisableDrawLayer('BACKGROUND')
    view.frame:DisableDrawLayer('BORDER')
    view.title:HookScript('OnMouseUp', function()
        database:SaveZoneViewPosition(view.localstatus.left, view.localstatus.top)
    end)

    local viewTex = view.frame:CreateTexture(nil, 'ARTWORK')
    viewTex:SetAllPoints(view.frame)
    viewTex:SetColorTexture(0, 0, 0, 0.25) -- TODO: Setting

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
    name:SetFont('Interface\\Addons\\RideTheWind\\Fonts\\AccidentalPresidency.ttf', 14, 'OUTLINE')
    name:SetRelativeWidth(0.3)
    listHeader:AddChild(name)

    ---@class AceGUILabel
    local advanced = gui:Create('Label')
    advanced:SetText('Advanced')
    advanced:SetJustifyH('CENTER')
    advanced:SetJustifyV('TOP')
    advanced:SetFont('Interface\\Addons\\RideTheWind\\Fonts\\AccidentalPresidency.ttf', 14, 'OUTLINE')
    advanced:SetRelativeWidth(0.35)
    listHeader:AddChild(advanced)

    ---@class AceGUILabel
    local reverse = gui:Create('Label')
    reverse:SetText('Reverse')
    reverse:SetJustifyH('RIGHT')
    reverse:SetJustifyV('TOP')
    reverse:SetFont('Interface\\Addons\\RideTheWind\\Fonts\\AccidentalPresidency.ttf', 14, 'OUTLINE')
    reverse:SetRelativeWidth(0.3)
    listHeader:AddChild(reverse)

    --#endregion

    ---@type AceGUISimpleGroup
    local container = gui:Create('SimpleGroup')
    container:SetFullWidth(true)
    container:SetHeight(800)
    container:SetLayout('Fill')
    header:AddChild(container)

    ---@class AceGUIScrollFrame
    local scroll = gui:Create('ScrollFrame')
    scroll:SetLayout('Flow')
    container:AddChild(scroll)

    view.ScrollContainer = scroll

    self.data.view = view
    self.data.view.frame:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', position.X, position.Y)
    self.data.view.frame:Hide()
end

function zoneView:Update()
    if self.data == nil then return end

    self.data.view:SetTitle(resolver.GetMapName(self.data.races[1].zone))

    -- Cleanup the pool
    Pool.Cleanup(self.data.pool)
    self.data.view.ScrollContainer:ReleaseChildren()

    local index = 1
    for _, race in pairs(self.data.races) do
        local frame = Pool.FetchInactive(self.data.pool, index, simpleRaceItem.Create)
        Pool.InsertActive(self.data.pool, frame, index)
        local raceStats = database:GetRaceDetailsById(race.id)
        simpleRaceItem.Build(frame, race, raceStats)

        self.data.view.ScrollContainer:AddChild(frame)

        index = index + 1
    end

    self.data.view.frame:Show()
end

function events:ZONE_CHANGED()
    -- TODO: Auto-Show toggle
    local zoneInfo = utils.GetDragonRacingZone()
    if zoneInfo == nil then return end

    -- No need to refresh if the *main* zone didn't change
    if zoneView.data.currentZone == zoneInfo.id then return end

    local raceData = maps.Races[zoneInfo.id]
    if raceData == nil then return end

    zoneView.data.races = raceData
    zoneView:Update()
end

function events:VARIABLES_LOADED()
    local zoneInfo = utils.GetDragonRacingZone()
    if zoneInfo == nil then return end

    -- No need to refresh if the *main* zone didn't change
    if zoneView.data.currentZone == zoneInfo.id then return end

    local raceData = maps.Races[zoneInfo.id]
    if raceData == nil then return end

    zoneView.data.races = raceData
    zoneView:Update()
end

zoneView:Enable()
