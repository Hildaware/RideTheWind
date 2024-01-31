local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
---@cast addon +AceHook-3.0

---@class Session: AceModule
local session = addon:GetModule('Session')

---@class Enums: AceModule
local enums = addon:GetModule('Enums')

---@class Events: AceModule
local events = addon:GetModule('Events')

---@class Utils: AceModule
local utils = addon:GetModule('Utils')

---@class Database: AceModule
local data = addon:GetModule('Database')

---@class Options: AceModule
local options = addon:GetModule('Options')

function addon:OnCompartmentClick(arg1, arg2, arg3, button, arg4)
    print(arg1, arg2, arg3, arg4)
    if button == 'RightButton' then
        ---@class ZoneView
        local zoneView = addon:GetModule('ZoneView')
        zoneView:Toggle()
    else
        if IsShiftKeyDown() then
            ---@class RaceListView
            local raceListView = addon:GetModule('RaceListView')
            raceListView:Toggle()
        else
            _G['InterfaceOptionsFrame_OpenToCategory'](options.optionsFrame)
        end
    end
end

function addon:OnInitialize()
    _G['AddonCompartmentFrame']:RegisterAddon({
        text = "Ride the Wind",
        icon = "Interface\\AddOns\\RideTheWind\\Media\\logo.blp",
        registerForAnyClick = true,
        notCheckable = true,
        func = addon.OnCompartmentClick,
        funcOnEnter = function()
            GameTooltip:SetOwner(_G['AddonCompartmentFrame'], 'ANCHOR_TOPRIGHT')
            GameTooltip:AddLine("Ride the Wind")
            GameTooltip:AddLine("|cffeda55fClick|r |cFFFFFFFFto open the options configuration.|r")
            GameTooltip:AddLine("|cffeda55fRight-Click|r |cFFFFFFFFto toggle the Zone View window.|r")
            GameTooltip:AddLine("|cffeda55fShift-Click|r |cFFFFFFFFto open the Stats window.|r")
            GameTooltip:Show()
        end,
        funcOnLeave = function()
            GameTooltip:Hide()
        end
    })
end

function addon:OnEnable()
    local eventFrame = CreateFrame('frame')
    eventFrame:SetScript('OnUpdate', self.OnUpdate)
end

function addon.OnUpdate()

end

function events:UNIT_AURA(_, unitTarget, updateInfo)
    if unitTarget == 'player' then
        if updateInfo.addedAuras == nil then return end
        for _, aura in pairs(updateInfo.addedAuras) do
            if tContains(session.raceIDs, aura.spellId) then
                local instanceId = aura.auraInstanceID
                local ttData = C_TooltipInfo.GetUnitBuffByAuraInstanceID('player', instanceId, 'HELPFUL')
                if ttData.lines == nil and ttData.lines[2] == nil then return end
                local tooltipText = ttData.lines[2].leftText

                local raceTimes = utils.ParseRaceTimeTooltip(tooltipText)
                data:SaveRaceTimes(aura.spellId, raceTimes)
            end
        end
    end
end
