local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Maps: AceModule
local maps = addon:NewModule('Maps')

maps.Races = {
    [2022] = { -- Waking Shores
        [1] = {
            id = 415640,
            normal = {
                bronze = 15730,
                silver = 15731,
                gold = 15732
            },
            advanced = {
                bronze = 15733,
                silver = 15734,
                gold = 15735
            },
            reversed = {
                bronze = 17129,
                silver = 17130,
                gold = 17131
            },
            coords = {
                x = 23.2,
                y = 84.2
            },
            name = "Apex Canopy River Run",
            zone = 2022,
        },
        [2] = {
            id = 415639,
            normal = {
                bronze = 15724,
                silver = 15725,
                gold = 15726
            },
            advanced = {
                bronze = 15727,
                silver = 15728,
                gold = 15729
            },
            reversed = {
                bronze = 17126,
                silver = 17127,
                gold = 17128
            },
            coords = {
                x = 41.9,
                y = 67.3
            },
            name = "Emberflow Flight",
            zone = 2022
        },
        [3] = {
            id = 415643,
            normal = {
                bronze = 15705,
                silver = 15706,
                gold = 15707
            },
            advanced = {
                bronze = 15709,
                silver = 15710,
                gold = 15711
            },
            reversed = {
                bronze = 17138,
                silver = 17139,
                gold = 17140
            },
            coords = {
                x = 62.7,
                y = 74.0
            },
            name = "Flashfrost Flyover",
            zone = 2022
        },
        [4] = {
            id = 415541,
            normal = {
                bronze = 15696,
                silver = 15697,
                gold = 15698
            },
            advanced = {
                bronze = 15702,
                silver = 15703,
                gold = 15704
            },
            reversed = {
                bronze = 17120,
                silver = 17121,
                gold = 17122
            },
            coords = {
                x = 63.2,
                y = 70.8
            },
            name = "Ruby Lifeshrine Loop",
            zone = 2022
        },
        [5] = {
            id = 415641,
            normal = {
                bronze = 15736,
                silver = 15737,
                gold = 15738
            },
            advanced = {
                bronze = 15739,
                silver = 15740,
                gold = 15741
            },
            reversed = {
                bronze = 17132,
                silver = 17133,
                gold = 17134
            },
            coords = {
                x = 55.4,
                y = 41.1
            },
            name = "Uktulut Coaster",
            zone = 2022
        },
        [6] = {
            id = 41564,
            normal = {
                bronze = 15718,
                silver = 15719,
                gold = 15720
            },
            advanced = {
                bronze = 15721,
                silver = 15722,
                gold = 15723
            },
            reversed = {
                bronze = 17141,
                silver = 17142,
                gold = 17143
            },
            coords = {
                x = 42.6,
                y = 94.9
            },
            name = "Wild Preserve Circuit",
            zone = 2022
        },
        [7] = {
            id = 415638,
            normal = {
                bronze = 15712,
                silver = 15713,
                gold = 15714
            },
            advanced = {
                bronze = 15715,
                silver = 15716,
                gold = 15717
            },
            reversed = {
                bronze = 17123,
                silver = 17124,
                gold = 17125
            },
            coords = {
                x = 47.0,
                y = 85.5
            },
            name = "Wild Preserve Slalom",
            zone = 2022
        },
        [8] = {
            id = 415624,
            normal = {
                bronze = 15742,
                silver = 15743,
                gold = 15744
            },
            advanced = {
                bronze = 15745,
                silver = 15746,
                gold = 15747
            },
            reversed = {
                bronze = 17135,
                silver = 17136,
                gold = 17137
            },
            coords = {
                x = 73.1,
                y = 33.9
            },
            name = "Wingrest Roundabout",
            zone = 2022
        }
    },
    [2023] = { -- Om nom nom Plains
        [1] = {
            id = 415652,
            normal = {
                bronze = 15763,
                silver = 15764,
                gold = 15765
            },
            advanced = {
                bronze = 15766,
                silver = 15767,
                gold = 15768
            },
            reversed = {
                bronze = 17147,
                silver = 17148,
                gold = 17149
            },
            coords = {
                x = 86.2,
                y = 35.8
            },
            name = "Fen Flythrough",
            zone = 2023
        },
        [2] = {
            id = 415650,
            normal = {
                bronze = 15757,
                silver = 15758,
                gold = 15759
            },
            advanced = {
                bronze = 15760,
                silver = 15761,
                gold = 15762
            },
            reversed = {
                bronze = 17144,
                silver = 17145,
                gold = 17146
            },
            coords = {
                x = 63.7,
                y = 30.5
            },
            name = "Sundapple Copse Circuit",
            zone = 2023
        },
        [3] = {
            id = 415656,
            normal = {
                bronze = 15782,
                silver = 15783,
                gold = 15784
            },
            advanced = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            reversed = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 59.5,
                y = 35.5
            },
            name = "Maruukai Dash",
            zone = 2023
        },
        [4] = {
            id = 415653,
            normal = {
                bronze = 15769,
                silver = 15770,
                gold = 15771
            },
            advanced = {
                bronze = 15772,
                silver = 15773,
                gold = 15774
            },
            reversed = {
                bronze = 17150,
                silver = 17151,
                gold = 17152
            },
            coords = {
                x = 80.8,
                y = 72.1
            },
            name = "Ravine River Run",
            zone = 2023
        },
        [5] = {
            id = 415657,
            normal = {
                bronze = 15785,
                silver = 15786,
                gold = 15787
            },
            advanced = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            reversed = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 47.4,
                y = 70.6
            },
            name = "Mirror of the Sky Dash",
            zone = 2023
        },
        [6] = {
            id = 415658,
            normal = {
                bronze = 16302,
                silver = 16303,
                gold = 16304
            },
            advanced = {
                bronze = 16305,
                silver = 16306,
                gold = 16307
            },
            reversed = {
                bronze = 17156,
                silver = 17157,
                gold = 17158
            },
            coords = {
                x = 43.7,
                y = 66.8
            },
            name = "River Rapids Route",
            zone = 2023
        },
        [7] = {
            id = 415654,
            normal = {
                bronze = 15775,
                silver = 15776,
                gold = 15777
            },
            advanced = {
                bronze = 15778,
                silver = 15779,
                gold = 15780
            },
            reversed = {
                bronze = 17153,
                silver = 17154,
                gold = 17155
            },
            coords = {
                x = 25.7,
                y = 55.0
            },
            name = "Emerald Garden Ascent",
            zone = 2023
        }
    },
    [2024] = { -- TODO: Azure Span
        [1] = {
            advanced = "15840",
            normal = "15837",
            reversed = "17170",
            name = "Iskaara Tour",
            zone = 2024
        },
        [2] = {
            advanced = "15804",
            normal = "15801",
            reversed = "17164",
            name = "The Azure Span Slalom",
            zone = 2024
        },
        [3] = {
            advanced = "15846",
            normal = "15843",
            reversed = "17173",
            name = "Frostland Flyover",
            zone = 2024
        },
        [4] = {
            advanced = "15793",
            normal = "15790",
            reversed = "17161",
            name = "The Azure Span Sprint",
            zone = 2024
        },
        [5] = {
            advanced = "15852",
            normal = "15849",
            reversed = "17176",
            name = "Archive Ambit",
            zone = 2024
        },
        [6] = {
            advanced = "15823",
            normal = "15820",
            reversed = "17167",
            name = "The Vakthros Ascent",
            zone = 2024
        }
    },
    [2025] = { -- TODO: Thaldraszus
        [1] = {
            advanced = "15832",
            normal = "15829",
            reversed = "17179",
            name = "The Flowing Forest Flight",
            zone = 2025
        },
        [2] = {
            advanced = "15896",
            normal = "15893",
            reversed = "17185",
            name = "Cliffside Circuit",
            zone = 2025
        },
        [3] = {
            advanced = "15908",
            normal = "15905",
            reversed = "17191",
            name = "Garden Gallivant",
            zone = 2025
        },
        [4] = {
            advanced = "15860",
            normal = "15857",
            reversed = "17182",
            name = "Tyrhold Trial",
            zone = 2025
        },
        [5] = {
            advanced = "15902",
            normal = "15899",
            reversed = "17188",
            name = "Academy Ascent",
            zone = 2025
        },
        [6] = {
            advanced = "15914",
            normal = "15911",
            reversed = "17194",
            name = "Caverns Criss-Cross",
            zone = 2025
        }
    },
    [2133] = { -- TODO: Zaralek Cavern
        [1] = {
            advanced = "17434",
            normal = "17431",
            reversed = "17437",
            name = "Crystal Circuit",
            zone = 2133
        },
        [2] = {
            advanced = "17452",
            normal = "17449",
            reversed = "17455",
            name = "Brimstone Scramble",
            zone = 2133
        },
        [3] = {
            advanced = "17470",
            normal = "17467",
            reversed = "17473",
            name = "Loamm Roamm",
            zone = 2133
        },
        [4] = {
            advanced = "17443",
            normal = "17440",
            reversed = "17446",
            name = "Caldera Cruise",
            zone = 2133
        },
        [5] = {
            advanced = "17461",
            normal = "17458",
            reversed = "17464",
            name = "Shimmering Slalom",
            zone = 2133
        },
        [6] = {
            advanced = "17479",
            normal = "17476",
            reversed = "17482",
            name = "Sulfur Sprint",
            zone = 2133
        }
    },
    [2151] = { -- TODO: Forbidden Reach
        [1] = {
            advanced = "17219",
            normal = "17216",
            reversed = "17222",
            name = "Stormsunder Crater Circuit",
            zone = 2151
        },
        [2] = {
            advanced = "17248",
            normal = "17245",
            reversed = "17251",
            name = "Aerie Chasm Cruise",
            zone = 2151
        },
        [3] = {
            advanced = "17266",
            normal = "17263",
            reversed = "17269",
            name = "Caldera Coaster",
            zone = 2151
        },
        [4] = {
            advanced = "17228",
            normal = "17225",
            reversed = "17231",
            name = "Morqut Ascent",
            zone = 2151
        },
        [5] = {
            advanced = "17257",
            normal = "17254",
            reversed = "17260",
            name = "Southern Reach Route",
            zone = 2151
        },
        [6] = {
            advanced = "17275",
            normal = "17272",
            reversed = "17278",
            name = "Forbidden Reach Rush",
            zone = 2151
        }
    },
    [2200] = { -- TODO: Emerald Dream

    }
}

maps:Enable()
