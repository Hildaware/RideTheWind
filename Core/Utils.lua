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

---@param tooltipText string
---@return RaceDetails
function utils.ParseRaceTimeTooltip(tooltipText)
    -- parsing in english only...
    -- Normal
    local _, n = string.find(tooltipText, 'Normal')
    local k, _ = string.find(tooltipText, 'Gold time:')
    local normalTime = string.sub(tooltipText, n + 1, k - 1):gsub("\r\n", "")

    -- Advanced
    local x, a = string.find(tooltipText, 'Advanced')
    k, _ = string.find(tooltipText, 'Gold time:', a)
    local advancedTime = string.sub(tooltipText, a + 1, k - 1):gsub("\r\n", "")

    -- Reversed
    local _, r = string.find(tooltipText, 'Reverse')
    k, _ = string.find(tooltipText, 'Gold time:', r)
    local reverseTime = string.sub(tooltipText, r + 1, k - 1):gsub("\r\n", "")

    return { normal = normalTime, advanced = advancedTime, reversed = reverseTime }
end

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
