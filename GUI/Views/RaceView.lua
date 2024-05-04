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
---@field bestTime? integer
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

    ---@type AceGUIFrame
    local view = gui:Create('Window')
    view:SetHeight(150)
    view:SetWidth(400)
    view:SetLayout('Flow')
    view:EnableResize(false)
    view.closebutton:Hide()
    view.title:Hide()
    view.titletext:Hide()
    view.frame:DisableDrawLayer('BACKGROUND')
    view.frame:DisableDrawLayer('BORDER')
    view.frame:EnableMouse(false)
    view.frame:SetMouseClickEnabled(false)

    view:SetPoint('TOPLEFT', UIParent, 'BOTTOMLEFT', position.X, position.Y)

    ---@type AceGUISimpleGroup
    local frame = gui:Create('SimpleGroup')
    frame:SetFullWidth(true)
    frame:SetFullHeight(true)
    frame:SetLayout('List')
    view:AddChild(frame)

    local bgColor = database:GetZoneViewColor()

    local viewTex = frame.frame:CreateTexture(nil, 'ARTWORK')
    viewTex:SetAllPoints(frame.frame)
    viewTex:SetColorTexture(bgColor.r, bgColor.g, bgColor.b, bgColor.a)
    view.BackgroundColor = viewTex

    ---@type AceGUILabel
    local name = gui:Create('Label')
    name:SetFullWidth(true)
    name:SetJustifyH('CENTER')
    name:SetText('Race Name')
    name:SetFont(font.path, 24, 'OUTLINE')
    view.name = name
    frame:AddChild(name)

    ---@type AceGUILabel
    local best = gui:Create('Label')
    best:SetFullWidth(true)
    best:SetJustifyH('CENTER')
    best:SetText("Best")
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
    timerText:SetText('')
    timerText:SetFont(font.path, 36, 'OUTLINE')
    view.timer = timerText

    frame:AddChild(timerText)

    self.data.view = view
    self.data.view:Hide()
end

function raceView:OnUpdate()
    self.data.raceTime = GetTime() - self.data.startTime

    local colorCode = maps.ColorCodes[1]
    if self.data.currentQuest and self.data.raceTime > 0 then
        if self.data.raceTime > self.data.currentQuest.silver then   -- Bronze
            colorCode = maps.ColorCodes[3]
        elseif self.data.raceTime > self.data.currentQuest.gold then -- Silver
            colorCode = maps.ColorCodes[2]
        else                                                         -- Gold
            colorCode = maps.ColorCodes[1]
        end
    end

    local timeFormat = string.format("%02d:%02d", math.floor(self.data.raceTime / 60),
        self.data.raceTime % 60)
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

---@return boolean
function raceView:ShouldShowView()
    if database:GetRaceViewEnabled() ~= true then return false end
    return true
end

function events:START_TIMER(_, type, _, totalTime)
    if not raceView.data.currentRace then return end
    if totalTime ~= 5 then return end

    if raceView.data.currentRace and raceView.data.currentQuest then
        raceView.data.view.name:SetText(raceView.data.currentRace.name .. " (" ..
            raceView.data.currentRaceType:gsub("^%l", string.upper) .. ")")

        raceView.data.view.silver:SetText(utils.GetPositionIcon(2) .. " " ..
            raceView.data.currentQuest.silver .. "s")

        raceView.data.view.gold:SetText(utils.GetPositionIcon(1) .. " " ..
            raceView.data.currentQuest.gold .. "s")


        if raceView.data.bestTime and raceView.data.bestTime > 0 then
            local colorCode = maps.ColorCodes[3]
            if raceView.data.bestTime > raceView.data.currentQuest.silver then   -- Bronze
                colorCode = maps.ColorCodes[3]
            elseif raceView.data.bestTime > raceView.data.currentQuest.gold then -- Silver
                colorCode = maps.ColorCodes[2]
            else                                                                 -- Gold
                colorCode = maps.ColorCodes[1]
            end
            raceView.data.view.best:SetText('Best: ' .. colorCode .. raceView.data.bestTime .. '|R')
        else
            raceView.data.view.best:SetText('-')
        end
    end

    if raceView:ShouldShowView() then
        raceView.data.view:Show()
    end

    C_Timer.After(totalTime, function()
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
                raceView.data.bestTime = raceTime
                raceView.data.currentRaceType = raceData.type

                return
            end
        end
    end
end

---@param questId integer
function events:QUEST_REMOVED(_, questId)
    if (raceView.data.currentQuest and raceView.data.currentQuest.questId == questId)
        and raceView.data.currentRace then
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
    end

    raceView.data.currentRace = nil
    raceView.data.currentQuest = nil
    raceView.data.inRace = false
    raceView:CancelTimer(raceView.data.timer)

    -- 5 seconds later... hide!
    C_Timer.After(5, function()
        raceView.data.raceTime = 0
        raceView.data.view:Hide()
    end)

    ---@class ZoneView: AceModule
    local zoneView = addon:GetModule('ZoneView')
    zoneView:Update()
end

raceView:Enable()
