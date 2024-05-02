---@diagnostic disable: undefined-field

local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Events: AceModule
local events = addon:NewModule('Events', 'AceEvent-3.0')

function events:OnInitialize()
    events:RegisterEvent('PLAYER_LOGIN')
    events:RegisterEvent('VARIABLES_LOADED')
    events:RegisterEvent('ZONE_CHANGED_NEW_AREA')
    events:RegisterEvent('ACHIEVEMENT_EARNED')
    events:RegisterEvent('TRACKED_ACHIEVEMENT_UPDATE')
    events:RegisterEvent('UNIT_POWER_BAR_HIDE')
    events:RegisterEvent('UNIT_POWER_BAR_SHOW')
    events:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED')
    events:RegisterEvent('UPDATE_UI_WIDGET')
    events:RegisterEvent('QUEST_REMOVED')
end

events:Enable()
