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

---@return { id: integer, name: string, isCup: boolean }?
function utils.GetDragonRacingZone()
    local zoneId = resolver.GetPlayerMap()
    local racingZone = utils.GetTableValue(enums.RacingZoneIds, zoneId)
    if racingZone == nil then return nil end

    for cupId, zoneData in pairs(enums.Cups) do
        for _, zone in pairs(zoneData.zones) do
            if zone == racingZone then
                return { id = cupId, name = zoneData.name, isCup = true } -- It's a cup!
            end
        end
    end

    return { id = zoneId, name = resolver.GetZoneName(), isCup = false }
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

function utils.GetTableValue(table, value)
    for _, val in pairs(table) do
        if val == value then
            return val
        end
    end
    return nil
end

local CS = CreateFrame("ColorSelect")

function utils:GetSmudgeColorRGB(colorA, colorB, percentage)
    CS:SetColorRGB(colorA.r, colorA.g, colorA.b)
    colorA.h, colorA.s, colorA.v = CS:GetColorHSV()
    CS:SetColorRGB(colorB.r, colorB.g, colorB.b)
    colorB.h, colorB.s, colorB.v = CS:GetColorHSV()
    local colorC = {}
    --check if the angle between the two H values is > 180
    if abs(colorA.h - colorB.h) > 180 then
        local angle = (360 - abs(colorA.h - colorB.h)) * percentage
        if colorA.h < colorB.h then
            colorC.h = floor(colorA.h - angle)
            if colorC.h < 0 then
                colorC.h = 360 + colorC.h
            end
        else
            colorC.h = floor(colorA.h + angle)
            if colorC.h > 360 then
                colorC.h = colorC.h - 360
            end
        end
    else
        colorC.h = floor(colorA.h - (colorA.h - colorB.h) * percentage)
    end
    colorC.s = colorA.s - (colorA.s - colorB.s) * percentage
    colorC.v = colorA.v - (colorA.v - colorB.v) * percentage
    CS:SetColorHSV(colorC.h, colorC.s, colorC.v)
    colorC.r, colorC.g, colorC.b = CS:GetColorRGB()
    return colorC
end

utils:Enable()
