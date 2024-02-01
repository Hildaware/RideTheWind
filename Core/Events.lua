---@diagnostic disable: undefined-field

local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Events: AceModule
local events = addon:NewModule('Events', 'AceEvent-3.0')

function events:OnInitialize()
    events:RegisterEvent('PLAYER_LOGIN')
    events:RegisterEvent('UNIT_AURA')
    events:RegisterEvent('VARIABLES_LOADED')
    events:RegisterEvent('ZONE_CHANGED_NEW_AREA')
    events:RegisterEvent('ACHIEVEMENT_EARNED')
    events:RegisterEvent('TRACKED_ACHIEVEMENT_UPDATE')
end

events:Enable()
