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
    local normal = item:CreateScore(normalPlace, raceDetails and raceDetails.normal)
    frame:AddChild(normal)

    local advancedPlace = utils.GetRacePlace(raceInfo.advanced)
    local advanced = item:CreateScore(advancedPlace, raceDetails and raceDetails.advanced)
    frame:AddChild(advanced)

    local reversePlace = utils.GetRacePlace(raceInfo.reverse)
    local reverse = item:CreateScore(reversePlace, raceDetails and raceDetails.reverse)
    frame:AddChild(reverse)

    local challengePlace = utils.GetRacePlace(raceInfo.challenge)
    local challenge = item:CreateScore(challengePlace, raceDetails and raceDetails.challenge)
    frame:AddChild(challenge)

    local challengeReversePlace = utils.GetRacePlace(raceInfo.challengeReverse)
    local challengeReverse = item:CreateScore(challengeReversePlace, raceDetails and raceDetails.challengeReverse, 0.15)
    frame:AddChild(challengeReverse)

    return frame
end

---@param racePlace integer
---@param raceDetails integer?
---@param overrideWidth integer?
---@return AceGUISimpleGroup
function item:CreateScore(racePlace, raceDetails, overrideWidth)
    ---@class AceGUISimpleGroup
    local group = gui:Create('SimpleGroup')
    group:SetLayout('List')
    group:SetRelativeWidth(overrideWidth or 0.10)

    ---@type AceGUILabel
    local widget = gui:Create('Label')
    widget:SetFullWidth(true)
    widget:SetJustifyH('CENTER')
    widget:SetFontObject('GameFontNormalLarge')
    widget:SetText(utils.GetPositionIcon(racePlace))
    group:AddChild(widget)

    ---@type AceGUILabel
    local place = gui:Create('Label')
    place:SetFullWidth(true)
    place:SetJustifyH('CENTER')
    place:SetFontObject('GameFontNormal')
    if raceDetails and raceDetails > 0 then
        local best = (raceDetails and tostring(raceDetails)) or 'No Attempts'
        local bestStr = '|CFFffd100' .. best .. '|R'
        place:SetText(bestStr)
    else
        place:SetText(' ')
    end
    group:AddChild(place)

    return group
end

item:Enable()
