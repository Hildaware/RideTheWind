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

resolver:Enable()
