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
---@param raceDetails RaceDetails
---@return AceGUISimpleGroup
function item.Create(raceInfo, raceDetails)
    ---@type AceGUISimpleGroup
    local frame = gui:Create('SimpleGroup')
    frame:SetFullWidth(true)
    frame:SetLayout('Flow')

    local undermark = frame.frame:CreateTexture()
    undermark:SetDrawLayer('BACKGROUND')
    undermark:SetBlendMode('ADD')
    undermark:SetPoint('TOPLEFT', frame.frame, 'BOTTOMLEFT', 0, 1)
    undermark:SetPoint('BOTTOMRIGHT', frame.frame, 'BOTTOMRIGHT')
    undermark:SetColorTexture(1, 1, 1, 0.2)

    ---@type AceGUIInteractiveLabel
    local name = gui:Create('InteractiveLabel')
    name:SetText(raceInfo.name .. ' - ' .. resolver.GetMapName(raceInfo.zone))
    name:SetImage('Interface\\Addons\\RideTheWind\\Media\\pin')
    name:SetRelativeWidth(0.6)
    name:SetCallback('OnClick', function(self)
        local mapPoint = UiMapPoint.CreateFromCoordinates(raceInfo.zone,
            raceInfo.coords.x / 100, raceInfo.coords.y / 100, 0)
        C_Map.SetUserWaypoint(mapPoint)
        C_SuperTrack.SetSuperTrackedUserWaypoint(true)
    end)
    frame:AddChild(name)

    ---@type AceGUIInteractiveLabel
    local normalImage = gui:Create('InteractiveLabel')
    normalImage:SetRelativeWidth(0.12)
    normalImage:SetJustifyH('CENTER')
    normalImage:SetFontObject('GameFontNormalLarge')

    local normalPlace = utils.GetRacePlace(raceInfo.normal)
    normalImage:SetText(utils.GetPositionIcon(normalPlace))
    normalImage:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.normal == nil then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText(raceDetails.normal)
        GameTooltip:Show()
    end)
    normalImage:SetCallback('OnLeave', function(self)
        GameTooltip:Hide()
    end)

    frame:AddChild(normalImage)

    ---@type AceGUILabel
    local advancedImage = gui:Create('Label')
    advancedImage:SetRelativeWidth(0.12)
    advancedImage:SetJustifyH('CENTER')
    advancedImage:SetFontObject('GameFontNormalLarge')

    local advancedPlace = utils.GetRacePlace(raceInfo.advanced)
    advancedImage:SetText(utils.GetPositionIcon(advancedPlace))
    advancedImage:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.advanced == nil then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText(raceDetails.advanced)
        GameTooltip:Show()
    end)
    advancedImage:SetCallback('OnLeave', function(self)
        GameTooltip:Hide()
    end)

    frame:AddChild(advancedImage)

    ---@type AceGUILabel
    local reverseImage = gui:Create('Label')
    reverseImage:SetRelativeWidth(0.12)
    reverseImage:SetJustifyH('CENTER')
    reverseImage:SetFontObject('GameFontNormalLarge')

    local reversedPlace = utils.GetRacePlace(raceInfo.reversed)
    reverseImage:SetText(utils.GetPositionIcon(reversedPlace))
    reverseImage:SetCallback('OnEnter', function(self)
        if raceDetails == nil then return end
        if raceDetails.reversed == nil then return end
        GameTooltip:SetOwner(self.frame, 'ANCHOR_RIGHT')
        GameTooltip:SetText(raceDetails.reversed)
        GameTooltip:Show()
    end)
    reverseImage:SetCallback('OnLeave', function(self)
        GameTooltip:Hide()
    end)

    frame:AddChild(reverseImage)

    return frame
end
