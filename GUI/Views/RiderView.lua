---@diagnostic disable: assign-type-mismatch
local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class RiderView: AceModule
local riderView = addon:NewModule('RiderView')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

-- TODO: Package these
local vigorWidgetID = 4460
local ascentSpellID = 372610
local ascentDuration = 3.5

---@class Speed
---@field updateHandler cbObject?
---@field lastSpeedTime number
---@field updatePeriod integer
---@field ascentStart number
---@field maxSampleSize integer
---@field currentSamples integer
---@field lastSpeed integer
---@field smoothSpeed integer
---@field smoothAccel integer
---@field lastAccel integer
---@field pollingRate integer

---@class Vigor
---@field vigorCount integer

---@class (exact) RiderViewData
---@field view Frame
---@field enabled boolean
---@field speed Speed
---@field vigor Vigor
local viewPrototype = {}

function riderView:OnInitialize()
    ---@type RiderViewData
    self.data = {
        view = {},
        enabled = false,
        speed = {
            updateHandler = nil,
            lastSpeedTime = 0,
            updatePeriod = 1 / 10,
            ascentStart = 0,
            maxSampleSize = 5,
            currentSamples = 0,
            lastSpeed = 0,
            smoothSpeed = 0,
            smoothAccel = 0,
            lastAccel = 0,
            pollingRate = 1 / 10
        },
        vigor = {
            vigorCount = 3
        }
    }

    self:Create()
end

local function CreateSpeedBar(parent)
    local speed = CreateFrame('Frame', nil, parent)
    speed:SetPoint('CENTER', parent, 'CENTER')
    speed:SetWidth(512)
    speed:SetHeight(256)

    local bg = speed:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(speed)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\speed_bg')

    -- bar
    ---@class StatusBar
    speed.bar = CreateFrame('StatusBar', nil, speed)
    speed.bar:SetAllPoints(speed)
    speed.bar:SetStatusBarTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\speed_bar')
    speed.bar:GetStatusBarTexture():SetHorizTile(false)
    speed.bar:SetStatusBarColor(1, 0, 0)

    Mixin(speed.bar, SmoothStatusBarMixin)
    speed.bar:SetMinMaxSmoothedValue(20, 100)
    speed.bar:SetSmoothedValue(0)

    parent.Speed = speed.bar

    local border = speed:CreateTexture(nil, 'BORDER')
    border:SetAllPoints(speed)
    border:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\speed_border')

    -- text
    speed.text = speed.bar:CreateFontString(nil, 'OVERLAY', 'GameFontNormalHuge3Outline')
    speed.text:SetPoint('CENTER', speed, 'CENTER', 0, -24)
    speed.text:SetWidth(400)
    speed.text:SetJustifyH('CENTER')
    speed.text:SetText('')

    parent.Text = speed.text
end

local function CreateVigorBar(parent)
    local vigor = CreateFrame('Frame', nil, parent)
    vigor:SetPoint('CENTER', parent, 'CENTER')
    vigor:SetWidth(512)
    vigor:SetHeight(256)

    local bg = vigor:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(vigor)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_bg')

    -- bar
    ---@class StatusBar
    vigor.bar = CreateFrame('StatusBar', nil, vigor)
    vigor.bar:SetAllPoints(vigor)
    vigor.bar:SetStatusBarTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_bar')
    vigor.bar:GetStatusBarTexture():SetHorizTile(false)
    vigor.bar:SetStatusBarColor(1, 0, 0)

    Mixin(vigor.bar, SmoothStatusBarMixin)
    vigor.bar:SetMinMaxSmoothedValue(-8, 108)
    vigor.bar:SetSmoothedValue(0)

    parent.Vigor = vigor.bar

    local border = vigor:CreateTexture(nil, 'BORDER')
    border:SetAllPoints(vigor)
    border:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_border')

    local ticks = vigor.bar:CreateTexture(nil, 'BORDER')
    ticks:SetDrawLayer('OVERLAY')
    ticks:SetAllPoints(vigor.bar)
    ticks:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_6')

    parent.VigorTicks = ticks
end

-- No AceGUI here
function riderView:Create()
    ---@class Frame
    ---@field Speed StatusBar
    ---@field SpeedText FontString
    ---@field Vigor StatusBar
    ---@field VigorTicks Texture
    local w = CreateFrame('Frame', nil, UIParent)
    w:SetWidth(512)
    w:SetHeight(256)
    w:SetScale(0.60)
    w:SetPoint('CENTER', 0, -500)

    -- Speed
    CreateSpeedBar(w)

    -- Vigor
    CreateVigorBar(w)

    self.data.view = w

    self.data.view.Speed = w.Speed
    self.data.view.SpeedText = w.Text
    self.data.view.Vigor = w.Vigor
    self.data.view.VigorTicks = w.VigorTicks

    self.data.view:Hide()
