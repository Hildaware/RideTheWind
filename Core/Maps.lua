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
    [2024] = { -- Azure Span
        [1] = {
            id = 415662,
            normal = {
                bronze = 15835,
                silver = 15836,
                gold = 15837
            },
            advanced = {
                bronze = 15838,
                silver = 15839,
                gold = 15840
            },
            reversed = {
                bronze = 17168,
                silver = 17169,
                gold = 17170
            },
            coords = {
                x = 16.5,
                y = 49.3
            },
            name = "Iskaara Tour",
            zone = 2024
        },
        [2] = {
            id = 415660,
            normal = {
                bronze = 15799,
                silver = 15800,
                gold = 15801
            },
            advanced = {
                bronze = 15802,
                silver = 15803,
                gold = 15804
            },
            reversed = {
                bronze = 17162,
                silver = 17163,
                gold = 17164
            },
            coords = {
                x = 20.9,
                y = 22.6
            },
            name = "The Azure Span Slalom",
            zone = 2024
        },
        [3] = {
            id = 415663,
            normal = {
                bronze = 15841,
                silver = 15842,
                gold = 15843
            },
            advanced = {
                bronze = 15844,
                silver = 15845,
                gold = 15846
            },
            reversed = {
                bronze = 17171,
                silver = 17172,
                gold = 17173
            },
            coords = {
                x = 48.4,
                y = 35.8
            },
            name = "Frostland Flyover",
            zone = 2024
        },
        [4] = {
            id = 415659,
            normal = {
                bronze = 15788,
                silver = 15789,
                gold = 15790
            },
            advanced = {
                bronze = 15791,
                silver = 15792,
                gold = 15793
            },
            reversed = {
                bronze = 17159,
                silver = 17160,
                gold = 17161
            },
            coords = {
                x = 47.9,
                y = 40.7
            },
            name = "The Azure Span Sprint",
            zone = 2024
        },
        [5] = {
            id = 415664,
            normal = {
                bronze = 15847,
                silver = 15848,
                gold = 15849
            },
            advanced = {
                bronze = 15850,
                silver = 15851,
                gold = 15852
            },
            reversed = {
                bronze = 17174,
                silver = 17175,
                gold = 17176
            },
            coords = {
                x = 42.2,
                y = 56.7
            },
            name = "Archive Ambit",
            zone = 2024
        },
        [6] = {
            id = 415661,
            normal = {
                bronze = 15818,
                silver = 15819,
                gold = 15820
            },
            advanced = {
                bronze = 15821,
                silver = 15822,
                gold = 15823
            },
            reversed = {
                bronze = 17165,
                silver = 17166,
                gold = 17167
            },
            coords = {
                x = 71.3,
                y = 24.6
            },
            name = "The Vakthros Ascent",
            zone = 2024
        }
    },
    [2025] = { -- Thaldraszus
        [1] = {
            id = 415665,
            normal = {
                bronze = 15827,
                silver = 15828,
                gold = 15829
            },
            advanced = {
                bronze = 15830,
                silver = 15831,
                gold = 15832
            },
            reversed = {
                bronze = 17177,
                silver = 17178,
                gold = 17179
            },
            coords = {
                x = 57.7,
                y = 75.0
            },
            name = "The Flowing Forest Flight",
            zone = 2025
        },
        [2] = {
            id = 415668,
            normal = {
                bronze = 15891,
                silver = 15892,
                gold = 15893
            },
            advanced = {
                bronze = 15894,
                silver = 15895,
                gold = 15896
            },
            reversed = {
                bronze = 17183,
                silver = 17184,
                gold = 17185
            },
            coords = {
                x = 37.6,
                y = 48.9
            },
            name = "Cliffside Circuit",
            zone = 2025
        },
        [3] = {
            id = 415670,
            normal = {
                bronze = 15903,
                silver = 15904,
                gold = 15905
            },
            advanced = {
                bronze = 15906,
                silver = 15907,
                gold = 15908
            },
            reversed = {
                bronze = 17189,
                silver = 17190,
                gold = 17191
            },
            coords = {
                x = 39.5,
                y = 76.1
            },
            name = "Garden Gallivant",
            zone = 2025
        },
        [4] = {
            id = 415666,
            normal = {
                bronze = 15855,
                silver = 15856,
                gold = 15857
            },
            advanced = {
                bronze = 15858,
                silver = 15859,
                gold = 15860
            },
            reversed = {
                bronze = 17180,
                silver = 17181,
                gold = 17182
            },
            coords = {
                x = 57.2,
                y = 66.8
            },
            name = "Tyrhold Trial",
            zone = 2025
        },
        [5] = {
            id = 415669,
            normal = {
                bronze = 15897,
                silver = 15898,
                gold = 15899
            },
            advanced = {
                bronze = 15900,
                silver = 15901,
                gold = 15902
            },
            reversed = {
                bronze = 17186,
                silver = 17187,
                gold = 17188
            },
            coords = {
                x = 60.3,
                y = 41.6
            },
            name = "Academy Ascent",
            zone = 2025
        },
        [6] = {
            id = 415671,
            normal = {
                bronze = 15909,
                silver = 15910,
                gold = 15911
            },
            advanced = {
                bronze = 15912,
                silver = 15913,
                gold = 15914
            },
            reversed = {
                bronze = 17192,
                silver = 17193,
                gold = 17194
            },
            coords = {
                x = 58.0,
                y = 33.6
            },
            name = "Caverns Criss-Cross",
            zone = 2025
        }
    },
    [2133] = { -- Zaralek Cavern
        [1] = {
            id = 415795,
            normal = {
                bronze = 17429,
                silver = 17430,
                gold = 17431
            },
            advanced = {
                bronze = 17432,
                silver = 17433,
                gold = 17434
            },
            reversed = {
                bronze = 17435,
                silver = 17436,
                gold = 17437
            },
            coords = {
                x = 38.7,
                y = 60.5
            },
            name = "Crystal Circuit",
            zone = 2133
        },
        [2] = {
            id = 415797,
            normal = {
                bronze = 17447,
                silver = 17448,
                gold = 17449
            },
            advanced = {
                bronze = 17450,
                silver = 17451,
                gold = 17452
            },
            reversed = {
                bronze = 17453,
                silver = 17454,
                gold = 17455
            },
            coords = {
                x = 54.5,
                y = 23.75
            },
            name = "Brimstone Scramble",
            zone = 2133
        },
        [3] = {
            id = 415799,
            normal = {
                bronze = 17465,
                silver = 17466,
                gold = 17467
            },
            advanced = {
                bronze = 17468,
                silver = 17469,
                gold = 17470
            },
            reversed = {
                bronze = 17470,
                silver = 17471,
                gold = 17473
            },
            coords = {
                x = 58.1,
                y = 57.65
            },
            name = "Loamm Roamm",
            zone = 2133
        },
        [4] = {
            id = 415796,
            normal = {
                bronze = 17438,
                silver = 17439,
                gold = 17440
            },
            advanced = {
                bronze = 17441,
                silver = 17442,
                gold = 17443
            },
            reversed = {
                bronze = 17444,
                silver = 17445,
                gold = 17446
            },
            coords = {
                x = 39.0,
                y = 50.0
            },
            name = "Caldera Cruise",
            zone = 2133
        },
        [5] = {
            id = 415798,
            normal = {
                bronze = 17456,
                silver = 17457,
                gold = 17458
            },
            advanced = {
                bronze = 17459,
                silver = 17460,
                gold = 17461
            },
            reversed = {
                bronze = 17462,
                silver = 17463,
                gold = 17464
            },
            coords = {
                x = 58.65,
                y = 45.1
            },
            name = "Shimmering Slalom",
            zone = 2133
        },
        [6] = {
            id = 415800,
            normal = {
                bronze = 17474,
                silver = 17475,
                gold = 17476
            },
            advanced = {
                bronze = 17477,
                silver = 17478,
                gold = 17479
            },
            reversed = {
                bronze = 17480,
                silver = 17481,
                gold = 17482
            },
            coords = {
                x = 51.26,
                y = 46.55
            },
            name = "Sulfur Sprint",
            zone = 2133
        }
    },
    [2151] = { -- The Forbidden Reach
        [1] = {
            id = 415789,
            normal = {
                bronze = 17214,
                silver = 17215,
                gold = 17216
            },
            advanced = {
                bronze = 17217,
                silver = 17218,
                gold = 17219
            },
            reversed = {
                bronze = 17220,
                silver = 17221,
                gold = 17222
            },
            coords = {
                x = 76.08,
                y = 65.7
            },
            name = "Stormsunder Crater Circuit",
            zone = 2151
        },
        [2] = {
            id = 415791,
            normal = {
                bronze = 17243,
                silver = 17244,
                gold = 17245
            },
            advanced = {
                bronze = 17246,
                silver = 17247,
                gold = 17248
            },
            reversed = {
                bronze = 17249,
                silver = 17250,
                gold = 17251
            },
            coords = {
                x = 63.1,
                y = 51.85
            },
            name = "Aerie Chasm Cruise",
            zone = 2151
        },
        [3] = {
            id = 415793,
            normal = {
                bronze = 17261,
                silver = 17262,
                gold = 17263
            },
            advanced = {
                bronze = 17264,
                silver = 17265,
                gold = 17266
            },
            reversed = {
                bronze = 17267,
                silver = 17268,
                gold = 17269
            },
            coords = {
                x = 41.3,
                y = 14.6
            },
            name = "Caldera Coaster",
            zone = 2151
        },
        [4] = {
            id = 415790,
            normal = {
                bronze = 17223,
                silver = 17224,
                gold = 17225
            },
            advanced = {
                bronze = 17226,
                silver = 17227,
                gold = 17228
            },
            reversed = {
                bronze = 17229,
                silver = 17230,
                gold = 17231
            },
            coords = {
                x = 35.34,
                y = 65.7
            },
            name = "Morqut Ascent",
            zone = 2151
        },
        [5] = {
            id = 415792,
            normal = {
                bronze = 17252,
                silver = 17253,
                gold = 17254
            },
            advanced = {
                bronze = 17244,
                silver = 17256,
                gold = 17257
            },
            reversed = {
                bronze = 17258,
                silver = 17259,
                gold = 17260
            },
            coords = {
                x = 63.65,
                y = 84.05
            },
            name = "Southern Reach Route",
            zone = 2151
        },
        [6] = {
            id = 415794,
            normal = {
                bronze = 17270,
                silver = 17271,
                gold = 17272
            },
            advanced = {
                bronze = 17273,
                silver = 17274,
                gold = 17275
            },
            reversed = {
                bronze = 17276,
                silver = 17277,
                gold = 17278
            },
            coords = {
                x = 49.4,
                y = 60.14
            },
            name = "Forbidden Reach Rush",
            zone = 2151
        }
    },
    [2200] = { -- Emerald Dream
        [1] = {
            id = 426030,
            normal = {
                bronze = 19047,
                silver = 19048,
                gold = 19049
            },
            advanced = {
                bronze = 19050,
                silver = 19051,
                gold = 19052
            },
            reversed = {
                bronze = 19053,
                silver = 19054,
                gold = 19055
            },
            coords = {
                x = 62.8,
                y = 88.1
            },
            name = 'Canopy Concours',
            zone = 2200
        },
        [2] = {
            id = 426031,
            normal = {
                bronze = 19062,
                silver = 19063,
                gold = 19064
            },
            advanced = {
                bronze = 19065,
                silver = 19066,
                gold = 19067
            },
            reversed = {
                bronze = 19068,
                silver = 19069,
                gold = 19070
            },
            coords = {
                x = 32.3,
                y = 48.2
            },
            name = 'Emerald Amble',
            zone = 2200
        },
        [3] = {
            id = 426029,
            normal = {
                bronze = 19032,
                silver = 19033,
                gold = 19034
            },
            advanced = {
                bronze = 19035,
                silver = 19036,
                gold = 19037
            },
            reversed = {
                bronze = 19038,
                silver = 19039,
                gold = 19040
            },
            coords = {
                x = 69.6,
                y = 52.6
            },
            name = 'Shoreline Switchback',
            zone = 2200
        },
        [4] = {
            id = 426027,
            normal = {
                bronze = 18978,
                silver = 18979,
                gold = 18980
            },
            advanced = {
                bronze = 18981,
                silver = 18982,
                gold = 18983
            },
            reversed = {
                bronze = 18984,
                silver = 18985,
                gold = 18986
            },
            coords = {
                x = 37.2,
                y = 44.1
            },
            name = 'Smoldering Sprint',
            zone = 2200
        },
        [5] = {
            id = 426028,
            normal = {
                bronze = 18993,
                silver = 18994,
                gold = 18995
            },
            advanced = {
                bronze = 18996,
                silver = 18997,
                gold = 18998
            },
            reversed = {
                bronze = 18999,
                silver = 19000,
                gold = 19001
            },
            coords = {
                x = 35.1,
                y = 55.2
            },
            name = 'Viridescent Venture',
            zone = 2200
        },
        [6] = {
            id = 426026,
            normal = {
                bronze = 18943,
                silver = 18944,
                gold = 18945
            },
            advanced = {
                bronze = 18946,
                silver = 18947,
                gold = 18948
            },
            reversed = {
                bronze = 18949,
                silver = 18950,
                gold = 18951
            },
            coords = {
                x = 59.1,
                y = 28.8
            },
            name = 'Ysera Invitational',
            zone = 2200
        },
    }
}

maps:Enable()
