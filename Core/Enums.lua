local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Enums: AceModule
local enums = addon:NewModule('Enums')

---@enum Enums.RacingZones
enums.RacingZoneIds = {
    2022,
    2023,
    2024,
    2025,
    2133,
    2151,
    2200,
    114, -- Borean Tundra
    115, -- Dragonblight
    116, -- Grizzly Hills
    117, -- Howling Fjord
    118, -- Icecrown
    119, -- Sholazar Basin
    120, -- Storm Peaks
    121, -- Zul'Drak
    127, -- Crystalsong
    100, -- Hellfire
    102, -- Zanger
    105, -- Blade's Edge
    107, -- Nagrand
    108, -- Terrokar
    109, -- Netherstorm
    111, -- Shatt
    104, -- Shadowmoon
}

enums.Cups = {
    [9995] = { -- Outland Cup
        name = 'Outland Cup',
        zones = {
            100,
            102,
            105,
            107,
            108,
            109,
            111,
            104
        }
    },
    [9996] = { -- Northrend Cup
        name = 'Northrend Cup',
        zones = {
            127,
            120,
            121,
            116,
            117,
            115,
            118,
            119,
            114
        }
    },
    [9997] = { -- Kalimdor Cup
        name = 'Kalimdor Cup',
        zones = {}
    },
    [9998] = { -- Eastern Kingdoms Cup
        name = 'Eastern Kingdoms Cup',
        zones = {}
    },
}

enums:Enable()
