---@diagnostic disable: assign-type-mismatch
local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class HeadsUpView: AceModule
local headsUpView = addon:NewModule('HeadsUpView')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class Database: AceModule
local database = addon:GetModule('Database')

---@class SpeedData
---@field updateHandler cbObject?
---@field currentSamples integer
---@field lastSpeedTime number
---@field lastSpeed integer
---@field lastAccel integer

---@class SpeedConstants
---@field updatePeriod integer
---@field maxSampleSize integer
---@field pollingRate integer
---@field ascentSpellID integer
---@field ascentDuration integer

---@class Speed
---@field constants SpeedConstants
---@field data SpeedData
---@field ascentStart number
---@field smoothSpeed integer
---@field smoothAccel integer
---@field momentum boolean

---@class Vigor
---@field vigorCount integer
---@field thrillInstance number?
---@field widgetID integer
---@field thrillSpellID integer

---@class SpellCooldown
---@field id integer
---@field cooldown integer
---@field currentCooldown integer?

---@class Cooldowns
---@field whirlingSurge SpellCooldown
---@field secondWind SpellCooldown

---@class (exact) HeadsUpViewData
---@field view Frame
---@field speed Speed
---@field vigor Vigor
---@field cooldowns Cooldowns
---@field enabled boolean
---@field shouldShow boolean
local viewPrototype = {}

function headsUpView:OnInitialize()
    ---@type HeadsUpViewData
    self.data = {
        view = {},
        enabled = false,
        shouldShow = false,
        speed = {
            constants = {
                updatePeriod = 1 / 10,
                maxSampleSize = 5,
                pollingRate = 1 / 10,
                ascentSpellID = 372610,
                ascentDuration = 3.5
            },
            data = {
                updateHandler = nil,
                currentSamples = 0,
                lastSpeedTime = 0,
                lastSpeed = 0,
                lastAccel = 0,
            },
            ascentStart = 0,
            smoothSpeed = 0,
            smoothAccel = 0,
            momentum = false
        },
        vigor = {
            vigorCount = 3,
            thrillInstance = nil,
            widgetID = 4460,
            thrillSpellID = 377234
        },
        cooldowns = {
            whirlingSurge = {
                id = 361584,
                cooldown = 30.0,
                currentCooldown = nil
            },
            secondWind = {
                id = 425782,
                cooldown = 540.0,
                currentCooldown = nil,
                charges = 3,
                currentCharges = nil,
                usedCharge = false
            },
        }
    }

    self:Create()
end

local function CreateSpeedBar(parent)
    local speed = CreateFrame('Frame', nil, parent)
    speed:SetPoint('CENTER', parent, 'CENTER')
    speed:SetWidth(512)
    speed:SetHeight(256)
    speed:SetFrameLevel(4)

    local bg = speed:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(speed)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\speed_bg')

    -- bar
    ---@class StatusBar
    ---@field SetMinMaxSmoothedValue function
    ---@field SetSmoothedValue function
    speed.bar = CreateFrame('StatusBar', nil, speed)
    speed.bar:SetAllPoints(speed)
    speed.bar:SetStatusBarTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\speed_bar')
    speed.bar:GetStatusBarTexture():SetHorizTile(false)
    speed.bar:SetStatusBarColor(1, 0, 0)

    Mixin(speed.bar, SmoothStatusBarMixin)
    speed.bar:SetMinMaxSmoothedValue(0, 100)
    speed.bar:SetSmoothedValue(0)

    parent.Speed = speed.bar

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
    vigor:SetFrameLevel(3)

    local bg = vigor:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(vigor)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_bg')

    -- bar
    ---@class StatusBar
    vigor.bar = CreateFrame('StatusBar', nil, vigor)
    vigor.bar:SetAllPoints(vigor)
    vigor.bar:SetStatusBarTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_bar')
    vigor.bar:GetStatusBarTexture():SetHorizTile(false)
    vigor.bar:SetStatusBarColor(0.5, 1, 0.5, 0.75)

    Mixin(vigor.bar, SmoothStatusBarMixin)
    vigor.bar:SetMinMaxSmoothedValue(-16, 116)
    vigor.bar:SetSmoothedValue(0)

    local glow = vigor.bar:CreateTexture(nil, 'BORDER')
    glow:SetDrawLayer('OVERLAY', 0)
    glow:SetAllPoints(vigor.bar)
    glow:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_glow')
    glow:SetVertexColor(0.5, 0.5, 1, 0.75)
    glow:Hide()
    parent.Glow = glow

    local thrillGlow = vigor.bar:CreateTexture(nil, 'BORDER')
    thrillGlow:SetDrawLayer('OVERLAY', 1)
    thrillGlow:SetAllPoints(vigor.bar)
    thrillGlow:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_glow')
    thrillGlow:SetVertexColor(1, 0.5, 0.5, 0.75)
    thrillGlow:Hide()
    parent.Momentum = thrillGlow

    parent.Vigor = vigor.bar

    local ticks = vigor.bar:CreateTexture(nil, 'BORDER')
    ticks:SetDrawLayer('OVERLAY')
    ticks:SetAllPoints(vigor.bar)
    ticks:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_6')

    parent.VigorTicks = ticks
