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

local playerIdentifier = ''

function addon:OnInitialize()
    -- Build player data
    local playerId = UnitGUID('player')
    local playerName = UnitName('player')

    if playerId == nil or playerName == nil then return end
    playerIdentifier = playerId

    -- CB.Data.Characters[playerId] = {
    --     Name = playerName
    -- }
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
