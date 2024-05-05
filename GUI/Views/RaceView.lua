---@diagnostic disable: assign-type-mismatch
local addonName = ... ---@type string
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local gui = LibStub('AceGUI-3.0')

---@class RaceView: AceModule
local raceView = addon:NewModule('RaceView', 'AceTimer-3.0')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Maps: AceModule
local maps = addon:GetModule('Maps')

---@class Database: AceModule
local database = addon:GetModule('Database')

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class (exact) RaceViewData
---@field view AceGUIFrame
---@field timer AceTimerObj
---@field currentRace? Race
---@field currentQuest? RaceTimes
---@field currentRaceType? string
---@field bestTime integer
---@field inRace boolean
---@field startTime integer
---@field raceTime integer
local viewPrototype = {}

function raceView:OnInitialize()
    ---@type RaceViewData
    self.data = {
        view = {},
        timer = nil,
        currentRace = nil,
        currentQuest = nil,
        inRace = false,
        currentRaceType = '',
        bestTime = 0,
        startTime = 0,
        raceTime = 0
    }

    self:Create()
end

function raceView:Create()
    local font = database:GetZoneViewFont()
    local position = database:GetRaceViewPosition()
    local scale = database:GetRaceViewScale()

    ---@type AceGUIFrame
    local view = gui:Create('Window')
    view:SetHeight(120+71+71)
    view:SetWidth(450)
    view:SetLayout('Flow')
    view:EnableResize(false)
    view.closebutton:Hide()
    view.title:Hide()
    view.titletext:Hide()
    view.frame:DisableDrawLayer('BACKGROUND')
    view.frame:DisableDrawLayer('BORDER')
    view.frame:EnableMouse(false)
    view.frame:SetMouseClickEnabled(false)
    view.frame:SetScale(0.80 * scale)

    view:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', position.X, position.Y)

    ---@type AceGUISimpleGroup
    local frame = gui:Create('SimpleGroup')
    frame:SetFullWidth(true)
    frame:SetFullHeight(true)
    frame:SetLayout('List')
    view:AddChild(frame)

    local tex = "interface/scenario/scoreboarddragonflight"

    local topTex = frame.frame:CreateTexture(nil, 'BACKGROUND')
    topTex:SetPoint('TOPLEFT', view.frame, 'TOPLEFT', 0, 14)
    topTex:SetTexture(tex)
    topTex:SetTexCoord(0.001953125, 0.9140625, 0.642578125, 0.78125)
    topTex:SetSize(457, 71)

    local midTex = frame.frame:CreateTexture(nil, 'BACKGROUND')
    midTex:SetPoint('TOPLEFT', topTex, 'BOTTOMLEFT', 0, 30)
    midTex:SetTexture(tex)
    midTex:SetTexCoord(0.001953125, 0.9140625, 0.001953125, 0.49609375)
    midTex:SetSize(457, 122)

    local bottomTex = frame.frame:CreateTexture(nil, 'BACKGROUND')
    bottomTex:SetPoint('TOPLEFT', midTex, 'BOTTOMLEFT', 0, 36)
    bottomTex:SetTexture(tex)
    bottomTex:SetTexCoord(0.001953125, 0.9140625, 0.5, 0.638671875)
    bottomTex:SetSize(467, 71)

    ---@type AceGUILabel
    local name = gui:Create('Label')
    name:SetFullWidth(true)
    name:SetJustifyH('CENTER')
    name:SetText('Race Name')
    name:SetFont(font.path, 24, 'OUTLINE')
    name:SetColor(1, 1, 0)
    view.name = name
    frame:AddChild(name)

    ---@type AceGUILabel
    local best = gui:Create('Label')
    best:SetFullWidth(true)
    best:SetJustifyH('CENTER')
    best:SetText("Personal Best")
    best:SetFont(font.path, 22, 'OUTLINE')
    view.best = best

    frame:AddChild(best)

    best:ClearAllPoints()
    ---@diagnostic disable-next-line: undefined-field
    best:SetPoint('TOP', name.frame, 'BOTTOM', 0, 8)

    ---@type AceGUISimpleGroup
    local hGroup = gui:Create('SimpleGroup')
    hGroup:SetFullWidth(true)
    hGroup:SetLayout('Flow')

    ---@type AceGUILabel
    local silver = gui:Create('Label')
    silver:SetText('Silver')
    silver:SetRelativeWidth(0.5)
    silver:SetJustifyH('CENTER')
    silver:SetFont(font.path, 20, 'OUTLINE')
    view.silver = silver
    hGroup:AddChild(silver)

    ---@type AceGUILabel
    local gold = gui:Create('Label')
    gold:SetText('Gold')
    gold:SetRelativeWidth(0.5)
    gold:SetJustifyH('CENTER')
    gold:SetFont(font.path, 20, 'OUTLINE')
    view.gold = gold
    hGroup:AddChild(gold)

    frame:AddChild(hGroup)

    hGroup:ClearAllPoints()
    ---@diagnostic disable-next-line: undefined-field
    hGroup:SetPoint('TOP', best.frame, 'BOTTOM', 0, 8)

    ---@type AceGUILabel
    local timerText = gui:Create('Label')
    timerText:SetFullWidth(true)
    timerText:SetJustifyH('CENTER')
    timerText:SetText('00.000')
    timerText:SetFont(font.path, 36, 'OUTLINE')
    timerText.frame:SetFrameStrata('HIGH')
    view.timer = timerText

    local timerTex = timerText.frame:CreateTexture(nil, 'BACKGROUND')
    timerTex:SetPoint('CENTER', timerText.frame, 'CENTER', 0, -2)
    timerTex:SetTexture("interface/covenantrenown/dragonflightmajorfactionscentaur")
    timerTex:SetTexCoord(0.0009765625, 0.4599609375, 0.7783203125, 0.9150390625)
    timerTex:SetSize(470/3, 140/3)

    frame:AddChild(timerText)

    self.data.view = view
    self.data.view:Hide()