end

local function CalculateSecondWindCooldown()
    local current, max, startTime, _, _ = GetSpellCharges(headsUpView.data.cooldowns.secondWind.id)
    headsUpView.data.cooldowns.secondWind.currentCharges = current

    -- calc
    local cdLeft = GetTime() - startTime
    local currentChargeCD = (headsUpView.data.cooldowns.secondWind.cooldown / 3) - cdLeft

    local missingCharges = max - (current + 1)
    local missingChargeCD = (headsUpView.data.cooldowns.secondWind.cooldown / 3) * missingCharges

    local currentCD = missingChargeCD + currentChargeCD

    headsUpView.data.cooldowns.secondWind.currentCooldown = currentCD
end

function headsUpView:Create()
    local position = database:GetHeadsUpViewPosition()
    local scale = database:GetHeadsUpViewScale()
    local isLocked = database:GetHeadsUpViewLocked()

    ---@class Frame
    ---@field Speed StatusBar
    ---@field SpeedText FontString
    ---@field Vigor StatusBar
    ---@field VigorTicks Texture
    ---@field Glow Texture
    ---@field Momentum Texture
    ---@field SecondWind Frame
    ---@field WhirlingSurge Frame
    local w = CreateFrame('Frame', nil, UIParent)
    w:SetWidth(512)
    w:SetHeight(256)
    w:SetScale(0.60 * scale)
    w:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', position.X, position.Y)
    w:SetMovable(not isLocked)
    w:EnableMouse(not isLocked)

    w:RegisterForDrag('LeftButton')
    w:SetScript('OnDragStart', function(self, button)
        if self:IsMovable() then
            self:StartMoving()
        end
    end)
    w:SetScript('OnDragStop', function(self)
        self:StopMovingOrSizing()
        local x = self:GetLeft()
        local y = self:GetTop()
        database:SetHeadsUpViewPosition(x, y)
    end)
    -- Vigor
    CreateVigorBar(w)

    --#region Second Wind

    local sw = CreateFrame('Frame', nil, w)
    sw:SetPoint('BOTTOMLEFT', w, 'BOTTOMLEFT', 72, 24)
    sw:SetWidth(128)
    sw:SetHeight(128)
    sw:SetScale(0.9)
    sw:SetFrameLevel(0)
    sw:SetScript('OnShow', function()
        local charges, max, startTime, _, _ = GetSpellCharges(self.data.cooldowns.secondWind.id)
        self.data.cooldowns.secondWind.currentCharges = charges
        if max > charges then
            local cdLeft = GetTime() - startTime
            local currentChargeCD = (self.data.cooldowns.secondWind.cooldown / 3) - cdLeft

            local missingCharges = max - (charges + 1)
            local missingChargeCD = (self.data.cooldowns.secondWind.cooldown / 3) * missingCharges

            local currentCD = missingChargeCD + currentChargeCD

            if cdLeft <= 0 or cdLeft > self.data.cooldowns.secondWind.cooldown then
                return
            end

            self.data.cooldowns.secondWind.currentCooldown = currentCD
        end
    end)
    sw:SetScript('OnUpdate', function(_, elapsed)
        if self.data.cooldowns.secondWind.usedCharge then
            CalculateSecondWindCooldown()
            self.data.cooldowns.secondWind.usedCharge = false
        end
        local cooldown = self.data.cooldowns.secondWind.currentCooldown
        local max = self.data.cooldowns.secondWind.cooldown
        if cooldown then
            self.data.cooldowns.secondWind.currentCooldown = cooldown - elapsed

            if cooldown <= 0.0 then
                self.data.cooldowns.secondWind.currentCooldown = nil
                self.data.view.SecondWind.bar:SetSmoothedValue(0)
                self.data.view.SecondWind:SetAlpha(0)
                return
            end

            local num = self.data.cooldowns.secondWind.cooldown -
                self.data.cooldowns.secondWind.currentCooldown
            local perc = num / max * 100
            self.data.view.SecondWind:SetAlpha(1)
            self.data.view.SecondWind.bar:SetSmoothedValue(perc)
        else
            self.data.view.SecondWind:SetAlpha(0)
        end
    end)

    local bg = sw:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(sw)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\second_wind_bg')

    -- bar
    ---@class StatusBar
    sw.bar = CreateFrame('StatusBar', nil, sw)
    sw.bar:SetAllPoints(sw)
    sw.bar:SetFrameLevel(1)
    sw.bar:SetStatusBarTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\second_wind_bar')
    sw.bar:GetStatusBarTexture():SetHorizTile(false)
    sw.bar:SetStatusBarColor(0.75, 0.5, 0.85, 0.75)

    Mixin(sw.bar, SmoothStatusBarMixin)
    sw.bar:SetMinMaxSmoothedValue(-15, 115)
    sw.bar:SetSmoothedValue(0)

    local ticks = sw.bar:CreateTexture(nil, 'BORDER')
    ticks:SetDrawLayer('OVERLAY')
    ticks:SetAllPoints(sw.bar)
    ticks:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\second_wind_splits')

    --#endregion

    --#region Whirling Surge

    local ws = CreateFrame('Frame', nil, w)
    ws:SetPoint('BOTTOMRIGHT', w, 'BOTTOMRIGHT', -72, 24)
    ws:SetWidth(128)
    ws:SetHeight(128)
    ws:SetScale(0.9)
    ws:SetFrameLevel(0)
    ws:SetScript('OnShow', function()
        local startTime, _, _ = GetSpellCooldown(self.data.cooldowns.whirlingSurge.id)
        local cdLeft = GetTime() - startTime
        if cdLeft <= 0 or cdLeft > self.data.cooldowns.whirlingSurge.cooldown then
            return
        end
        local currentCD = self.data.cooldowns.whirlingSurge.cooldown - cdLeft
        self.data.cooldowns.whirlingSurge.currentCooldown = currentCD
    end)
    ws:SetScript('OnUpdate', function(_, elapsed)
        local cooldown = self.data.cooldowns.whirlingSurge.currentCooldown
        local max = self.data.cooldowns.whirlingSurge.cooldown
        if cooldown then
            self.data.cooldowns.whirlingSurge.currentCooldown = cooldown - elapsed

            if cooldown <= 0.0 then
                self.data.cooldowns.whirlingSurge.currentCooldown = nil
                self.data.view.WhirlingSurge.bar:SetSmoothedValue(0)
                self.data.view.WhirlingSurge:SetAlpha(0)
                return
            end

            local perc = self.data.cooldowns.whirlingSurge.currentCooldown / max * 100
            self.data.view.WhirlingSurge:SetAlpha(1)
            self.data.view.WhirlingSurge.bar:SetSmoothedValue(perc)
        else
            self.data.view.WhirlingSurge:SetAlpha(0)
        end
    end)

    local bg = ws:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(ws)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\whirling_surge_bg')

    -- bar
    ---@class StatusBar
    ws.bar = CreateFrame('StatusBar', nil, ws)
    ws.bar:SetAllPoints(ws)
    ws.bar:SetFrameLevel(1)
    ws.bar:SetStatusBarTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\whirling_surge_bar')
    ws.bar:GetStatusBarTexture():SetHorizTile(false)
    ws.bar:SetStatusBarColor(0.4, 0.65, 0.85, 0.75)

    Mixin(ws.bar, SmoothStatusBarMixin)
    ws.bar:SetMinMaxSmoothedValue(-25, 120)
    ws.bar:SetSmoothedValue(0)

    --#endregion

    --#region Speedometer

    local speedo = CreateFrame('Frame', nil, w)
    speedo:SetPoint('CENTER', w, 'CENTER')
    speedo:SetWidth(512)
    speedo:SetHeight(256)
    speedo:SetFrameLevel(2)

    local bg = speedo:CreateTexture(nil, 'BACKGROUND')
    bg:SetAllPoints(speedo)
    bg:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\speedo_bg')

    speedo.text = speedo:CreateFontString(nil, 'OVERLAY', 'GameFontNormalHuge3Outline')
    speedo.text:SetPoint('CENTER', speedo, 'CENTER', 0, -70)
    speedo.text:SetTextColor(1, 1, 1, 1)
    speedo.text:SetWidth(100)
    speedo.text:SetJustifyH('CENTER')
    speedo.text:SetText('')

    w.Speedometer = speedo.text

    --#endregion

    -- Speed
    CreateSpeedBar(w)

    self.data.view = w

    self.data.view.Speed = w.Speed
    self.data.view.SpeedText = w.Speedometer
    self.data.view.Vigor = w.Vigor
    self.data.view.VigorTicks = w.VigorTicks
    self.data.view.Glow = w.Glow
    self.data.view.Momentum = w.Momentum
    self.data.view.SecondWind = sw
    self.data.view.WhirlingSurge = ws

    self.data.view:Hide()
