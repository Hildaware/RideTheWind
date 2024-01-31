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
---@param raceDetails RaceDetails
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
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText(raceDetails.normal)
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
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText(raceDetails.advanced)
        GameTooltip:Show()
    end)
    frame.Advanced:SetCallback('OnLeave', function()
        GameTooltip:Hide()
    end)

    local reversePlace = utils.GetRacePlace(raceInfo.reversed)
    frame.Reverse:SetText(utils.GetPositionIcon(reversePlace))
    frame.Reverse:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.reversed == nil then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText(raceDetails.reversed)
        GameTooltip:Show()
    end)
    frame.Reverse:SetCallback('OnLeave', function()
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
    normalImage:SetRelativeWidth(0.3)
    normalImage:SetJustifyH('CENTER')
    stats:AddChild(normalImage)
    frame.Normal = normalImage

    ---@class AceGUIInteractiveLabel
    local advancedImage = gui:Create('InteractiveLabel')
    advancedImage:SetFontObject('GameFontHighlightHuge2')
    advancedImage:SetRelativeWidth(0.35)
    advancedImage:SetJustifyH('CENTER')
    stats:AddChild(advancedImage)
    frame.Advanced = advancedImage

    ---@class AceGUIInteractiveLabel
    local reverseImage = gui:Create('InteractiveLabel')
    reverseImage:SetFontObject('GameFontHighlightHuge2')
    reverseImage:SetRelativeWidth(0.3)
    reverseImage:SetJustifyH('CENTER')
    stats:AddChild(reverseImage)
    frame.Reverse = reverseImage

    --#endregion

    return frame
end