end

function raceView:OnUpdate()
    self.data.raceTime = GetTime() - self.data.startTime

    local colorCode = utils.GetColorCodedRaceTime(self.data.currentQuest, self.data.raceTime)
    local timeFormat = string.format("%.3f", self.data.raceTime)
    self.data.view.timer:SetText(colorCode .. timeFormat .. '|R')
end

function raceView:OnStart()
    self.data.inRace = true
    self.data.startTime = GetTime()

    ---@diagnostic disable: undefined-field
    self.data.timer = self:ScheduleRepeatingTimer("OnUpdate", 0.1)
end

function raceView:Toggle()
    if self.data.view:IsShown() then
        self.data.view:Hide()
    else
        self.data.view:Show()
    end
end

---@param x integer
---@param y integer
function raceView:UpdatePosition(x, y)
    self.data.view:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', x, y)
end

---@param value number
function raceView:UpdateScale(value)
    self.data.view.frame:SetScale(0.80 * value)
end

---@return boolean
function raceView:ShouldShowView()
    if database:GetRaceViewEnabled() ~= true then return false end
    return true
end

function events:START_TIMER(_, _, _, totalTime)
    if not raceView.data.currentRace then return end
    if totalTime ~= 5 then return end

    if raceView.data.currentRace and raceView.data.currentQuest then
        raceView.data.view.name:SetText(raceView.data.currentRace.name .. " (" ..
            raceView.data.currentRaceType:gsub("^%l", string.upper) .. ")")

        raceView.data.view.silver:SetText(utils.GetPositionIcon(2) .. " " ..
            raceView.data.currentQuest.silver .. "s")

        raceView.data.view.gold:SetText(utils.GetPositionIcon(1) .. " " ..
            raceView.data.currentQuest.gold .. "s")

        if raceView.data.bestTime > 0 then
            local colorCode = maps.ColorCodes[3]
            local position = 3
            if raceView.data.bestTime > raceView.data.currentQuest.silver then   -- Bronze
                colorCode = maps.ColorCodes[3]
            elseif raceView.data.bestTime > raceView.data.currentQuest.gold then -- Silver
                colorCode = maps.ColorCodes[2]
                position = 2
            else                                                                 -- Gold
                colorCode = maps.ColorCodes[1]
                position = 1
            end

            local posIcon = utils.GetPositionIcon(position)

            raceView.data.view.best:SetText('Personal Best: ' .. posIcon .. colorCode .. raceView.data.bestTime .. 's|R')
        else
            raceView.data.view.best:SetText('-')
        end
    end

    if raceView:ShouldShowView() then
        raceView.data.view:Show()
        raceView.data.view.timer:SetText("00.000")
    end

    C_Timer.After(5, function()
        raceView:OnStart()
    end)
