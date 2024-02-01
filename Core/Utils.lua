local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

---@class Utils: AceModule
local utils = addon:NewModule('Utils')

---@class Enums: AceModule
local enums = addon:GetModule('Enums')

---@class Session: AceModule
local session = addon:GetModule('Session')

---@class Resolver: AceModule
local resolver = addon:GetModule('Resolver')

---@return { id: integer, name: string }?
function utils.GetDragonRacingZone()
    local zoneId = resolver.GetPlayerMap()
    local racingZone = utils.GetTableValue(enums.RacingZoneIds, zoneId)
    if racingZone == nil then return nil end
    return { id = zoneId, name = resolver.GetZoneName() }
end

---@param position integer
---@return string
function utils.GetPositionIcon(position)
    if position == 3 then
        return '|A:challenges-medal-small-bronze:0:0:0:0|a'
    elseif position == 2 then
        return '|A:challenges-medal-small-silver:0:0:0:0|a'
    elseif position == 1 then
        return '|A:challenges-medal-small-gold:0:0:0:0|a'
    end
    return '-'
end

---@param raceIdentifiers RaceIDs
---@return integer
function utils.GetRacePlace(raceIdentifiers)
    return resolver.GetAchievementInfo(raceIdentifiers)
end

--#region Tooltips

---@param tooltipText string
---@return RaceStats
function utils.ParseRaceTimeTooltip(tooltipText)
    local normal = utils:ParseRaceTooltipChunk(tooltipText)
    local normalBest = utils:ParseNumbersFromString(normal.best)

    local advanced = utils:ParseRaceTooltipChunk(tooltipText, normal.endIndex)
    local advancedBest = utils:ParseNumbersFromString(advanced.best)

    local reverse = utils:ParseRaceTooltipChunk(tooltipText, advanced.endIndex)
    local reverseBest = utils:ParseNumbersFromString(reverse.best)

    local challenge = utils:ParseRaceTooltipChunk(tooltipText, reverse.endIndex)
    local challengeBest = utils:ParseNumbersFromString(challenge.best)

    local challengeRev = utils:ParseRaceTooltipChunk(tooltipText, challenge.endIndex)
    local challengeRevBest = utils:ParseNumbersFromString(challengeRev.best)

    return {
        normal = normalBest,
        advanced = advancedBest,
        reverse = reverseBest,
        challenge = challengeBest,
        challengeReverse = challengeRevBest
    }
end

---@param str string
---@param start integer?
---@return { best: string, endIndex: integer?  }
function utils:ParseRaceTooltipChunk(str, start)
    local _, o = string.find(str, '|CFFffd100', start or 0)
    local x, w = string.find(str, '|CFFffd100', o)
    if w == nil then
        x, w = string.find(str, '|R \r\n', o)
    end

    if w == nil then
        return { best = '', endIndex = nil }
    end

    local chunk = string.sub(str, o + 1, w):gsub('\r\n', '')

    -- I sure hope this is the same in other languages!
    local timeStr = string.match(chunk, '%((.*)%)')
    if timeStr == nil then
        return { best = '', endIndex = x }
    end

    return { best = timeStr, endIndex = x }
end

---@param str string
---@return integer
function utils:ParseNumbersFromString(str)
    if str:find('%d') ~= nil then
        local match = string.match(str, '%f[%d]%d[,.%d]*%f[%D]')
        return tonumber(match) or 0
    else
        return 0
    end
end

---@param raceDetails integer?
---@return string
function utils:BuildRaceTooltip(raceDetails)
    local best = (raceDetails and tostring(raceDetails)) or 'No Attempts'
    local bestStr = '|CFFffd100Best: ' .. best .. '|R'
    return bestStr
end

--#endregion

function utils.GetTableValue(table, value)
    for _, val in pairs(table) do
        if val == value then
            return val
        end
    end
    return nil
end

utils:Enable()
