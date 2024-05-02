local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Maps: AceModule
local maps = addon:NewModule('Maps')

maps.Races = {
    ---@type Race[]
    [2022] = {  -- Waking Shores
        [1] = { -- Apex Canopy River Run
            id = 415640,
            questId = 66732,
            times = {
                normal = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2054
                },
                advanced = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2055
                },
                reverse = {
                    silver = 53,
                    gold = 48,
                    currencyId = 2178
                },
                challenge = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2427
                },
                challengeReverse = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2428
                }
            },
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
            reverse = {
                bronze = 17129,
                silver = 17130,
                gold = 17131
            },
            challenge = {
                bronze = 17871,
                silver = 17872,
                gold = 17873
            },
            challengeReverse = {
                bronze = 17874,
                silver = 17875,
                gold = 17876
            },
            coords = {
                x = 23.2,
                y = 84.2
            },
            name = "Apex Canopy River Run",
            zone = 2022,
        },
        [2] = { -- Emberflow Flight
            id = 415639,
            questId = 66727,
            times = {
                normal = {
                    silver = 53,
                    gold = 47,
                    currencyId = 2052
                },
                advanced = {
                    silver = 49,
                    gold = 44,
                    currencyId = 2052
                },
                reverse = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2177
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2425
                },
                challengeReverse = {
                    silver = 54,
                    gold = 51,
                    currencyId = 2426
                }
            },
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
            reverse = {
                bronze = 17126,
                silver = 17127,
                gold = 17128
            },
            challenge = {
                bronze = 17865,
                silver = 17866,
                gold = 17867
            },
            challengeReverse = {
                bronze = 17868,
                silver = 17869,
                gold = 17870
            },
            coords = {
                x = 41.9,
                y = 67.3
            },
            name = "Emberflow Flight",
            zone = 2022
        },
        [3] = { -- Flashfrost Flyover
            id = 415643,
            questId = 66710,
            times = {
                normal = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2046
                },
                advanced = {
                    silver = 66,
                    gold = 61,
                    currencyId = 2047
                },
                reverse = {
                    silver = 65,
                    gold = 60,
                    currencyId = 2181
                },
                challenge = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2433
                },
                challengeReverse = {
                    silver = 74,
                    gold = 69,
                    currencyId = 2434
                }
            },
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
            reverse = {
                bronze = 17138,
                silver = 17139,
                gold = 17140
            },
            challenge = {
                bronze = 17897,
                silver = 17898,
                gold = 17899
            },
            challengeReverse = {
                bronze = 17900,
                silver = 17901,
                gold = 17902
            },
            coords = {
                x = 62.7,
                y = 74.0
            },
            name = "Flashfrost Flyover",
            zone = 2022
        },
        [4] = { -- Ruby Lifeshrine Loop
            id = 415541,
            questId = 66679,
            times = {
                normal = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2042
                },
                advanced = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2044
                },
                reverse = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2154
                },
                challenge = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2421
                },
                challengeReverse = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2422
                }
            },
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
            reverse = {
                bronze = 17120,
                silver = 17121,
                gold = 17122
            },
            challenge = {
                bronze = 17853,
                silver = 17854,
                gold = 17855
            },
            challengeReverse = {
                bronze = 17856,
                silver = 17857,
                gold = 17858
            },
            coords = {
                x = 63.2,
                y = 70.8
            },
            name = "Ruby Lifeshrine Loop",
            zone = 2022
        },
        [5] = { -- Uktulut Coaster
            id = 415641,
            questId = 66777,
            times = {
                normal = {
                    silver = 48,
                    gold = 45,
                    currencyId = 2056
                },
                advanced = {
                    silver = 45,
                    gold = 40,
                    currencyId = 2057
                },
                reverse = {
                    silver = 48,
                    gold = 43,
                    currencyId = 2179
                },
                challenge = {
                    silver = 49,
                    gold = 46,
                    currencyId = 2429
                },
                challengeReverse = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2430
                }
            },
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
            reverse = {
                bronze = 17132,
                silver = 17133,
                gold = 17134
            },
            challenge = {
                bronze = 17884,
                silver = 17885,
                gold = 17886
            },
            challengeReverse = {
                bronze = 17887,
                silver = 17888,
                gold = 17889
            },
            coords = {
                x = 55.4,
                y = 41.1
            },
            name = "Uktulut Coaster",
            zone = 2022
        },
        [6] = { -- Wild Preserve Circuit
            id = 41564,
            questId = 66725,
            times = {
                normal = {
                    silver = 43,
                    gold = 40,
                    currencyId = 2050
                },
                advanced = {
                    silver = 43,
                    gold = 38,
                    currencyId = 2051
                },
                reverse = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2182
                },
                challenge = {
                    silver = 46,
                    gold = 43,
                    currencyId = 2435
                },
                challengeReverse = {
                    silver = 47,
                    gold = 44,
                    currencyId = 2436
                }
            },
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
            reverse = {
                bronze = 17141,
                silver = 17142,
                gold = 17143
            },
            challenge = {
                bronze = 17906,
                silver = 17907,
                gold = 17908
            },
            challengeReverse = {
                bronze = 17909,
                silver = 17910,
                gold = 17911
            },
            coords = {
                x = 42.6,
                y = 94.9
            },
            name = "Wild Preserve Circuit",
            zone = 2022
        },
        [7] = { -- Wild Preserve Slalom
            id = 415638,
            questId = 66721,
            times = {
                normal = {
                    silver = 45,
                    gold = 42,
                    currencyId = 2048
                },
                advanced = {
                    silver = 45,
                    gold = 40,
                    currencyId = 2049
                },
                reverse = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2176
                },
                challenge = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2423
                },
                challengeReverse = {
                    silver = 52,
                    gold = 49,
                    currencyId = 2424
                }
            },
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
            reverse = {
                bronze = 17123,
                silver = 17124,
                gold = 17125
            },
            challenge = {
                bronze = 17859,
                silver = 17860,
                gold = 17861
            },
            challengeReverse = {
                bronze = 17862,
                silver = 17863,
                gold = 17864
            },
            coords = {
                x = 47.0,
                y = 85.5
            },
            name = "Wild Preserve Slalom",
            zone = 2022
        },
        [8] = { -- Wingrest Roundabout
            id = 415624,
            questId = 66786,
            times = {
                normal = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2058
                },
                advanced = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2059
                },
                reverse = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2180
                },
                challenge = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2431
                },
                challengeReverse = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2432
                }
            },
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
            reverse = {
                bronze = 17135,
                silver = 17136,
                gold = 17137
            },
            challenge = {
                bronze = 17891,
                silver = 17892,
                gold = 17893
            },
            challengeReverse = {
                bronze = 17894,
                silver = 17895,
                gold = 17896
            },
            coords = {
                x = 73.1,
                y = 33.9
            },
            name = "Wingrest Roundabout",
            zone = 2022
        }
    },
    ---@type Race[]
    [2023] = {  -- Om nom nom Plains
        [1] = { -- Fen Flythrough
            id = 415652,
            questId = 66877,
            times = {
                normal = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2062
                },
                advanced = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2063
                },
                reverse = {
                    silver = 52,
                    gold = 47,
                    currencyId = 2184
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2440
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2441
                }
            },
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
            reverse = {
                bronze = 17147,
                silver = 17148,
                gold = 17149
            },
            challenge = {
                bronze = 17922,
                silver = 17923,
                gold = 17924
            },
            challengeReverse = {
                bronze = 17925,
                silver = 17926,
                gold = 17927
            },
            coords = {
                x = 86.2,
                y = 35.8
            },
            name = "Fen Flythrough",
            zone = 2023
        },
        [2] = { -- Sundapple Copse Circuit
            id = 415650,
            questId = 66835,
            times = {
                normal = {
                    silver = 52,
                    gold = 44,
                    currencyId = 2060
                },
                advanced = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2061
                },
                reverse = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2183
                },
                challenge = {
                    silver = 54,
                    gold = 51,
                    currencyId = 2437
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2439
                }
            },
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
            reverse = {
                bronze = 17144,
                silver = 17145,
                gold = 17146
            },
            challenge = {
                bronze = 17912,
                silver = 17913,
                gold = 17914
            },
            challengeReverse = {
                bronze = 17915,
                silver = 17916,
                gold = 17917
            },
            coords = {
                x = 63.7,
                y = 30.5
            },
            name = "Sundapple Copse Circuit",
            zone = 2023
        },
        [3] = { -- Maruukai Dash
            id = 415656,
            questId = 66921,
            times = {
                normal = {
                    silver = 28,
                    gold = 25,
                    currencyId = 2069
                },
                challenge = {
                    silver = 27,
                    gold = 24,
                    currencyId = 2446
                }
            },
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
            reverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challenge = {
                bronze = 17947,
                silver = 17948,
                gold = 17949
            },
            challengeReverse = {
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
        [4] = { -- Ravine River Run
            id = 415653,
            questId = 66880,
            times = {
                normal = {
                    silver = 52,
                    gold = 49,
                    currencyId = 2064
                },
                advanced = {
                    silver = 52,
                    gold = 47,
                    currencyId = 2065
                },
                reverse = {
                    silver = 51,
                    gold = 46,
                    currencyId = 2185
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2442
                },
                challengeReverse = {
                    silver = 54,
                    gold = 51,
                    currencyId = 2443
                }
            },
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
            reverse = {
                bronze = 17150,
                silver = 17151,
                gold = 17152
            },
            challenge = {
                bronze = 17928,
                silver = 17929,
                gold = 17930
            },
            challengeReverse = {
                bronze = 17931,
                silver = 17932,
                gold = 17933
            },
            coords = {
                x = 80.8,
                y = 72.1
            },
            name = "Ravine River Run",
            zone = 2023
        },
        [5] = { -- Mirror of the Sky Dash
            id = 415657,
            questId = 66933,
            times = {
                normal = {
                    silver = 29,
                    gold = 26,
                    currencyId = 2070
                },
                challenge = {
                    silver = 30,
                    gold = 27,
                    currencyId = 2447
                }
            },
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
            reverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challenge = {
                bronze = 17950,
                silver = 17951,
                gold = 17952
            },
            challengeReverse = {
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
        [6] = { -- River Rapids Route
            id = 415658,
            questId = 70710,
            times = {
                normal = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2119
                },
                advanced = {
                    silver = 48,
                    gold = 43,
                    currencyId = 2120
                },
                reverse = {
                    silver = 49,
                    gold = 44,
                    currencyId = 2187
                },
                challenge = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2448
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2449
                }
            },
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
            reverse = {
                bronze = 17156,
                silver = 17157,
                gold = 17158
            },
            challenge = {
                bronze = 17941,
                silver = 17942,
                gold = 17943
            },
            challengeReverse = {
                bronze = 17944,
                silver = 17945,
                gold = 17946
            },
            coords = {
                x = 43.7,
                y = 66.8
            },
            name = "River Rapids Route",
            zone = 2023
        },
        [7] = { -- Emerald Gardens Ascent
            id = 415654,
            questId = 66885,
            times = {
                normal = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2066
                },
                advanced = {
                    silver = 60,
                    gold = 55,
                    currencyId = 2067
                },
                reverse = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2186
                },
                challenge = {
                    silver = 69,
                    gold = 66,
                    currencyId = 2444
                },
                challengeReverse = {
                    silver = 69,
                    gold = 66,
                    currencyId = 2445
                }
            },
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
            reverse = {
                bronze = 17153,
                silver = 17154,
                gold = 17155
            },
            challenge = {
                bronze = 17935,
                silver = 17936,
                gold = 17937
            },
            challengeReverse = {
                bronze = 17938,
                silver = 17939,
                gold = 17940
            },
            coords = {
                x = 25.7,
                y = 55.0
            },
            name = "Emerald Garden Ascent",
            zone = 2023
        }
    },
    ---@type Race[]
    [2024] = {  -- Azure Span
        [1] = { -- Iskaara Tour
            id = 415662,
            questId = 67296,
            times = {
                normal = {
                    silver = 78,
                    gold = 75,
                    currencyId = 2083
                },
                advanced = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2084
                },
                reverse = {
                    silver = 72,
                    gold = 67,
                    currencyId = 2191
                },
                challenge = {
                    silver = 81,
                    gold = 78,
                    currencyId = 2456
                },
                challengeReverse = {
                    silver = 82,
                    gold = 79,
                    currencyId = 2457
                }
            },
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
            reverse = {
                bronze = 17168,
                silver = 17169,
                gold = 17170
            },
            challenge = {
                bronze = 17971,
                silver = 17972,
                gold = 17973
            },
            challengeReverse = {
                bronze = 17974,
                silver = 17975,
                gold = 17976
            },
            coords = {
                x = 16.5,
                y = 49.3
            },
            name = "Iskaara Tour",
            zone = 2024
        },
        [2] = { -- Azure Span Slalom
            id = 415660,
            questId = 67002,
            times = {
                normal = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2076
                },
                advanced = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2077
                },
                reverse = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2189
                },
                challenge = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2452
                },
                challengeReverse = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2453
                }
            },
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
            reverse = {
                bronze = 17162,
                silver = 17163,
                gold = 17164
            },
            challenge = {
                bronze = 17959,
                silver = 17960,
                gold = 17961
            },
            challengeReverse = {
                bronze = 17962,
                silver = 17963,
                gold = 17964
            },
            coords = {
                x = 20.9,
                y = 22.6
            },
            name = "The Azure Span Slalom",
            zone = 2024
        },
        [3] = { -- Frostland Flyover
            id = 415663,
            questId = 67565,
            times = {
                normal = {
                    silver = 79,
                    gold = 76,
                    currencyId = 2085
                },
                advanced = {
                    silver = 77,
                    gold = 72,
                    currencyId = 2086
                },
                reverse = {
                    silver = 74,
                    gold = 69,
                    currencyId = 2192
                },
                challenge = {
                    silver = 88,
                    gold = 85,
                    currencyId = 2458
                },
                challengeReverse = {
                    silver = 86,
                    gold = 83,
                    currencyId = 2459
                }
            },
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
            reverse = {
                bronze = 17171,
                silver = 17172,
                gold = 17173
            },
            challenge = {
                bronze = 17979,
                silver = 17980,
                gold = 17981
            },
            challengeReverse = {
                bronze = 17982,
                silver = 17983,
                gold = 17984
            },
            coords = {
                x = 48.4,
                y = 35.8
            },
            name = "Frostland Flyover",
            zone = 2024
        },
        [4] = { -- Azure Span Sprint
            id = 415659,
            questId = 66946,
            times = {
                normal = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2074
                },
                advanced = {
                    silver = 63,
                    gold = 58,
                    currencyId = 2075
                },
                reverse = {
                    silver = 65,
                    gold = 60,
                    currencyId = 2188
                },
                challenge = {
                    silver = 70,
                    gold = 67,
                    currencyId = 2450
                },
                challengeReverse = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2451
                }
            },
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
            reverse = {
                bronze = 17159,
                silver = 17160,
                gold = 17161
            },
            challenge = {
                bronze = 17953,
                silver = 17954,
                gold = 17955
            },
            challengeReverse = {
                bronze = 17956,
                silver = 17957,
                gold = 17958
            },
            coords = {
                x = 47.9,
                y = 40.7
            },
            name = "The Azure Span Sprint",
            zone = 2024
        },
        [5] = { -- Archive Ambit
            id = 415664,
            questId = 67741,
            times = {
                normal = {
                    silver = 94,
                    gold = 91,
                    currencyId = 2089
                },
                advanced = {
                    silver = 86,
                    gold = 81,
                    currencyId = 2090
                },
                reverse = {
                    silver = 81,
                    gold = 76,
                    currencyId = 2193
                },
                challenge = {
                    silver = 93,
                    gold = 90,
                    currencyId = 2460
                },
                challengeReverse = {
                    silver = 95,
                    gold = 92,
                    currencyId = 2461
                }
            },
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
            reverse = {
                bronze = 17174,
                silver = 17175,
                gold = 17176
            },
            challenge = {
                bronze = 17985,
                silver = 17986,
                gold = 17987
            },
            challengeReverse = {
                bronze = 17988,
                silver = 17989,
                gold = 17990
            },
            coords = {
                x = 42.2,
                y = 56.7
            },
            name = "Archive Ambit",
            zone = 2024
        },
        [6] = { -- The Vakthros Ascent
            id = 415661,
            questId = 67031,
            times = {
                normal = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2078
                },
                advanced = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2079
                },
                reverse = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2190
                },
                challenge = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2454
                },
                challengeReverse = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2455
                }
            },
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
            reverse = {
                bronze = 17165,
                silver = 17166,
                gold = 17167
            },
            challenge = {
                bronze = 17965,
                silver = 17966,
                gold = 17967
            },
            challengeReverse = {
                bronze = 17968,
                silver = 17969,
                gold = 17970
            },
            coords = {
                x = 71.3,
                y = 24.6
            },
            name = "The Vakthros Ascent",
            zone = 2024
        }
    },
    ---@type Race[]
    [2025] = {  -- Thaldraszus
        [1] = { -- The Flowing Forest Flight
            id = 415665,
            questId = 67095,
            times = {
                normal = {
                    silver = 52,
                    gold = 49,
                    currencyId = 2080
                },
                advanced = {
                    silver = 45,
                    gold = 40,
                    currencyId = 2081
                },
                reverse = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2194
                },
                challenge = {
                    silver = 50,
                    gold = 47,
                    currencyId = 2462
                },
                challengeReverse = {
                    silver = 49,
                    gold = 46,
                    currencyId = 2463
                }
            },
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
            reverse = {
                bronze = 17177,
                silver = 17178,
                gold = 17179
            },
            challenge = {
                bronze = 17991,
                silver = 17992,
                gold = 17993
            },
            challengeReverse = {
                bronze = 17994,
                silver = 17995,
                gold = 17996
            },
            coords = {
                x = 57.7,
                y = 75.0
            },
            name = "The Flowing Forest Flight",
            zone = 2025
        },
        [2] = { -- Cliffside Circuit
            id = 415668,
            questId = 70051,
            times = {
                normal = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2096
                },
                advanced = {
                    silver = 71,
                    gold = 66,
                    currencyId = 2097
                },
                reverse = {
                    silver = 74,
                    gold = 69,
                    currencyId = 2196
                },
                challenge = {
                    silver = 84,
                    gold = 81,
                    currencyId = 2466
                },
                challengeReverse = {
                    silver = 83,
                    gold = 80,
                    currencyId = 2467
                }
            },
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
            reverse = {
                bronze = 17183,
                silver = 17184,
                gold = 17185
            },
            challenge = {
                bronze = 18003,
                silver = 18004,
                gold = 18005
            },
            challengeReverse = {
                bronze = 18006,
                silver = 18007,
                gold = 18008
            },
            coords = {
                x = 37.6,
                y = 48.9
            },
            name = "Cliffside Circuit",
            zone = 2025
        },
        [3] = { -- Garden Gallivant
            id = 415670,
            questId = 70157,
            times = {
                normal = {
                    silver = 64,
                    gold = 61,
                    currencyId = 2101
                },
                advanced = {
                    silver = 59,
                    gold = 54,
                    currencyId = 2102
                },
                reverse = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2198
                },
                challenge = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2470
                },
                challengeReverse = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2471
                }
            },
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
            reverse = {
                bronze = 17189,
                silver = 17190,
                gold = 17191
            },
            challenge = {
                bronze = 18015,
                silver = 18016,
                gold = 18017
            },
            challengeReverse = {
                bronze = 18018,
                silver = 18019,
                gold = 18020
            },
            coords = {
                x = 39.5,
                y = 76.1
            },
            name = "Garden Gallivant",
            zone = 2025
        },
        [4] = { -- Tyrhold Trial
            id = 415666,
            questId = 69957,
            times = {
                normal = {
                    silver = 84,
                    gold = 81,
                    currencyId = 2092
                },
                advanced = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2093
                },
                reverse = {
                    silver = 64,
                    gold = 59,
                    currencyId = 2195
                },
                challenge = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2464
                },
                challengeReverse = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2465
                }
            },
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
            reverse = {
                bronze = 17180,
                silver = 17181,
                gold = 17182
            },
            challenge = {
                bronze = 17998,
                silver = 17998,
                gold = 17999
            },
            challengeReverse = {
                bronze = 18000,
                silver = 18001,
                gold = 18002
            },
            coords = {
                x = 57.2,
                y = 66.8
            },
            name = "Tyrhold Trial",
            zone = 2025
        },
        [5] = { -- Academy Ascent
            id = 415669,
            questId = 70059,
            times = {
                normal = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2098
                },
                advanced = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2099
                },
                reverse = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2197
                },
                challenge = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2468
                },
                challengeReverse = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2469
                }
            },
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
            reverse = {
                bronze = 17186,
                silver = 17187,
                gold = 17188
            },
            challenge = {
                bronze = 18009,
                silver = 18010,
                gold = 18011
            },
            challengeReverse = {
                bronze = 18012,
                silver = 18013,
                gold = 18014
            },
            coords = {
                x = 60.3,
                y = 41.6
            },
            name = "Academy Ascent",
            zone = 2025
        },
        [6] = { -- Caverns Criss Cross
            id = 415671,
            questId = 70161,
            times = {
                normal = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2103
                },
                advanced = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2104
                },
                reverse = {
                    silver = 52,
                    gold = 47,
                    currencyId = 2199
                },
                challenge = {
                    silver = 59,
                    gold = 56,
                    currencyId = 2472
                },
                challengeReverse = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2473
                }
            },
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
            reverse = {
                bronze = 17192,
                silver = 17193,
                gold = 17194
            },
            challenge = {
                bronze = 18021,
                silver = 18022,
                gold = 18023
            },
            challengeReverse = {
                bronze = 18024,
                silver = 18025,
                gold = 18026
            },
            coords = {
                x = 58.0,
                y = 33.6
            },
            name = "Caverns Criss-Cross",
            zone = 2025
        }
    },
    ---@type Race[]
    [2133] = {  -- Zaralek Cavern
        [1] = { -- Crystal Circuit
            id = 415795,
            questId = 74839,
            times = {
                normal = {
                    silver = 68,
                    gold = 63,
                    currencyId = 2246
                },
                advanced = {
                    silver = 60,
                    gold = 63,
                    currencyId = 2252
                },
                reverse = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2258,
                },
                challenge = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2486
                },
                challengeReverse = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2487
                }
            },
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
            reverse = {
                bronze = 17435,
                silver = 17436,
                gold = 17437
            },
            challenge = {
                bronze = 18064,
                silver = 18065,
                gold = 18066
            },
            challengeReverse = {
                bronze = 18067,
                silver = 18068,
                gold = 18069
            },
            coords = {
                x = 38.7,
                y = 60.5
            },
            name = "Crystal Circuit",
            zone = 2133
        },
        [2] = { -- Brimstone Scramble
            id = 415797,
            questId = 74939,
            times = {
                normal = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2248
                },
                advanced = {
                    silver = 69,
                    gold = 64,
                    currencyId = 2254
                },
                reverse = {
                    silver = 69,
                    gold = 64,
                    currencyId = 2260
                },
                challenge = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2490
                },
                challengeReverse = {
                    silver = 74,
                    gold = 71,
                    currencyId = 2491
                }
            },
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
            reverse = {
                bronze = 17453,
                silver = 17454,
                gold = 17455
            },
            challenge = {
                bronze = 18076,
                silver = 18077,
                gold = 18078
            },
            challengeReverse = {
                bronze = 18079,
                silver = 18080,
                gold = 18081
            },
            coords = {
                x = 54.5,
                y = 23.75
            },
            name = "Brimstone Scramble",
            zone = 2133
        },
        [3] = { -- Loamm Roamm
            id = 415799,
            questId = 74972,
            times = {
                normal = {
                    silver = 60,
                    gold = 55,
                    currencyId = 2250
                },
                advanced = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2256
                },
                reverse = {
                    silver = 53,
                    gold = 48,
                    currencyId = 2262
                },
                challenge = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2494
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2495
                }
            },
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
            reverse = {
                bronze = 17470,
                silver = 17471,
                gold = 17473
            },
            challenge = {
                bronze = 18088,
                silver = 18089,
                gold = 18090
            },
            challengeReverse = {
                bronze = 18091,
                silver = 18092,
                gold = 18093
            },
            coords = {
                x = 58.1,
                y = 57.65
            },
            name = "Loamm Roamm",
            zone = 2133
        },
        [4] = { -- Caldera Cruise
            id = 415796,
            questId = 74889,
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2247
                },
                advanced = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2253
                },
                reverse = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2259
                },
                challenge = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2488
                },
                challengeReverse = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2489
                }
            },
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
            reverse = {
                bronze = 17444,
                silver = 17445,
                gold = 17446
            },
            challenge = {
                bronze = 18070,
                silver = 18071,
                gold = 18072
            },
            challengeReverse = {
                bronze = 18073,
                silver = 18074,
                gold = 18075
            },
            coords = {
                x = 39.0,
                y = 50.0
            },
            name = "Caldera Cruise",
            zone = 2133
        },
        [5] = { -- Shimmering Slalom
            id = 415798,
            questId = 74951,
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2249
                },
                advanced = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2255
                },
                reverse = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2261
                },
                challenge = {
                    silver = 82,
                    gold = 79,
                    currencyId = 2492
                },
                challengeReverse = {
                    silver = 78,
                    gold = 75,
                    currencyId = 2493
                }
            },
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
            reverse = {
                bronze = 17462,
                silver = 17463,
                gold = 17464
            },
            challenge = {
                bronze = 18082,
                silver = 18083,
                gold = 18084
            },
            challengeReverse = {
                bronze = 18085,
                silver = 18086,
                gold = 18087
            },
            coords = {
                x = 58.65,
                y = 45.1
            },
            name = "Shimmering Slalom",
            zone = 2133
        },
        [6] = { -- Sulfur Sprint
            id = 415800,
            questId = 75035,
            times = {
                normal = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2251
                },
                advanced = {
                    silver = 63,
                    gold = 58,
                    currencyId = 2257
                },
                reverse = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2263
                },
                challenge = {
                    silver = 70,
                    gold = 67,
                    currencyId = 2496
                },
                challengeReverse = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2497
                }
            },
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
            reverse = {
                bronze = 17480,
                silver = 17481,
                gold = 17482
            },
            challenge = {
                bronze = 18094,
                silver = 18095,
                gold = 18096
            },
            challengeReverse = {
                bronze = 18097,
                silver = 18098,
                gold = 18099
            },
            coords = {
                x = 51.26,
                y = 46.55
            },
            name = "Sulfur Sprint",
            zone = 2133
        }
    },
    ---@type Race[]
    [2151] = {  -- The Forbidden Reach
        [1] = { -- Stormsunder Crater Circuit
            id = 415789,
            questId = 73017,
            times = {
                normal = {
                    silver = 45,
                    gold = 43,
                    currencyId = 2201
                },
                advanced = {
                    silver = 47,
                    gold = 42,
                    currencyId = 2207
                },
                reverse = {
                    silver = 47,
                    gold = 42,
                    currencyId = 2213
                },
                challenge = {
                    silver = 48,
                    gold = 45,
                    currencyId = 2474
                },
                challengeReverse = {
                    silver = 47,
                    gold = 44,
                    currencyId = 2475
                }
            },
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
            reverse = {
                bronze = 17220,
                silver = 17221,
                gold = 17222
            },
            challenge = {
                bronze = 18028,
                silver = 18029,
                gold = 18030
            },
            challengeReverse = {
                bronze = 18031,
                silver = 18032,
                gold = 18033
            },
            coords = {
                x = 76.08,
                y = 65.7
            },
            name = "Stormsunder Crater Circuit",
            zone = 2151
        },
        [2] = { -- Aerie Chasm Cruise
            id = 415791,
            questId = 73025,
            times = {
                normal = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2203
                },
                advanced = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2209
                },
                reverse = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2215
                },
                challenge = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2478
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2479
                }
            },
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
            reverse = {
                bronze = 17249,
                silver = 17250,
                gold = 17251
            },
            challenge = {
                bronze = 18040,
                silver = 18041,
                gold = 18042
            },
            challengeReverse = {
                bronze = 18043,
                silver = 18044,
                gold = 18045
            },
            coords = {
                x = 63.1,
                y = 51.85
            },
            name = "Aerie Chasm Cruise",
            zone = 2151
        },
        [3] = { -- Caldera Coaster
            id = 415793,
            questId = 73033,
            times = {
                normal = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2205
                },
                advanced = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2211
                },
                reverse = {
                    silver = 54,
                    gold = 49,
                    currencyId = 2217
                },
                challenge = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2482
                },
                challengeReverse = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2483
                }
            },
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
            reverse = {
                bronze = 17267,
                silver = 17268,
                gold = 17269
            },
            challenge = {
                bronze = 18052,
                silver = 18053,
                gold = 18054
            },
            challengeReverse = {
                bronze = 18055,
                silver = 18056,
                gold = 18057
            },
            coords = {
                x = 41.3,
                y = 14.6
            },
            name = "Caldera Coaster",
            zone = 2151
        },
        [4] = { -- Morqut Ascent
            id = 415790,
            questId = 73020,
            times = {
                normal = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2202
                },
                advanced = {
                    silver = 54,
                    gold = 49,
                    currencyId = 2208
                },
                reverse = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2214
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2476
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2477
                }
            },
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
            reverse = {
                bronze = 17229,
                silver = 17230,
                gold = 17231
            },
            challenge = {
                bronze = 18034,
                silver = 18035,
                gold = 18036
            },
            challengeReverse = {
                bronze = 18037,
                silver = 18038,
                gold = 18039
            },
            coords = {
                x = 35.34,
                y = 65.7
            },
            name = "Morqut Ascent",
            zone = 2151
        },
        [5] = { -- Southern Reach Route
            id = 415792,
            questId = 73029,
            times = {
                normal = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2204
                },
                advanced = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2210
                },
                reverse = {
                    silver = 68,
                    gold = 63,
                    currencyId = 2216
                },
                challenge = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2480
                },
                challengeReverse = {
                    silver = 71,
                    gold = 68,
                    currencyId = 2481
                }
            },
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
            reverse = {
                bronze = 17258,
                silver = 17259,
                gold = 17260
            },
            challenge = {
                bronze = 18046,
                silver = 18047,
                gold = 18048
            },
            challengeReverse = {
                bronze = 18049,
                silver = 18050,
                gold = 18051
            },
            coords = {
                x = 63.65,
                y = 84.05
            },
            name = "Southern Reach Route",
            zone = 2151
        },
        [6] = { -- Forbidden Reach Rush
            id = 415794,
            questId = 73061,
            times = {
                normal = {
                    silver = 62,
                    gold = 59,
                    currencyId = 2206
                },
                advanced = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2212
                },
                reverse = {
                    silver = 61,
                    gold = 57,
                    currencyId = 2218
                },
                challenge = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2484
                },
                challengeReverse = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2485
                }
            },
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
            reverse = {
                bronze = 17276,
                silver = 17277,
                gold = 17278
            },
            challenge = {
                bronze = 18058,
                silver = 18059,
                gold = 18060
            },
            challengeReverse = {
                bronze = 18061,
                silver = 18062,
                gold = 18063
            },
            coords = {
                x = 49.4,
                y = 60.14
            },
            name = "Forbidden Reach Rush",
            zone = 2151
        }
    },
    ---@type Race[]
    [2200] = {  -- Emerald Dream
        [1] = { -- Canopy Concours
            id = 426030,
            questId = 78102,
            times = {
                normal = {
                    silver = 110,
                    gold = 105,
                    currencyId = 2680
                },
                advanced = {
                    silver = 96,
                    gold = 93,
                    currencyId = 2686
                },
                reverse = {
                    silver = 99,
                    gold = 96,
                    currencyId = 2692
                },
                challenge = {
                    silver = 108,
                    gold = 105,
                    currencyId = 2702
                },
                challengeReverse = {
                    silver = 108,
                    gold = 105,
                    currencyId = 2703
                }
            },
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
            reverse = {
                bronze = 19053,
                silver = 19054,
                gold = 19055
            },
            challenge = {
                bronze = 19056,
                silver = 19057,
                gold = 19058
            },
            challengeReverse = {
                bronze = 19059,
                silver = 19060,
                gold = 19061
            },
            coords = {
                x = 62.8,
                y = 88.1
            },
            name = 'Canopy Concours',
            zone = 2200
        },
        [2] = { -- Emerald Amble
            id = 426031,
            questId = 78115,
            times = {
                normal = {
                    silver = 89,
                    gold = 84,
                    currencyId = 2681
                },
                advanced = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2687
                },
                reverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2693
                },
                challenge = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2704
                },
                challengeReverse = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2705
                }
            },
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
            reverse = {
                bronze = 19068,
                silver = 19069,
                gold = 19070
            },
            challenge = {
                bronze = 19071,
                silver = 19072,
                gold = 19073
            },
            challengeReverse = {
                bronze = 19074,
                silver = 19075,
                gold = 19076
            },
            coords = {
                x = 32.3,
                y = 48.2
            },
            name = 'Emerald Amble',
            zone = 2200
        },
        [3] = { -- Shoreline Switchback
            id = 426029,
            questId = 78016,
            times = {
                normal = {
                    silver = 78,
                    gold = 73,
                    currencyId = 2679,
                },
                advanced = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2685
                },
                reverse = {
                    silver = 65,
                    gold = 62,
                    currencyId = 2691
                },
                challenge = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2700
                },
                challengeReverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2701
                }
            },
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
            reverse = {
                bronze = 19038,
                silver = 19039,
                gold = 19040
            },
            challenge = {
                bronze = 19041,
                silver = 19042,
                gold = 19043
            },
            challengeReverse = {
                bronze = 19044,
                silver = 19045,
                gold = 19046
            },
            coords = {
                x = 69.6,
                y = 52.6
            },
            name = 'Shoreline Switchback',
            zone = 2200
        },
        [4] = { -- Smoldering Sprint
            id = 426027,
            questId = 77983,
            times = {
                normal = {
                    silver = 85,
                    gold = 80,
                    currencyId = 2677
                },
                advanced = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2683
                },
                reverse = {
                    silver = 82,
                    gold = 73,
                    currencyId = 2689
                },
                challenge = {
                    silver = 82,
                    gold = 79,
                    currencyId = 2696
                },
                challengeReverse = {
                    silver = 83,
                    gold = 80,
                    currencyId = 2697
                }
            },
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
            reverse = {
                bronze = 18984,
                silver = 18985,
                gold = 18986
            },
            challenge = {
                bronze = 18987,
                silver = 18988,
                gold = 18989
            },
            challengeReverse = {
                bronze = 18990,
                silver = 18991,
                gold = 18992
            },
            coords = {
                x = 37.2,
                y = 44.1
            },
            name = 'Smoldering Sprint',
            zone = 2200
        },
        [5] = { -- Viridescent Venture
            id = 426028,
            questId = 77996,
            times = {
                normal = {
                    silver = 83,
                    gold = 78,
                    currencyId = 2678
                },
                advanced = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2684
                },
                reverse = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2690
                },
                challenge = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2698
                },
                challengeReverse = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2699
                }
            },
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
            reverse = {
                bronze = 18999,
                silver = 19000,
                gold = 19001
            },
            challenge = {
                bronze = 19002,
                silver = 19003,
                gold = 19004
            },
            challengeReverse = {
                bronze = 19005,
                silver = 19006,
                gold = 19007
            },
            coords = {
                x = 35.1,
                y = 55.2
            },
            name = 'Viridescent Venture',
            zone = 2200
        },
        [6] = { -- Ysera Invitational
            id = 426026,
            questId = 77841,
            times = {
                normal = {
                    silver = 103,
                    gold = 98,
                    currencyId = 2676
                },
                advanced = {
                    silver = 90,
                    gold = 87,
                    currencyId = 2682
                },
                reverse = {
                    silver = 90,
                    gold = 87,
                    currencyId = 2688
                },
                challenge = {
                    silver = 98,
                    gold = 95,
                    currencyId = 2694
                },
                challengeReverse = {
                    silver = 100,
                    gold = 97,
                    currencyId = 2695
                }
            },
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
            reverse = {
                bronze = 18949,
                silver = 18950,
                gold = 18951
            },
            challenge = {
                bronze = 18952,
                silver = 18953,
                gold = 18954
            },
            challengeReverse = {
                bronze = 18955,
                silver = 18956,
                gold = 18957
            },
            coords = {
                x = 59.1,
                y = 28.8
            },
            name = 'Ysera Invitational',
            zone = 2200
        },
    },
    ---@type Race[]
    [9996] = {  -- Northrend Cup (Custom ID)
        [1] = { -- Crystalsong Crisis
            id = 432048,
            questId = 78441,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 110,
                    gold = 105,
                    currencyId = 2725
                },
                advanced = {
                    silver = 96,
                    gold = 93,
                    currencyId = 2743
                },
                reverse = {
                    silver = 99,
                    gold = 96,
                    currencyId = 2761
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19609,
                silver = 19610,
                gold = 19611
            },
            advanced = {
                bronze = 19612,
                silver = 19613,
                gold = 19614
            },
            reverse = {
                bronze = 19615,
                silver = 19616,
                gold = 19617
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 91.3,
                y = 70.7
            },
            name = 'Crystalsong Crisis',
            zone = 127
        },
        [2] = { -- Makers' Marathon
            id = 432047,
            questId = 78389,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 105,
                    gold = 100,
                    currencyId = 2724
                },
                advanced = {
                    silver = 98,
                    gold = 93,
                    currencyId = 2742
                },
                reverse = {
                    silver = 102,
                    gold = 98,
                    currencyId = 2760
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19600,
                silver = 19601,
                gold = 19602
            },
            advanced = {
                bronze = 19603,
                silver = 19604,
                gold = 19605
            },
            reverse = {
                bronze = 19606,
                silver = 19607,
                gold = 19608
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 46.99,
                y = 21.89
            },
            name = "Makers' Marathon",
            zone = 120
        },
        [3] = { -- Zul'Drak Zephyr
            id = 432046,
            questId = 78346,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 70,
                    gold = 65,
                    currencyId = 2723
                },
                advanced = {
                    silver = 67,
                    gold = 62,
                    currencyId = 2741
                },
                reverse = {
                    silver = 71,
                    gold = 67,
                    currencyId = 2759
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19591,
                silver = 19592,
                gold = 19593
            },
            advanced = {
                bronze = 19594,
                silver = 19595,
                gold = 19596
            },
            reverse = {
                bronze = 19597,
                silver = 19598,
                gold = 19599
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 40.13,
                y = 39.5
            },
            name = "Zul'Drak Zephyr",
            zone = 120
        },
        [4] = { -- Gundrak Fast Track
            id = 432054,
            questId = 79268,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 65,
                    gold = 60,
                    currencyId = 2730
                },
                advanced = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2748
                },
                reverse = {
                    silver = 61,
                    gold = 57,
                    currencyId = 2766
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19656,
                silver = 19657,
                gold = 19658
            },
            advanced = {
                bronze = 19659,
                silver = 19660,
                gold = 19661
            },
            reverse = {
                bronze = 19662,
                silver = 19663,
                gold = 19664
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 83.65,
                y = 17.38
            },
            name = "Gundrak Fast Track",
            zone = 120
        },
        [5] = { -- Blackriver Burble
            id = 432045,
            questId = 78334,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2722
                },
                advanced = {
                    silver = 72,
                    gold = 67,
                    currencyId = 2740
                },
                reverse = {
                    silver = 75,
                    gold = 71,
                    currencyId = 2758
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19582,
                silver = 19583,
                gold = 19584
            },
            advanced = {
                bronze = 19585,
                silver = 19586,
                gold = 19587
            },
            reverse = {
                bronze = 19588,
                silver = 19589,
                gold = 19590
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 44.73,
                y = 43.42
            },
            name = "Blackriver Burble",
            zone = 116
        },
        [6] = { -- Daggercap Dart
            id = 432044,
            questId = 78325,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 82,
                    gold = 77,
                    currencyId = 2721
                },
                advanced = {
                    silver = 81,
                    gold = 76,
                    currencyId = 2739
                },
                reverse = {
                    silver = 81,
                    gold = 76,
                    currencyId = 2757
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19277,
                silver = 19278,
                gold = 19279
            },
            advanced = {
                bronze = 19280,
                silver = 19281,
                gold = 19282
            },
            reverse = {
                bronze = 19283,
                silver = 19284,
                gold = 19285
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 57.68,
                y = 49.11
            },
            name = "Daggercap Dart",
            zone = 117
        },
        [7] = { -- Scalawag Slither
            id = 432043,
            questId = 78301,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 78,
                    gold = 73,
                    currencyId = 2720
                },
                advanced = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2738
                },
                reverse = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2756
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19199,
                silver = 19200,
                gold = 19201
            },
            advanced = {
                bronze = 19202,
                silver = 19203,
                gold = 19204
            },
            reverse = {
                bronze = 19205,
                silver = 19206,
                gold = 19207
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 41.95,
                y = 67.71
            },
            name = "Scalawag Slither",
            zone = 117
        },
        [8] = { -- Dragonblight Dragon Flight
            id = 432049,
            questId = 78454,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 120,
                    gold = 115,
                    currencyId = 2726
                },
                advanced = {
                    silver = 115,
                    gold = 110,
                    currencyId = 2744
                },
                reverse = {
                    silver = 120,
                    gold = 115,
                    currencyId = 2762
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19618,
                silver = 19619,
                gold = 19620
            },
            advanced = {
                bronze = 19621,
                silver = 19622,
                gold = 19623
            },
            reverse = {
                bronze = 19624,
                silver = 19625,
                gold = 19626
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 41.95,
                y = 67.71
            },
            name = "Dragonblight Dragon Flight",
            zone = 115
        },
        [9] = { -- Citadel Sortie
            id = 432050,
            questId = 78499,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 115,
                    gold = 110,
                    currencyId = 2727
                },
                advanced = {
                    silver = 108,
                    gold = 103,
                    currencyId = 2745
                },
                reverse = {
                    silver = 110,
                    gold = 104,
                    currencyId = 2763
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19627,
                silver = 19628,
                gold = 19629
            },
            advanced = {
                bronze = 19630,
                silver = 19631,
                gold = 19632
            },
            reverse = {
                bronze = 19633,
                silver = 19634,
                gold = 19635
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 51.73,
                y = 91.02
            },
            name = "Citadel Sortie",
            zone = 118
        },
        [10] = { -- Sholazar Spree
            id = 432051,
            questId = 78558,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 93,
                    gold = 88,
                    currencyId = 2728
                },
                advanced = {
                    silver = 90,
                    gold = 85,
                    currencyId = 2746
                },
                reverse = {
                    silver = 89,
                    gold = 85,
                    currencyId = 2764
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19636,
                silver = 19637,
                gold = 19638
            },
            advanced = {
                bronze = 19639,
                silver = 19640,
                gold = 19641
            },
            reverse = {
                bronze = 19642,
                silver = 19643,
                gold = 19644
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 79.45,
                y = 54.39
            },
            name = "Sholazar Spree",
            zone = 119
        },
        [11] = { -- Geothermal Jaunt
            id = 432052,
            questId = 78609,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2729
                },
                advanced = {
                    silver = 42,
                    gold = 37,
                    currencyId = 2747
                },
                reverse = {
                    silver = 41,
                    gold = 37,
                    currencyId = 2765
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19647,
                silver = 19648,
                gold = 19649
            },
            advanced = {
                bronze = 19650,
                silver = 19651,
                gold = 19652
            },
            reverse = {
                bronze = 19653,
                silver = 19654,
                gold = 19655
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 54.1,
                y = 15.5
            },
            name = "Geothermal Jaunt",
            zone = 114
        },
        [12] = { -- Coldarra Climb
            id = 432055,
            questId = 79272,
            times = { -- TODO: Times are wrong
                normal = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2731
                },
                advanced = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2749
                },
                reverse = {
                    silver = 59,
                    gold = 55,
                    currencyId = 2767
                },
                challenge = {
                    silver = 0,
                    gold = 0
                },
                challengeReverse = {
                    silver = 0,
                    gold = 0
                }
            },
            normal = {
                bronze = 19665,
                silver = 19666,
                gold = 19667
            },
            advanced = {
                bronze = 19668,
                silver = 19669,
                gold = 19670
            },
            reverse = {
                bronze = 19671,
                silver = 19672,
                gold = 19673
            },
            challenge = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            challengeReverse = {
                bronze = 0,
                silver = 0,
                gold = 0
            },
            coords = {
                x = 32.31,
                y = 23.84
            },
            name = "Coldarra Climb",
            zone = 114
        },
    }
}

maps.ColorCodes = {
    [3] = '|CFFA16B43',
    [2] = '|CFFA1A09D',
    [1] = '|CFFCA9A2D'
}

maps:Enable()
