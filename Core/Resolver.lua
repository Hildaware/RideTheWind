local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Resolver: AceModule
local resolver = addon:NewModule('Resolver')

---@class Types: AceModule
local types = addon:GetModule('Types')

function resolver.GetPlayerMap()
    return C_Map.GetBestMapForUnit('player')
end

function resolver.GetPlayerName()
    return UnitName('player')
end

function resolver.GetZoneName()
    return GetZoneText()
end

---@param zoneID integer
---@return string
function resolver.GetMapName(zoneID)
    return C_Map.GetMapInfo(zoneID).name
end

---@param id integer
---@return { completed: boolean, wasEarnedByMe: boolean }
local function GetAchievementData(id)
    local _, _, _, completed, _, _, _, _, _, _, _, _, wasEarnedByMe, _, _ = GetAchievementInfo(id)
    return { completed = completed, wasEarnedByMe = wasEarnedByMe }
end

---@param identifiers RaceIDs
---@return integer
function resolver.GetAchievementInfo(identifiers)
    if identifiers.gold == 0 then return 0 end

    local gold = GetAchievementData(identifiers.gold)
    if (gold.completed and gold.wasEarnedByMe) then
        return 1
    else
        local silver = GetAchievementData(identifiers.silver)
        if (silver.completed and silver.wasEarnedByMe) then
            return 2
        else
            local bronze = GetAchievementData(identifiers.bronze)
            if (bronze.completed and bronze.wasEarnedByMe) then
                return 3
            end
        end
    end
    return 0
end

---@param value boolean
function resolver.ToggleDefaultHeadsUpDisplay(value)
    if _G['UIWidgetPowerBarContainerFrame'] then
        if value and not _G['UIWidgetPowerBarContainerFrame']:IsShown() then
            _G['UIWidgetPowerBarContainerFrame']:Show()
            return
        end
        if not value then
            _G['UIWidgetPowerBarContainerFrame']:Hide()
        end
    end
end

---@return integer
function resolver.IsRaceHoliday()
    -- 3rd arg is an index, so we need to loop
    local date = C_DateAndTime.GetCurrentCalendarTime()
    for i = 0, 10, 1 do
        local eventInfo = C_Calendar.GetHolidayInfo(0, date.monthDay, i)
        if eventInfo ~= nil then
            if eventInfo.name == 'Northrend Cup' then -- TODO: Localization
                return 9996
            end

            if eventInfo.name == 'Outland Cup' then
                return 9995
            end

            if eventInfo.name == 'Kalimdor Cup' then
                return 9997
            end

            if eventInfo.name == 'Eastern Kingdoms Cup' then
                return 9998
            end
        end
    end
    return 0
end

---@param raceTimes RaceTimes?
---@return integer
function resolver.GetBestRaceTime(raceTimes)
    if (raceTimes == nil or raceTimes.currencyId == nil) then return 0 end

    local value = C_CurrencyInfo.GetCurrencyInfo(raceTimes.currencyId).quantity / 1000;
    if value == 0 then return 0 end

    return value;
end

resolver:Enable()
