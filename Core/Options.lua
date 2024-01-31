local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)
local LSM = LibStub("LibSharedMedia-3.0")
local aceConsole = LibStub('AceConsole-3.0')

---@class Options: AceModule
local options = addon:NewModule('Options')

---@class Database: AceModule
local database = addon:GetModule('Database')

local optionsFrame

---@class AceConfig.OptionsTable
local settings = {
    type = 'group',
    args = {
        zoneview = {
            name = 'Zone View',
            type = 'group',
            args = {
                show = {
                    name = 'Show',
                    type = 'execute',
                    func = function()
                        ---@class ZoneView
                        local zoneView = addon:GetModule('ZoneView')
                        zoneView:Show()
                    end
                },
                enabled = {
                    name = 'Enable',
                    desc = 'Enable the Zone View frame',
                    type = 'toggle',
                    get = function() return database:GetZoneViewEnabled() end,
                    set = function(_, val) database:SetZoneViewEnabled(val) end
                },
                backgroundColor = {
                    name = 'Background Color',
                    desc = 'Set the background color of the frame',
                    type = 'color',
                    hasAlpha = true,
                    get = function()
                        local color = database:GetZoneViewColor()
                        return color.r, color.g, color.b, color.a
                    end,
                    set = function(_, r, g, b, a)
                        database:SetZoneViewColor(r, g, b, a)
                    end
                },
                font = {
                    name = 'Font',
                    desc = 'Set the default font used',
                    type = 'select',
                    style = 'dropdown',
                    dialogControl = 'LSM30_Font',
                    values = LSM:HashTable("font"),
                    get = function()
                        return database:GetZoneViewFont().name
                    end,
                    set = function(_, font)
                        database:SetZoneViewFont(font, LSM:HashTable('font')[font])
                    end
                }
            }
        }
    }

}

function options:OnInitialize()
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, settings)
    self.optionsFrame = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName, addonName)

    aceConsole:RegisterChatCommand('rtw', 'SlashCommand')
    aceConsole:RegisterChatCommand('ridethewind', 'SlashCommand')
end

function aceConsole:SlashCommand(...)
    _G['InterfaceOptionsFrame_OpenToCategory'](options.optionsFrame)
end

options:Enable()
