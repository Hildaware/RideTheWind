local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

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
    -- |Cffffffff |R\r\n|CFFffd100Normal|R\r\nBronze (56.352 sec) |A:challenges-medal-small-bronze:0:0:0:0|a\r\n|CFF808080Gold time: 50 sec|R\r\n\r\n
    -- |CFFffd100Advanced|R\r\nNo Attempts\r\n|CFF808080Gold time: 44 sec|R\r\n\r\n
    -- |CFFffd100Reverse|R\r\nNo Attempts\r\n|CFF808080Gold time: 45 sec|R\r\n\r\n
    -- |CFFffd100Challenge|R\r\nNo Attempts\r\n|CFF808080Gold time: 50 sec|R\r\n\r\n
    -- |CFFffd100Challenge Reverse|R\r\nNo Attempts\r\n|CFF808080Gold time: 51 sec|R \r\n

    local normal = utils:ParseRaceTooltipChunk(tooltipText)
    local normalBest = utils:ParseNumbersFromString(normal.best)
    local normalGold = utils:ParseNumbersFromString(normal.gold)

    local advanced = utils:ParseRaceTooltipChunk(tooltipText, normal.endIndex)
    local advancedBest = utils:ParseNumbersFromString(advanced.best)
    local advancedGold = utils:ParseNumbersFromString(advanced.gold)

    local reverse = utils:ParseRaceTooltipChunk(tooltipText, advanced.endIndex)
    local reverseBest = utils:ParseNumbersFromString(reverse.best)
    local reverseGold = utils:ParseNumbersFromString(reverse.gold)

    return {
        normal = { best = normalBest, gold = normalGold },
        advanced = { best = advancedBest, gold = advancedGold },
        reverse = { best = reverseBest, gold = reverseGold }
    }
end

---@param str string
---@param start integer?
---@return { best: string, gold: string, endIndex: integer  }
function utils:ParseRaceTooltipChunk(str, start)
    local _, o = string.find(str, '|CFFffd100', start or 0)
    local x, w = string.find(str, '|CFFffd100', o)
    local chunk = string.sub(str, o + 1, w)

    local _, b = string.find(chunk, '|R\r\n')         -- Beginning of time
    local t, y = string.find(chunk, '\r\n|CFF808080') -- End time / Beginning Gold

    local bestTime = string.sub(chunk, b + 1, t - 1)
    local goldTime = string.sub(chunk, y + 1, w - 1):gsub('\r\n', '')
    return { best = bestTime, gold = goldTime, endIndex = x }
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

---@param raceDetails RaceDetails
---@return string
function utils:BuildRaceTooltip(raceDetails)
    local best = (raceDetails.best and tostring(raceDetails.best)) or 'No Attempts'
    local bestStr = '|CFFffd100Best: ' .. best .. '|R'

    local goldStr = '|CFF808080Gold: ' .. raceDetails.gold .. ' sec|R'

    return bestStr .. '\r\n' .. goldStr
end

--#endregion

function utils:CreateBorder(self)
    if not self.borders then
        self.borders = {}
        for i = 1, 4 do
            self.borders[i] = self:CreateLine(nil, 'BACKGROUND', nil, 0)
            local l = self.borders[i]
            l:SetThickness(1)
            l:SetColorTexture(0, 0, 0, 1)
            if i == 1 then
                l:SetStartPoint('TOPLEFT')
                l:SetEndPoint('TOPRIGHT')
            elseif i == 2 then
                l:SetStartPoint('TOPRIGHT')
                l:SetEndPoint('BOTTOMRIGHT')
            elseif i == 3 then
                l:SetStartPoint('BOTTOMRIGHT')
                l:SetEndPoint('BOTTOMLEFT')
            else
                l:SetStartPoint('BOTTOMLEFT')
                l:SetEndPoint('TOPLEFT')
            end
        end
    end
end

function utils.GetTableValue(table, value)
    for _, val in pairs(table) do
        if val == value then
            return val
        end
    end
    return nil
end

utils:Enable()