end

---@param questId integer
function events:QUEST_ACCEPTED(_, questId)
    -- Find the quest
    for _, zones in pairs(maps.Races) do
        for _, race in pairs(zones) do
            local raceData = utils.GetRaceByQuestId(race.times, questId)
            if raceData then
                raceView.data.currentRace = race
                raceView.data.currentQuest = raceData.times

                -- get from DB
                local raceDetails = database:GetRaceDetailsById(race.id)
                if raceDetails == nil then return end
                local raceTime = raceDetails[raceData.type]
                raceView.data.bestTime = raceTime and raceTime or 0
                raceView.data.currentRaceType = raceData.type
                return
            end
        end
    end
end

---@param questId integer
function events:QUEST_REMOVED(_, questId)
    if raceView.data.currentQuest ~= nil and raceView.data.currentQuest.questId ~= questId then
        -- We picked up a quest while racing... don't bomb out of the view!
        return
    end

    if (raceView.data.currentQuest and raceView.data.currentQuest.questId == questId)
        and raceView.data.currentRace and raceView.data.currentRaceType then
        
        raceView:CancelTimer(raceView.data.timer)
        raceView.data.inRace = false

        local raceTime = raceView.data.currentRace.times[raceView.data.currentRaceType]
        local finishedRaceTime = resolver.GetBestRaceTime(raceTime)

        if raceView.data.raceTime <= finishedRaceTime then
            raceView.data.raceTime = finishedRaceTime
        end
        
        local colorCode = utils.GetColorCodedRaceTime(raceView.data.currentQuest, raceView.data.raceTime)

        local position = 3
        if raceView.data.raceTime > raceView.data.currentQuest.silver then   -- Bronze
            position = 3
        elseif raceView.data.raceTime > raceView.data.currentQuest.gold then -- Silver
            position = 2
        else                                                                 -- Gold
            position = 1
        end
        local posIcon = utils.GetPositionIcon(position)
    
        local timeFormat = string.format("%.3f", raceView.data.raceTime)
        local timeStr = posIcon .. colorCode .. timeFormat .. '|R'
        raceView.data.view.timer:SetText(timeStr)

        local t = raceView.data.currentRace.times
        local normalBest = resolver.GetBestRaceTime(t.normal)
        local advancedBest = resolver.GetBestRaceTime(t.advanced)
        local reverseBest = resolver.GetBestRaceTime(t.reverse)
        local challengeBest = resolver.GetBestRaceTime(t.challenge)
        local challengeReverseBest = resolver.GetBestRaceTime(t.challenge)

        local raceTimes = {
            normal = normalBest,
            advanced = advancedBest,
            reverse = reverseBest,
            challenge = challengeBest,
            challengeReverse = challengeReverseBest
        }

        database:SaveRaceTimes(raceView.data.currentRace.id, raceTimes)

        raceView.data.currentRace = nil
        raceView.data.currentQuest = nil
    
        -- 5 seconds later... hide!
        C_Timer.After(5, function()
            raceView.data.raceTime = 0
            raceView.data.startTime = 0
            raceView.data.view.timer:SetText("")
            raceView.data.view:Hide()
        end)
    
        ---@class ZoneView: AceModule
        local zoneView = addon:GetModule('ZoneView')
        zoneView:Update()

    end
end

raceView:Enable()
