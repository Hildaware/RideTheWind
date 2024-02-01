---@diagnostic disable: assign-type-mismatch

local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local gui = LibStub('AceGUI-3.0')

---@class SimpleRaceItem: AceModule
local simpleRaceItem = addon:NewModule('SimpleRaceItem')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class Database: AceModule
local database = addon:GetModule('Database')

---@class Maps: AceModule
local maps = addon:GetModule('Maps')

---@class AceGUISimpleGroup
---@field Name AceGUIInteractiveLabel
---@field Normal AceGUIInteractiveLabel
local viewPrototype = {}

--- Builds based on RaceInfo
---@param frame AceGUISimpleGroup
---@param raceInfo Race
---@param raceDetails RaceStats
function simpleRaceItem.Build(frame, raceInfo, raceDetails)
    if frame == nil then return end

    frame.Name:SetText(raceInfo.name)
    frame.Pin:SetCallback('OnClick', function()
        local mapPoint = UiMapPoint.CreateFromCoordinates(raceInfo.zone,
            raceInfo.coords.x / 100, raceInfo.coords.y / 100, 0)
        C_Map.SetUserWaypoint(mapPoint)
        C_SuperTrack.SetSuperTrackedUserWaypoint(true)
    end)

    simpleRaceItem:UpdateScore(raceInfo.normal, raceDetails and raceDetails.normal,
        raceInfo.times.normal, frame.Normal)

    simpleRaceItem:UpdateScore(raceInfo.advanced, raceDetails and raceDetails.advanced,
        raceInfo.times.advanced, frame.Advanced)

    simpleRaceItem:UpdateScore(raceInfo.reverse, raceDetails and raceDetails.reverse,
        raceInfo.times.reverse, frame.Reverse)

    simpleRaceItem:UpdateScore(raceInfo.challenge, raceDetails and raceDetails.challenge,
        raceInfo.times.challenge, frame.Challenge)

    simpleRaceItem:UpdateScore(raceInfo.challengeReverse, raceDetails and raceDetails.challengeReverse,
        raceInfo.times.challengeReverse, frame.ChallengeReverse)
end

---@param raceInfo RaceIDs
---@param score integer?
---@param scoreTargets RaceTimes?
---@param frame AceGUIInteractiveLabel
function simpleRaceItem:UpdateScore(raceInfo, score, scoreTargets, frame)
    local normalPlace = utils.GetRacePlace(raceInfo)
    frame:SetText(utils.GetPositionIcon(normalPlace))
    frame:SetCallback('OnEnter', function(self)
        if score == nil and scoreTargets == nil then return end

        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        if score and score > 0 then
            local colorCode = maps.ColorCodes[3]
            if score > (scoreTargets and scoreTargets.silver) then   -- Bronze
                colorCode = maps.ColorCodes[3]
            elseif score > (scoreTargets and scoreTargets.gold) then -- Silver
                colorCode = maps.ColorCodes[2]
            else                                                     -- Gold
                colorCode = maps.ColorCodes[1]
            end
            GameTooltip:AddLine('|CFFffffffBest:|R ' .. colorCode .. tostring(score) .. 'sec|R')
        else
            GameTooltip:AddLine('|CFFffd100Best:|R |CFFffffffNo Attempts|R')
        end

        if scoreTargets and (scoreTargets.silver or scoreTargets.gold) then
            GameTooltip:AddLine(" ")
            GameTooltip:AddLine('Target Times')
            if scoreTargets.silver then
                GameTooltip:AddLine(maps.ColorCodes[2] .. 'Siver: ' .. tostring(scoreTargets.silver) .. 'sec|R')
            end
            if scoreTargets.gold then
                GameTooltip:AddLine(maps.ColorCodes[1] .. 'Gold: ' .. tostring(scoreTargets.gold) .. 'sec|R')
            end
        end

        GameTooltip:Show()
    end)
    frame:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)
end

--- Creates a Race Item Widget
---@return AceGUISimpleGroup
function simpleRaceItem:Create()
    local font = database:GetZoneViewFont()

    ---@class AceGUISimpleGroup
    local frame = gui:Create('SimpleGroup')
    frame:SetFullWidth(true)
    frame:SetLayout('Flow')

    ---@class AceGUISimpleGroup
    local heading = gui:Create('SimpleGroup')
    heading:SetFullWidth(true)
    heading:SetLayout('Flow')
    frame:AddChild(heading)

    ---@class AceGUIInteractiveLabel
    local pin = gui:Create('InteractiveLabel')
    pin:SetImage('Interface\\Addons\\RideTheWind\\Media\\pin')
    pin:SetRelativeWidth(0.2)
    pin:SetCallback('OnEnter', function(self)
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText('Create Map Pin')
        GameTooltip:Show()
    end)
    pin:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    heading:AddChild(pin)
    frame.Pin = pin

    ---@class AceGUILabel
    local name = gui:Create('Label')
    name:SetRelativeWidth(0.75)
    name:SetFont(font.path, 16, 'OUTLINE')
    heading:AddChild(name)
    frame.Name = name

    --#region Race Medals

    ---@class AceGUISimpleGroup
    local stats = gui:Create('SimpleGroup')
    stats:SetFullWidth(true)
    stats:SetLayout('Flow')
    frame:AddChild(stats)

    ---@class AceGUIInteractiveLabel
    local normalImage = gui:Create('InteractiveLabel')
    normalImage:SetFontObject('GameFontHighlightHuge2')
    normalImage:SetRelativeWidth(0.2)
    normalImage:SetJustifyH('CENTER')
    stats:AddChild(normalImage)
    frame.Normal = normalImage

    ---@class AceGUIInteractiveLabel
    local advancedImage = gui:Create('InteractiveLabel')
    advancedImage:SetFontObject('GameFontHighlightHuge2')
    advancedImage:SetRelativeWidth(0.2)
    advancedImage:SetJustifyH('CENTER')
    stats:AddChild(advancedImage)
    frame.Advanced = advancedImage

    ---@class AceGUIInteractiveLabel
    local reverseImage = gui:Create('InteractiveLabel')
    reverseImage:SetFontObject('GameFontHighlightHuge2')
    reverseImage:SetRelativeWidth(0.2)
    reverseImage:SetJustifyH('CENTER')
    stats:AddChild(reverseImage)
    frame.Reverse = reverseImage

    ---@class AceGUIInteractiveLabel
    local challengeImage = gui:Create('InteractiveLabel')
    challengeImage:SetFontObject('GameFontHighlightHuge2')
    challengeImage:SetRelativeWidth(0.2)
    challengeImage:SetJustifyH('CENTER')
    stats:AddChild(challengeImage)
    frame.Challenge = challengeImage

    ---@class AceGUIInteractiveLabel
    local challengeRevImage = gui:Create('InteractiveLabel')
    challengeRevImage:SetFontObject('GameFontHighlightHuge2')
    challengeRevImage:SetRelativeWidth(0.2)
    challengeRevImage:SetJustifyH('CENTER')
    stats:AddChild(challengeRevImage)
    frame.ChallengeReverse = challengeRevImage

    --#endregion

    return frame
end
