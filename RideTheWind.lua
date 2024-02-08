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

---@class Maps: AceModule
local maps = addon:GetModule('Maps')

function addon:OnCompartmentClick(_, _, _, button)
    if button == 'RightButton' then
        ---@class ZoneView
        local zoneView = addon:GetModule('ZoneView')
        session.zoneView.hide = false
        zoneView:Toggle()
    else
        if IsShiftKeyDown() then
            ---@class StatsView
            local statsView = addon:GetModule('StatsView')
            statsView:Toggle()
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
                if ttData and ttData.lines then
                    for _, line in ipairs(ttData.lines) do
                        if line.leftText then
                            if line.leftText:len() > 100 then
                                local raceTimes = utils.ParseRaceTimeTooltip(line.leftText)
                                data:SaveRaceTimes(aura.spellId, raceTimes)
                            end
                        end
                    end
                end
            end
        end
    end
end

function events:PLAYER_LOGIN()
    local buffIDs = {}
    local iter = 1
    for _, zones in pairs(maps.Races) do
        for _, race in pairs(zones) do
            buffIDs[iter] = race.id
            iter = iter + 1
        end
    end

    session.raceIDs = buffIDs

    ---@class RiderView: AceModule
    local riderView = addon:GetModule('RiderView')

    if UnitPowerBarID(631) then
        riderView.data.enabled = true
        riderView.data.speed.updateHandler = riderView:GetUpdateHandler()
    end
end
