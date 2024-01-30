local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Options: AceModule
local options = addon:NewModule('Options')

---@class Database: AceModule
local database = addon:GetModule('Database')

---@class AceConfig.OptionsTable
local settings = {
    type = 'group',
    args = {
        enable = {
            name = 'Enable',
            desc = 'Do that',
            type = 'toggle',
            set = function(info, val) print(val) end,
            get = function(info) return database.internal.global.Views.ZoneView.Position.X end
        },
        moreoptions = {
            name = 'More',
            type = 'group',
            args = {
                -- Mas
            }
        }
    }

}

function options:OnInitialize()
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, settings)
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName, addonName)
end

options:Enable()