end

---@return cbObject
function headsUpView:GetUpdateHandler()
    return C_Timer.NewTicker(self.data.speed.constants.pollingRate, function()
        self:SpeedTest()
    end)
end

function headsUpView:Update()
    if not self.data.enabled then
        self.data.view:Hide()
        return
    end

    if not self.data.view:IsShown() then
        self.data.view:Show()
    end

    self.data.view.Speed:SetSmoothedValue(self.data.speed.smoothSpeed)

    local speedDiv = self.data.speed.smoothSpeed
    local color = utils:GetSmudgeColorRGB({ r = 0.6, g = 0.6, b = 1 }, { r = 0.4, g = 1, b = 0.4 }, speedDiv / 100)
    self.data.view.Speed:SetStatusBarColor(color.r, color.g, color.b, 0.75)
    if self.data.speed.smoothSpeed > 0 then
        local formatSpeed = string.format('%.0f%%', self.data.speed.smoothSpeed * 100 / 7)
        self.data.view.SpeedText:SetText(formatSpeed)
    else
        self.data.view.SpeedText:SetText('')
    end

    if self.data.speed.momentum then
        self.data.view.Momentum:Show()
    else
        self.data.view.Momentum:Hide()
    end
end

function headsUpView:UpdateVigorTicks(ticks)
    self.data.vigor.vigorCount = ticks
    self.data.view.VigorTicks:SetTexture('Interface\\Addons\\RideTheWind\\Media\\bars\\vigor_' .. ticks)
