---@diagnostic disable: assign-type-mismatch
local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local gui = LibStub('AceGUI-3.0')

---@class RaceListItem: AceModule
local item = addon:NewModule('RaceListItem')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

---@class Maps: AceModule
local maps = addon:GetModule('Maps')

---@param raceInfo Race
---@param raceDetails RaceStats
---@return AceGUISimpleGroup
function item.Create(raceInfo, raceDetails)
    ---@type AceGUISimpleGroup
    local frame = gui:Create('SimpleGroup')
    frame:SetFullWidth(true)
    frame:SetLayout('Flow')

    local undermark = frame.frame:CreateTexture()
    undermark:SetDrawLayer('BACKGROUND')
    undermark:SetBlendMode('ADD')
    undermark:SetPoint('TOPLEFT', frame.frame, 'BOTTOMLEFT', 0, -1)
    undermark:SetPoint('BOTTOMRIGHT', frame.frame, 'BOTTOMRIGHT')
    undermark:SetColorTexture(1, 1, 1, 0.2)

    ---@type AceGUIInteractiveLabel
    local name = gui:Create('InteractiveLabel')
    name:SetText(raceInfo.name .. ' - |cffeda55f' .. resolver.GetMapName(raceInfo.zone) .. '|r')
    name:SetImage('Interface\\Addons\\RideTheWind\\Media\\pin')
    name:SetRelativeWidth(0.445)
    name:SetCallback('OnClick', function(self)
        local mapPoint = UiMapPoint.CreateFromCoordinates(raceInfo.zone,
            raceInfo.coords.x / 100, raceInfo.coords.y / 100, 0)
        C_Map.SetUserWaypoint(mapPoint)
        C_SuperTrack.SetSuperTrackedUserWaypoint(true)
    end)
    frame:AddChild(name)

    local normalPlace = utils.GetRacePlace(raceInfo.normal)
    local normal = item:CreateScore(normalPlace, raceDetails and raceDetails.normal, raceInfo.times.normal)
    frame:AddChild(normal)

    local advancedPlace = utils.GetRacePlace(raceInfo.advanced)
    local advanced = item:CreateScore(advancedPlace, raceDetails and raceDetails.advanced, raceInfo.times.advanced)
    frame:AddChild(advanced)

    local reversePlace = utils.GetRacePlace(raceInfo.reverse)
    local reverse = item:CreateScore(reversePlace, raceDetails and raceDetails.reverse, raceInfo.times.reverse)
    frame:AddChild(reverse)

    local challengePlace = utils.GetRacePlace(raceInfo.challenge)
    local challenge = item:CreateScore(challengePlace, raceDetails and raceDetails.challenge, raceInfo.times.challenge)
    frame:AddChild(challenge)

    local challengeReversePlace = utils.GetRacePlace(raceInfo.challengeReverse)
    local challengeReverse = item:CreateScore(challengeReversePlace, raceDetails and raceDetails.challengeReverse,
        raceInfo.times.challengeReverse, 0.15)
    frame:AddChild(challengeReverse)

    return frame
end

---@param racePlace integer
---@param raceDetails integer?
---@param scoreTargets RaceTimes?
---@param overrideWidth integer?
---@return AceGUISimpleGroup
function item:CreateScore(racePlace, raceDetails, scoreTargets, overrideWidth)
    ---@class AceGUISimpleGroup
    local group = gui:Create('SimpleGroup')
    group:SetLayout('List')
    group:SetRelativeWidth(overrideWidth or 0.10)

    ---@type AceGUIInteractiveLabel
    local widget = gui:Create('InteractiveLabel')
    widget:SetFullWidth(true)
    widget:SetJustifyH('CENTER')
    widget:SetFontObject('GameFontNormalLarge')

    if scoreTargets == nil then
        widget:SetText("")
    else
        widget:SetText("-")
    end

    if raceDetails and raceDetails > 0 then
        if raceDetails > (scoreTargets and scoreTargets.silver) then
            widget:SetText(utils.GetPositionIcon(3))
        elseif raceDetails > (scoreTargets and scoreTargets.gold) then
            widget:SetText(utils.GetPositionIcon(2))
        else
            widget:SetText(utils.GetPositionIcon(1))
        end
    end

    widget:SetCallback('OnEnter', function(self)
        if scoreTargets == nil then return end

        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        if scoreTargets and (scoreTargets.silver or scoreTargets.gold) then
            GameTooltip:AddLine('Target Times')
            GameTooltip:AddLine(" ")
            if scoreTargets.silver then
                GameTooltip:AddLine('|CFFA1A09DSiver: ' .. tostring(scoreTargets.silver) .. 'sec|R')
            end
            if scoreTargets.gold then
                GameTooltip:AddLine('|CFFCA9A2DGold: ' .. tostring(scoreTargets.gold) .. 'sec|R')
            end
        end
        GameTooltip:Show()
    end)
    widget:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    group:AddChild(widget)

    ---@type AceGUILabel
    local place = gui:Create('Label')
    place:SetFullWidth(true)
    place:SetJustifyH('CENTER')
    place:SetFontObject('GameFontNormal')
    if raceDetails and raceDetails > 0 then
        local colorCode = maps.ColorCodes[3]
        if raceDetails > (scoreTargets and scoreTargets.silver) then   -- Bronze
            colorCode = maps.ColorCodes[3]
        elseif raceDetails > (scoreTargets and scoreTargets.gold) then -- Silver
            colorCode = maps.ColorCodes[2]
        else                                                           -- Gold
            colorCode = maps.ColorCodes[1]
        end
        place:SetText(colorCode .. raceDetails .. '|R')
    else
        place:SetText(' ')
    end
    group:AddChild(place)

    return group
end

item:Enable()