end

---@return cbObject
function riderView:GetUpdateHandler()
    return C_Timer.NewTicker(self.data.speed.pollingRate, function()
        self:SpeedTest()
    end)
end

function riderView:Update()
    if not self.data.view:IsShown() then
        self.data.view:Show()
    end

    self.data.view.Speed:SetSmoothedValue(self.data.speed.smoothSpeed)

    local speedDiv = self.data.speed.smoothSpeed * 0.01
    self.data.view.Speed:SetStatusBarColor(0, speedDiv, 1 - speedDiv, 0.75)
    if self.data.speed.smoothSpeed > 0 then
        local formatSpeed = string.format('%.0f%%', self.data.speed.smoothSpeed * 100 / 7)
        self.data.view.SpeedText:SetText(formatSpeed)
    else
        self.data.view.SpeedText:SetText('')
    end
end

function riderView:UpdateVigorTicks(ticks)
    self.data.vigor.vigorCount = ticks
    self.data.view.VigorTicks:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_' .. ticks)
end

-- Speed check
function riderView:SpeedTest()
    local time = GetTime()
    local speed = self.data.speed

    local delta = time - speed.lastSpeedTime
    if delta < speed.updatePeriod then
        return
    end

    speed.lastSpeedTime = time

    local isGliding, canGlide, forwardSpeed = C_PlayerInfo.GetGlidingInfo()
    local thrill = C_UnitAuras.GetPlayerAuraBySpellID(377234)
    local isBoosting = thrill and time < speed.ascentStart + ascentDuration

    -- Smooth Speed
    speed.currentSamples = math.min(speed.maxSampleSize, speed.currentSamples + 1)
    local lastWeight = (speed.currentSamples - 1) / speed.currentSamples
    local newWeight = 1 / speed.currentSamples

    speed.smoothSpeed = forwardSpeed

    local newAccel = forwardSpeed - speed.lastSpeed
    speed.lastSpeed = forwardSpeed

    -- Smooth Accel
    speed.smoothAccel = speed.smoothAccel * lastWeight + newAccel + newWeight
    if forwardSpeed > 63 then
        speed.smoothAccel = max(0, speed.smoothAccel)
    end

    if not IsFlying() then
        speed.smoothAccel = 0
    end

    speed.lastAccel = speed.smoothAccel

    self:Update()
end

function events:UNIT_SPELLCAST_SUCCEEDED(_, _, spellID)
    if spellID == ascentSpellID then
        riderView.data.speed.ascentStart = GetTime()
    end
end

function events:UNIT_POWER_BAR_SHOW()
    if UnitPowerBarID(631) then
        riderView.data.enabled = true
        riderView.data.speed.updateHandler = riderView:GetUpdateHandler()
    end
end

function events:UNIT_POWER_BAR_HIDE()
    if UnitPowerBarID(631) == 0 then
        riderView.data.enabled = false

        if riderView.data.speed.updateHandler ~= nil then
            riderView.data.speed.updateHandler:Cancel()
            riderView.data.speed.updateHandler = nil
        end
    end

    riderView.data.view:Hide()
end

function events:UPDATE_UI_WIDGET(_, widgetInfo)
    if widgetInfo and widgetInfo.widgetID ~= vigorWidgetID then return end

    local widgetData = C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo(vigorWidgetID)
    if not widgetData then return end

    if riderView.data.vigor.vigorCount ~= widgetData.numTotalFrames then
        riderView:UpdateVigorTicks(widgetData.numTotalFrames)
    end

    -- Okay, so totalFrames = the amount of Vigorses
    if widgetData.numFullFrames >= widgetData.numTotalFrames then
        riderView.data.view.Vigor:SetSmoothedValue(100)
        riderView.data.view.Vigor:SetStatusBarColor(0, 1, 0, 1)
        return
    end

    local perc = 0
    local mp = 100 / widgetData.numTotalFrames

    for i = 1, widgetData.numTotalFrames do
        if widgetData.numFullFrames >= i then
            perc = perc + mp
        elseif widgetData.numFullFrames + 1 == i then
            -- fillValue == 0 <> 100
            perc = perc + (mp * (widgetData.fillValue * .01))
        end
    end

    riderView.data.view.Vigor:SetSmoothedValue(perc)
    local color = utils:GetSmudgeColorRGB({ r = 1, g = 0, b = 0 }, { r = 0, g = 1, b = 0 }, perc / 100)
    riderView.data.view.Vigor:SetStatusBarColor(color.r, color.g, color.b, 0.75)
end

riderView:Enable()
