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
        },
        headsUp = {
            name = 'Heads-Up Display',
            type = 'group',
            args = {
                enabled = {
                    name = 'Enable',
                    desc = 'Enable the Heads-Up Display',
                    type = 'toggle',
                    get = function() return database:GetHeadsUpViewEnabled() end,
                    set = function(_, val) database:SetHeadsUpViewEnabled(val) end
                },
                locked = {
                    name = 'Locked',
                    desc = 'Lock the Heads-Up Display',
                    type = 'toggle',
                    get = function() return database:GetHeadsUpViewLocked() end,
                    set = function(_, val) database:SetHeadsUpViewLocked(val) end
                },
                position = {
                    name = 'Position',
                    desc = 'The position of the Heads-Up Display',
                    type = 'group',
                    args = {
                        x = {
                            name = 'X',
                            type = 'range',
                            min = 0,
                            max = 6000,
                            step = 1,
                            get = function() return database:GetHeadsUpViewPosition().X end,
                            set = function(_, val) database:SetHeadsUpViewPositionX(val) end
                        },
                        y = {
                            name = 'Y',
                            type = 'range',
                            min = 0,
                            max = 6000,
                            step = 1,
                            get = function() return database:GetHeadsUpViewPosition().Y end,
                            set = function(_, val) database:SetHeadsUpViewPositionY(val) end
                        }
                    }
                },
                showDefault = {
                    name = 'Show Default Display',
                    desc = 'Show the default Dragonriding display',
                    type = 'toggle',
                    get = function() return database:GetDefaultDisplayEnabled() end,
                    set = function(_, val) database:SetDefaultDisplayEnabled(val) end
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