end

function headsUpView:UpdateMovable(value)
    self.data.view:EnableMouse(not value)
    self.data.view:SetMovable(not value)
end

---@param value number
function headsUpView:UpdateScale(value)
    self.data.view:SetScale(0.60 * value)
end

---@param x integer
---@param y integer
function headsUpView:UpdatePosition(x, y)
    self.data.view:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', x, y)
end

function headsUpView:ToggleGlow(value, spellID, instanceID)
    if value then
        if spellID == self.data.vigor.thrillSpellID then
            self.data.vigor.thrillInstance = instanceID
        end
        self.data.view.Glow:Show()
    else
        if spellID == self.data.vigor.thrillSpellID and self.data.vigor.thrillInstance ~= nil then
            self.data.vigor.thrillInstance = nil
            self.data.view.Glow:Hide()
        end
    end
end

-- Speed check
function headsUpView:SpeedTest()
    if not database:GetHeadsUpViewEnabled() then return end
    local time = GetTime()
    local speed = self.data.speed

    local delta = time - speed.data.lastSpeedTime
    if delta < speed.constants.updatePeriod then
        return
    end

    speed.data.lastSpeedTime                = time

    local isGliding, canGlide, forwardSpeed = C_PlayerInfo.GetGlidingInfo()
    local thrill                            = C_UnitAuras.GetPlayerAuraBySpellID(377234)
    local isBoosting                        = thrill and time < speed.ascentStart + speed.constants.ascentDuration

    -- Smooth Speed
    speed.data.currentSamples               = math.min(speed.constants.maxSampleSize, speed.data.currentSamples + 1)
    local lastWeight                        = (speed.data.currentSamples - 1) / speed.data.currentSamples
    local newWeight                         = 1 / speed.data.currentSamples

    speed.smoothSpeed                       = forwardSpeed

    local newAccel                          = forwardSpeed - speed.data.lastSpeed
    speed.data.lastSpeed                    = forwardSpeed

    -- Smooth Accel
    speed.smoothAccel                       = speed.smoothAccel * lastWeight + newAccel + newWeight
    if forwardSpeed > 63 then
        speed.smoothAccel = max(0, speed.smoothAccel)
    end

    if not IsFlying() then
        speed.smoothAccel = 0
    end

    speed.data.lastAccel = speed.smoothAccel
    speed.momentum = isBoosting

    self:Update()
