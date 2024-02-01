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

    local normalPlace = utils.GetRacePlace(raceInfo.normal)
    frame.Normal:SetText(utils.GetPositionIcon(normalPlace))
    frame.Normal:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.normal == nil then return end
        if raceDetails.normal == 0 then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        local tooltip = utils:BuildRaceTooltip(raceDetails.normal)
        GameTooltip:SetText(tooltip)
        GameTooltip:Show()
    end)
    frame.Normal:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    local advancedPlace = utils.GetRacePlace(raceInfo.advanced)
    frame.Advanced:SetText(utils.GetPositionIcon(advancedPlace))
    frame.Advanced:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.advanced == nil then return end
        if raceDetails.advanced == 0 then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        local tooltip = utils:BuildRaceTooltip(raceDetails.advanced)
        GameTooltip:SetText(tooltip)
        GameTooltip:Show()
    end)
    frame.Advanced:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    local reversePlace = utils.GetRacePlace(raceInfo.reverse)
    frame.Reverse:SetText(utils.GetPositionIcon(reversePlace))
    frame.Reverse:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.reverse == nil then return end
        if raceDetails.reverse == 0 then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        local tooltip = utils:BuildRaceTooltip(raceDetails.reverse)
        GameTooltip:SetText(tooltip)
        GameTooltip:Show()
    end)
    frame.Reverse:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    local challengePlace = utils.GetRacePlace(raceInfo.challenge)
    frame.Challenge:SetText(utils.GetPositionIcon(challengePlace))
    frame.Challenge:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.challenge == nil then return end
        if raceDetails.challenge == 0 then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        local tooltip = utils:BuildRaceTooltip(raceDetails.challenge)
        GameTooltip:SetText(tooltip)
        GameTooltip:Show()
    end)
    frame.Challenge:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    local challengeRevPlace = utils.GetRacePlace(raceInfo.challengeReverse)
    frame.ChallengeReverse:SetText(utils.GetPositionIcon(challengeRevPlace))
    frame.ChallengeReverse:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.challengeReverse == nil then return end
        if raceDetails.challengeReverse == 0 then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')

        local tooltip = utils:BuildRaceTooltip(raceDetails.challengeReverse)
        GameTooltip:SetText(tooltip)
        GameTooltip:Show()
    end)
    frame.ChallengeReverse:SetCallback('OnLeave', function()
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
