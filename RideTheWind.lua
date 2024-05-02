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

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

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

function events:PLAYER_LOGIN()
    for _, zones in pairs(maps.Races) do
        for _, race in pairs(zones) do
            -- Gather up the race times and store them
            local normalBest = resolver.GetBestRaceTime(race.times.normal)
            local advancedBest = resolver.GetBestRaceTime(race.times.advanced)
            local reverseBest = resolver.GetBestRaceTime(race.times.reverse)
            local challengeBest = resolver.GetBestRaceTime(race.times.challenge)
            local challengeReverseBest = resolver.GetBestRaceTime(race.times.challenge)

            local raceTimes = {
                normal = normalBest,
                advanced = advancedBest,
                reverse = reverseBest,
                challenge = challengeBest,
                challengeReverse = challengeReverseBest
            }

            data:SaveRaceTimes(race.id, raceTimes)
        end
    end

    -- session.raceIDs = buffIDs

    if not data:GetDefaultDisplayEnabled() then
        resolver.ToggleDefaultHeadsUpDisplay(false)
    else
        resolver.ToggleDefaultHeadsUpDisplay(true)
    end
end