end

function events:UNIT_SPELLCAST_SUCCEEDED(_, _, _, spellID)
    if not database:GetHeadsUpViewEnabled() then return end
    if tonumber(spellID) == headsUpView.data.speed.constants.ascentSpellID then
        headsUpView.data.speed.ascentStart = GetTime()
    end
    if tonumber(spellID) == headsUpView.data.cooldowns.secondWind.id then
        headsUpView.data.cooldowns.secondWind.usedCharge = true
        -- charges 3
    end
    if tonumber(spellID) == headsUpView.data.cooldowns.whirlingSurge.id then
        headsUpView.data.cooldowns.whirlingSurge.currentCooldown =
            headsUpView.data.cooldowns.whirlingSurge.cooldown
    end
end

function events:UNIT_POWER_BAR_SHOW()
    if not database:GetHeadsUpViewEnabled() then return end
    if UnitPowerBarID('player') == 631 then
        headsUpView.data.enabled = true
        headsUpView.data.speed.updateHandler = headsUpView:GetUpdateHandler()
    end
end

function events:UNIT_POWER_BAR_HIDE()
    if not database:GetHeadsUpViewEnabled() then return end
    if not (UnitPowerBarID('player') == 631) then
        headsUpView.data.enabled = false

        if headsUpView.data.speed.updateHandler ~= nil then
            headsUpView.data.speed.updateHandler:Cancel()
            headsUpView.data.speed.updateHandler = nil
        end
    end

    headsUpView.data.view:Hide()
end

function events:UPDATE_UI_WIDGET(_, widgetInfo)
    if not database:GetHeadsUpViewEnabled() then return end
    local widgetID = headsUpView.data.vigor.widgetID
    if widgetInfo and widgetInfo.widgetID ~= widgetID then return end

    local widgetData = C_UIWidgetManager.GetFillUpFramesWidgetVisualizationInfo(widgetID)
    if not widgetData then return end

    if headsUpView.data.vigor.vigorCount ~= widgetData.numTotalFrames then
        headsUpView:UpdateVigorTicks(widgetData.numTotalFrames)
    end

    if widgetData.numFullFrames >= widgetData.numTotalFrames then
        headsUpView.data.view.Vigor:SetSmoothedValue(100)
        headsUpView.data.view.Vigor:SetStatusBarColor(0.5, 1, 0.5, 0.75)
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

    headsUpView.data.view.Vigor:SetSmoothedValue(perc)
    local color = utils:GetSmudgeColorRGB({ r = 1, g = 0.5, b = 0.5 }, { r = 0.5, g = 1, b = 0.5 }, perc / 100)
    headsUpView.data.view.Vigor:SetStatusBarColor(color.r, color.g, color.b, 0.75)
end

headsUpView:Enable()
