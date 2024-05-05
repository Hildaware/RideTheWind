local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Maps: AceModule
local maps = addon:NewModule('Maps')

maps.Races = {
    ---@type Race[]
    [2022] = {  -- Waking Shores
        [1] = { -- Apex Canopy River Run
            id = 415640,
            times = {
                normal = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2054,
                    questId = 66732
                },
                advanced = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2055,
                    questId = 66733
                },
                reverse = {
                    silver = 53,
                    gold = 48,
                    currencyId = 2178,
                    questId = 72734
                },
                challenge = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2427,
                    questId = 75782
                },
                challengeReverse = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2428,
                    questId = 75783
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
            times = {
                normal = {
                    silver = 53,
                    gold = 47,
                    currencyId = 2052,
                    questId = 66727
                },
                advanced = {
                    silver = 49,
                    gold = 44,
                    currencyId = 2052,
                    questId = 66728
                },
                reverse = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2177,
                    questId = 72707
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2425,
                    questId = 75780
                },
                challengeReverse = {
                    silver = 54,
                    gold = 51,
                    currencyId = 2426,
                    questId = 75781
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
            times = {
                normal = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2046,
                    questId = 66710
                },
                advanced = {
                    silver = 66,
                    gold = 61,
                    currencyId = 2047,
                    questId = 66711
                },
                reverse = {
                    silver = 65,
                    gold = 60,
                    currencyId = 2181,
                    questId = 72700
                },
                challenge = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2433,
                    questId = 75789
                },
                challengeReverse = {
                    silver = 74,
                    gold = 69,
                    currencyId = 2434,
                    questId = 75790
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
            times = {
                normal = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2042,
                    questId = 66679
                },
                advanced = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2044,
                    questId = 66680
                },
                reverse = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2154,
                    questId = 72052
                },
                challenge = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2421,
                    questId = 75776
                },
                challengeReverse = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2422,
                    questId = 75776
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
            times = {
                normal = {
                    silver = 48,
                    gold = 45,
                    currencyId = 2056,
                    questId = 66777
                },
                advanced = {
                    silver = 45,
                    gold = 40,
                    currencyId = 2057,
                    questId = 66778
                },
                reverse = {
                    silver = 48,
                    gold = 43,
                    currencyId = 2179,
                    quest = 72739
                },
                challenge = {
                    silver = 49,
                    gold = 46,
                    currencyId = 2429,
                    questId = 75785
                },
                challengeReverse = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2430,
                    questId = 75786
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
            times = {
                normal = {
                    silver = 43,
                    gold = 40,
                    currencyId = 2050,
                    questId = 66725
                },
                advanced = {
                    silver = 43,
                    gold = 38,
                    currencyId = 2051,
                    questId = 66726
                },
                reverse = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2182,
                    questId = 72706
                },
                challenge = {
                    silver = 46,
                    gold = 43,
                    currencyId = 2435,
                    questId = 75791
                },
                challengeReverse = {
                    silver = 47,
                    gold = 44,
                    currencyId = 2436,
                    questId = 75792
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
            times = {
                normal = {
                    silver = 45,
                    gold = 42,
                    currencyId = 2048,
                    questId = 66721
                },
                advanced = {
                    silver = 45,
                    gold = 40,
                    currencyId = 2049,
                    questId = 66722
                },
                reverse = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2176,
                    questId = 72705
                },
                challenge = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2423,
                    questId = 75778
                },
                challengeReverse = {
                    silver = 52,
                    gold = 49,
                    currencyId = 2424,
                    questId = 75779
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
            times = {
                normal = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2058,
                    questId = 66786
                },
                advanced = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2059,
                    questId = 66787
                },
                reverse = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2180,
                    questId = 72740
                },
                challenge = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2431,
                    questId = 75787
                },
                challengeReverse = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2432,
                    questId = 75788
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
                    currencyId = 2062,
                    questId = 66877
                },
                advanced = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2063,
                    questId = 66878
                },
                reverse = {
                    silver = 52,
                    gold = 47,
                    currencyId = 2184,
                    questId = 72802
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2440,
                    questId = 75795
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2441,
                    questId = 75796
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
            times = {
                normal = {
                    silver = 52,
                    gold = 44,
                    currencyId = 2060,
                    questId = 66835
                },
                advanced = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2061,
                    questId = 66836
                },
                reverse = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2183,
                    questId = 72801
                },
                challenge = {
                    silver = 54,
                    gold = 51,
                    currencyId = 2437,
                    questId = 75793
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2439,
                    questId = 75793
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
            times = {
                normal = {
                    silver = 28,
                    gold = 25,
                    currencyId = 2069,
                    questId = 66921
                },
                challenge = {
                    silver = 27,
                    gold = 24,
                    currencyId = 2446,
                    questId = 75801
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
            times = {
                normal = {
                    silver = 52,
                    gold = 49,
                    currencyId = 2064,
                    questId = 66880
                },
                advanced = {
                    silver = 52,
                    gold = 47,
                    currencyId = 2065,
                    questId = 66881
                },
                reverse = {
                    silver = 51,
                    gold = 46,
                    currencyId = 2185,
                    questId = 72803
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2442,
                    questId = 75797
                },
                challengeReverse = {
                    silver = 54,
                    gold = 51,
                    currencyId = 2443,
                    questId = 75798
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
            times = {
                normal = {
                    silver = 29,
                    gold = 26,
                    currencyId = 2070,
                    questId = 66933
                },
                challenge = {
                    silver = 30,
                    gold = 27,
                    currencyId = 2447,
                    questId = 75802
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
            times = {
                normal = {
                    silver = 51,
                    gold = 48,
                    currencyId = 2119,
                    questId = 70710
                },
                advanced = {
                    silver = 48,
                    gold = 43,
                    currencyId = 2120,
                    questId = 70711
                },
                reverse = {
                    silver = 49,
                    gold = 44,
                    currencyId = 2187,
                    questId = 72807
                },
                challenge = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2448,
                    questId = 75803
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2449,
                    questId = 75804
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
        [7] = { -- Emerald Garden Ascent
            id = 415654,
            times = {
                normal = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2066,
                    questId = 66885
                },
                advanced = {
                    silver = 60,
                    gold = 55,
                    currencyId = 2067,
                    questId = 66886
                },
                reverse = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2186,
                    questId = 72805
                },
                challenge = {
                    silver = 69,
                    gold = 66,
                    currencyId = 2444,
                    questId = 75799
                },
                challengeReverse = {
                    silver = 69,
                    gold = 66,
                    currencyId = 2445,
                    questId = 75800
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
            times = {
                normal = {
                    silver = 78,
                    gold = 75,
                    currencyId = 2083,
                    questId = 67296
                },
                advanced = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2084,
                    questId = 67297
                },
                reverse = {
                    silver = 72,
                    gold = 67,
                    currencyId = 2191,
                    questId = 72800
                },
                challenge = {
                    silver = 81,
                    gold = 78,
                    currencyId = 2456,
                    questId = 75811
                },
                challengeReverse = {
                    silver = 82,
                    gold = 79,
                    currencyId = 2457,
                    questId = 75812
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
            times = {
                normal = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2076,
                    questId = 67002
                },
                advanced = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2077,
                    questId = 67003
                },
                reverse = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2189,
                    questId = 72799
                },
                challenge = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2452,
                    questId = 75807
                },
                challengeReverse = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2453,
                    questId = 75808
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
            times = {
                normal = {
                    silver = 79,
                    gold = 76,
                    currencyId = 2085,
                    questId = 67565
                },
                advanced = {
                    silver = 77,
                    gold = 72,
                    currencyId = 2086,
                    questId = 67566
                },
                reverse = {
                    silver = 74,
                    gold = 69,
                    currencyId = 2192,
                    questId = 72795
                },
                challenge = {
                    silver = 88,
                    gold = 85,
                    currencyId = 2458,
                    questId = 75813
                },
                challengeReverse = {
                    silver = 86,
                    gold = 83,
                    currencyId = 2459,
                    questId = 75814
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
            times = {
                normal = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2074,
                    questId = 66946
                },
                advanced = {
                    silver = 63,
                    gold = 58,
                    currencyId = 2075,
                    questId = 66947
                },
                reverse = {
                    silver = 65,
                    gold = 60,
                    currencyId = 2188,
                    questId = 72796
                },
                challenge = {
                    silver = 70,
                    gold = 67,
                    currencyId = 2450,
                    questId = 75805
                },
                challengeReverse = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2451,
                    questId = 75805
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
            times = {
                normal = {
                    silver = 94,
                    gold = 91,
                    currencyId = 2089,
                    questId = 67741
                },
                advanced = {
                    silver = 86,
                    gold = 81,
                    currencyId = 2090,
                    questId = 67742
                },
                reverse = {
                    silver = 81,
                    gold = 76,
                    currencyId = 2193,
                    questId = 72797
                },
                challenge = {
                    silver = 93,
                    gold = 90,
                    currencyId = 2460,
                    questId = 75816
                },
                challengeReverse = {
                    silver = 95,
                    gold = 92,
                    currencyId = 2461,
                    questId = 75817
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
            times = {
                normal = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2078,
                    questId = 67031
                },
                advanced = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2079,
                    questId = 67032
                },
                reverse = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2190,
                    questId = 72794
                },
                challenge = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2454,
                    questId = 75809
                },
                challengeReverse = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2455,
                    questId = 75810
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
            times = {
                normal = {
                    silver = 52,
                    gold = 49,
                    currencyId = 2080,
                    questId = 67095
                },
                advanced = {
                    silver = 45,
                    gold = 40,
                    currencyId = 2081,
                    questId = 67096
                },
                reverse = {
                    silver = 46,
                    gold = 41,
                    currencyId = 2194,
                    questId = 72793
                },
                challenge = {
                    silver = 50,
                    gold = 47,
                    currencyId = 2462,
                    questId = 75820
                },
                challengeReverse = {
                    silver = 49,
                    gold = 46,
                    currencyId = 2463,
                    questId = 75821
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
            times = {
                normal = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2096,
                    questId = 70051
                },
                advanced = {
                    silver = 71,
                    gold = 66,
                    currencyId = 2097,
                    questId = 70052
                },
                reverse = {
                    silver = 74,
                    gold = 69,
                    currencyId = 2196,
                    questId = 72760
                },
                challenge = {
                    silver = 84,
                    gold = 81,
                    currencyId = 2466,
                    questId = 75824
                },
                challengeReverse = {
                    silver = 83,
                    gold = 80,
                    currencyId = 2467,
                    questId = 75825
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
            times = {
                normal = {
                    silver = 64,
                    gold = 61,
                    currencyId = 2101,
                    questId = 70157
                },
                advanced = {
                    silver = 59,
                    gold = 54,
                    currencyId = 2102,
                    questId = 70158
                },
                reverse = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2198,
                    questId = 72769
                },
                challenge = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2470,
                    questId = 75784
                },
                challengeReverse = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2471,
                    questId = 75785
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
            times = {
                normal = {
                    silver = 84,
                    gold = 81,
                    currencyId = 2092,
                    questId = 69957
                },
                advanced = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2093,
                    questId = 69958
                },
                reverse = {
                    silver = 64,
                    gold = 59,
                    currencyId = 2195,
                    questId = 72792
                },
                challenge = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2464,
                    questId = 75822
                },
                challengeReverse = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2465,
                    questId = 75823
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
            times = {
                normal = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2098,
                    questId = 70059
                },
                advanced = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2099,
                    questId = 70060
                },
                reverse = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2197,
                    questId = 72754
                },
                challenge = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2468,
                    questId = 75826
                },
                challengeReverse = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2469,
                    questId = 75827
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
            times = {
                normal = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2103,
                    questId = 70161
                },
                advanced = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2104,
                    questId = 70162
                },
                reverse = {
                    silver = 52,
                    gold = 47,
                    currencyId = 2199,
                    questId = 72750
                },
                challenge = {
                    silver = 59,
                    gold = 56,
                    currencyId = 2472,
                    questId = 75829
                },
                challengeReverse = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2473,
                    questId = 75830
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
            times = {
                normal = {
                    silver = 68,
                    gold = 63,
                    currencyId = 2246,
                    questId = 74839
                },
                advanced = {
                    silver = 60,
                    gold = 63,
                    currencyId = 2252,
                    questId = 74840
                },
                reverse = {
                    silver = 58,
                    gold = 53,
                    currencyId = 2258,
                    questId = 74882
                },
                challenge = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2486,
                    questId = 75972
                },
                challengeReverse = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2487,
                    questId = 75973
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
            times = {
                normal = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2248,
                    questId = 74939
                },
                advanced = {
                    silver = 69,
                    gold = 64,
                    currencyId = 2254,
                    questId = 74940
                },
                reverse = {
                    silver = 69,
                    gold = 64,
                    currencyId = 2260,
                    questId = 74944
                },
                challenge = {
                    silver = 72,
                    gold = 69,
                    currencyId = 2490,
                    questId = 75976
                },
                challengeReverse = {
                    silver = 74,
                    gold = 71,
                    currencyId = 2491,
                    questId = 75977
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
            times = {
                normal = {
                    silver = 60,
                    gold = 55,
                    currencyId = 2250,
                    questId = 74972
                },
                advanced = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2256,
                    questId = 74973
                },
                reverse = {
                    silver = 53,
                    gold = 48,
                    currencyId = 2262,
                    questId = 74977
                },
                challenge = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2494,
                    questId = 75980
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2495,
                    questId = 75981
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
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2247,
                    questId = 74889
                },
                advanced = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2253,
                    questId = 74890
                },
                reverse = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2259,
                    questId = 74925
                },
                challenge = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2488,
                    questId = 75974
                },
                challengeReverse = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2489,
                    questId = 75975
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
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2249,
                    questId = 74951
                },
                advanced = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2255,
                    questId = 74952
                },
                reverse = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2261,
                    questId = 74956
                },
                challenge = {
                    silver = 82,
                    gold = 79,
                    currencyId = 2492,
                    questId = 75978
                },
                challengeReverse = {
                    silver = 78,
                    gold = 75,
                    currencyId = 2493,
                    questId = 75979
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
            times = {
                normal = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2251,
                    questId = 75035
                },
                advanced = {
                    silver = 63,
                    gold = 58,
                    currencyId = 2257,
                    questId = 75036
                },
                reverse = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2263,
                    questId = 75043
                },
                challenge = {
                    silver = 70,
                    gold = 67,
                    currencyId = 2496,
                    questId = 75982
                },
                challengeReverse = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2497,
                    questId = 75983
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
            times = {
                normal = {
                    silver = 45,
                    gold = 43,
                    currencyId = 2201,
                    questId = 73017
                },
                advanced = {
                    silver = 47,
                    gold = 42,
                    currencyId = 2207,
                    questId = 73018
                },
                reverse = {
                    silver = 47,
                    gold = 42,
                    currencyId = 2213,
                    questId = 73019
                },
                challenge = {
                    silver = 48,
                    gold = 45,
                    currencyId = 2474,
                    questId = 75954
                },
                challengeReverse = {
                    silver = 47,
                    gold = 44,
                    currencyId = 2475,
                    questId = 75955
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
            times = {
                normal = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2203,
                    questId = 73025
                },
                advanced = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2209,
                    questId = 73026
                },
                reverse = {
                    silver = 55,
                    gold = 50,
                    currencyId = 2215,
                    questId = 73027
                },
                challenge = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2478,
                    questId = 75958
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2479,
                    questId = 75959
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
            times = {
                normal = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2205,
                    questId = 73033
                },
                advanced = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2211,
                    questId = 73034
                },
                reverse = {
                    silver = 54,
                    gold = 49,
                    currencyId = 2217,
                    questId = 73035
                },
                challenge = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2482,
                    questId = 75962
                },
                challengeReverse = {
                    silver = 56,
                    gold = 53,
                    currencyId = 2483,
                    questId = 75963
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
            times = {
                normal = {
                    silver = 55,
                    gold = 52,
                    currencyId = 2202,
                    questId = 73020
                },
                advanced = {
                    silver = 54,
                    gold = 49,
                    currencyId = 2208,
                    questId = 73021
                },
                reverse = {
                    silver = 57,
                    gold = 52,
                    currencyId = 2214,
                    questId = 73022
                },
                challenge = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2476,
                    questId = 75956
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50,
                    currencyId = 2477,
                    questId = 75957
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
            times = {
                normal = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2204,
                    questId = 73029
                },
                advanced = {
                    silver = 73,
                    gold = 68,
                    currencyId = 2210,
                    questId = 73030
                },
                reverse = {
                    silver = 68,
                    gold = 63,
                    currencyId = 2216,
                    questId = 73031
                },
                challenge = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2480,
                    questId = 75960
                },
                challengeReverse = {
                    silver = 71,
                    gold = 68,
                    currencyId = 2481,
                    questId = 75961
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
            times = {
                normal = {
                    silver = 62,
                    gold = 59,
                    currencyId = 2206,
                    questId = 73061
                },
                advanced = {
                    silver = 61,
                    gold = 56,
                    currencyId = 2212,
                    questId = 73062
                },
                reverse = {
                    silver = 61,
                    gold = 57,
                    currencyId = 2218,
                    questId = 73063
                },
                challenge = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2484,
                    questId = 75964
                },
                challengeReverse = {
                    silver = 63,
                    gold = 60,
                    currencyId = 2485,
                    questId = 75965
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
            times = {
                normal = {
                    silver = 110,
                    gold = 105,
                    currencyId = 2680,
                    questId = 78102
                },
                advanced = {
                    silver = 96,
                    gold = 93,
                    currencyId = 2686,
                    questId = 78103
                },
                reverse = {
                    silver = 99,
                    gold = 96,
                    currencyId = 2692,
                    questId = 78104
                },
                challenge = {
                    silver = 108,
                    gold = 105,
                    currencyId = 2702,
                    questId = 78105
                },
                challengeReverse = {
                    silver = 108,
                    gold = 105,
                    currencyId = 2703,
                    questId = 78106
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
            times = {
                normal = {
                    silver = 89,
                    gold = 84,
                    currencyId = 2681,
                    questId = 78115
                },
                advanced = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2687,
                    questId = 78116
                },
                reverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2693,
                    questId = 78117
                },
                challenge = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2704,
                    questId = 78118
                },
                challengeReverse = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2705,
                    questId = 78119
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
            times = {
                normal = {
                    silver = 78,
                    gold = 73,
                    currencyId = 2679,
                    questId = 78016
                },
                advanced = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2685,
                    questId = 78017
                },
                reverse = {
                    silver = 65,
                    gold = 62,
                    currencyId = 2691,
                    questId = 78018
                },
                challenge = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2700,
                    questId = 78019
                },
                challengeReverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2701,
                    questId = 78020
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
            times = {
                normal = {
                    silver = 85,
                    gold = 80,
                    currencyId = 2677,
                    questId = 77983
                },
                advanced = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2683,
                    questId = 77984
                },
                reverse = {
                    silver = 82,
                    gold = 73,
                    currencyId = 2689,
                    questId = 77985
                },
                challenge = {
                    silver = 82,
                    gold = 79,
                    currencyId = 2696,
                    questId = 77986
                },
                challengeReverse = {
                    silver = 83,
                    gold = 80,
                    currencyId = 2697,
                    questId = 77987
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
            times = {
                normal = {
                    silver = 83,
                    gold = 78,
                    currencyId = 2678,
                    questId = 77996
                },
                advanced = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2684,
                    questId = 77997
                },
                reverse = {
                    silver = 67,
                    gold = 64,
                    currencyId = 2690,
                    questId = 77998
                },
                challenge = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2698,
                    questId = 77999
                },
                challengeReverse = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2699,
                    questId = 78000
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
            times = {
                normal = {
                    silver = 103,
                    gold = 98,
                    currencyId = 2676,
                    questId = 77841
                },
                advanced = {
                    silver = 90,
                    gold = 87,
                    currencyId = 2682,
                    questId = 77842
                },
                reverse = {
                    silver = 90,
                    gold = 87,
                    currencyId = 2688,
                    questId = 77843
                },
                challenge = {
                    silver = 98,
                    gold = 95,
                    currencyId = 2694,
                    questId = 77844
                },
                challengeReverse = {
                    silver = 100,
                    gold = 97,
                    currencyId = 2695,
                    questId = 77845
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
            times = {
                normal = {
                    silver = 110,
                    gold = 105,
                    currencyId = 2725,
                    questId = 78441,
                },
                advanced = {
                    silver = 96,
                    gold = 93,
                    currencyId = 2743
                    ,
                    questId = 78442,
                },
                reverse = {
                    silver = 99,
                    gold = 96,
                    currencyId = 2761
                    ,
                    questId = 78443,
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
            times = {
                normal = {
                    silver = 105,
                    gold = 100,
                    currencyId = 2724,
                    questId = 78389
                },
                advanced = {
                    silver = 96,
                    gold = 93,
                    currencyId = 2742,
                    questId = 78390
                },
                reverse = {
                    silver = 101,
                    gold = 98,
                    currencyId = 2760,
                    questId = 78391
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
            times = {
                normal = {
                    silver = 70,
                    gold = 65,
                    currencyId = 2723,
                    questId = 78346
                },
                advanced = {
                    silver = 65,
                    gold = 62,
                    currencyId = 2741,
                    questId = 78347
                },
                reverse = {
                    silver = 70,
                    gold = 67,
                    currencyId = 2759,
                    questId = 78348
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
            times = {
                normal = {
                    silver = 65,
                    gold = 60,
                    currencyId = 2730,
                    questId = 79268
                },
                advanced = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2748,
                    questId = 79269
                },
                reverse = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2766,
                    questId = 79270
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
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2722,
                    questId = 78334
                },
                advanced = {
                    silver = 70,
                    gold = 67,
                    currencyId = 2740,
                    questId = 78335
                },
                reverse = {
                    silver = 74,
                    gold = 71,
                    currencyId = 2758,
                    questId = 78336
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
            times = {
                normal = {
                    silver = 82,
                    gold = 77,
                    currencyId = 2721,
                    questId = 78325
                },
                advanced = {
                    silver = 79,
                    gold = 76,
                    currencyId = 2739,
                    questId = 78326
                },
                reverse = {
                    silver = 79,
                    gold = 76,
                    currencyId = 2757,
                    questId = 78327
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
            times = {
                normal = {
                    silver = 78,
                    gold = 73,
                    currencyId = 2720,
                    questId = 78301
                },
                advanced = {
                    silver = 71,
                    gold = 68,
                    currencyId = 2738,
                    questId = 78302
                },
                reverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2756,
                    questId = 78303
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
            times = {
                normal = {
                    silver = 120,
                    gold = 115,
                    currencyId = 2726,
                    questId = 78454
                },
                advanced = {
                    silver = 113,
                    gold = 110,
                    currencyId = 2744,
                    questId = 78455
                },
                reverse = {
                    silver = 118,
                    gold = 115,
                    currencyId = 2762,
                    questId = 78456
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
            times = {
                normal = {
                    silver = 115,
                    gold = 110,
                    currencyId = 2727,
                    questId = 78499
                },
                advanced = {
                    silver = 106,
                    gold = 103,
                    currencyId = 2745,
                    questId = 78500
                },
                reverse = {
                    silver = 107,
                    gold = 104,
                    currencyId = 2763,
                    questId = 78501
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
            times = {
                normal = {
                    silver = 93,
                    gold = 88,
                    currencyId = 2728,
                    questId = 78558
                },
                advanced = {
                    silver = 88,
                    gold = 85,
                    currencyId = 2746,
                    questId = 78559
                },
                reverse = {
                    silver = 88,
                    gold = 85,
                    currencyId = 2764,
                    questId = 78560
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
            times = {
                normal = {
                    silver = 50,
                    gold = 45,
                    currencyId = 2729,
                    questId = 78608
                },
                advanced = {
                    silver = 40,
                    gold = 37,
                    currencyId = 2747,
                    questId = 78609
                },
                reverse = {
                    silver = 40,
                    gold = 37,
                    currencyId = 2765,
                    questId = 78610
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
            times = {
                normal = {
                    silver = 62,
                    gold = 57,
                    currencyId = 2731,
                    questId = 79272
                },
                advanced = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2749,
                    questId = 79273
                },
                reverse = {
                    silver = 58,
                    gold = 55,
                    currencyId = 2767,
                    questId = 79274
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
    },
    ---@type Race[]
    [9995] = {  -- Outland Cup (Custom ID)
        [1] = { -- Hellfire Hustle
            id = 431798,
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2600,
                    questId = 77102
                },
                advanced = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2615,
                    questId = 77103
                },
                reverse = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2630,
                    questId = 77104
                }
            },
            normal = {
                bronze = 18580,
                silver = 18581,
                gold = 18582
            },
            advanced = {
                bronze = 18583,
                silver = 18584,
                gold = 18585
            },
            reverse = {
                bronze = 18586,
                silver = 18587,
                gold = 18588
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
                x = 76,
                y = 43
            },
            name = 'Hellfire Hustle',
            zone = 100
        },
        [2] = { -- Coilfang Caper
            id = 431799,
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2601,
                    questId = 77169
                },
                advanced = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2616,
                    questId = 77170
                },
                reverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2631,
                    questId = 77171
                }
            },
            normal = {
                bronze = 18603,
                silver = 18604,
                gold = 18605
            },
            advanced = {
                bronze = 18606,
                silver = 18607,
                gold = 18608
            },
            reverse = {
                bronze = 18609,
                silver = 18610,
                gold = 18611
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
                x = 37,
                y = 37
            },
            name = 'Coilfang Caper',
            zone = 102
        },
        [3] = { -- Blade's Edge Brawl
            id = 431800,
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2602,
                    questId = 77205
                },
                advanced = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2617,
                    questId = 77206
                },
                reverse = {
                    silver = 78,
                    gold = 75,
                    currencyId = 2632,
                    questId = 77207
                }
            },
            normal = {
                bronze = 18617,
                silver = 18618,
                gold = 18619
            },
            advanced = {
                bronze = 18620,
                silver = 18621,
                gold = 18622
            },
            reverse = {
                bronze = 18623,
                silver = 18624,
                gold = 18625
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
                x = 61,
                y = 28
            },
            name = "Blade's Edge Brawl",
            zone = 105
        },
        [4] = { -- Telaar Tear
            id = 431801,
            times = {
                normal = {
                    silver = 69,
                    gold = 64,
                    currencyId = 2603,
                    questId = 77238
                },
                advanced = {
                    silver = 60,
                    gold = 57,
                    currencyId = 2618,
                    questId = 77239
                },
                reverse = {
                    silver = 61,
                    gold = 58,
                    currencyId = 2633,
                    questId = 77240
                }
            },
            normal = {
                bronze = 18626,
                silver = 18627,
                gold = 18628
            },
            advanced = {
                bronze = 18629,
                silver = 18630,
                gold = 18631
            },
            reverse = {
                bronze = 18632,
                silver = 18633,
                gold = 18634
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
                x = 59,
                y = 76
            },
            name = "Telaar Tear",
            zone = 107
        },
        [5] = { -- Razorthorn Rise Rush
            id = 431802,
            times = {
                normal = {
                    silver = 72,
                    gold = 67,
                    currencyId = 2604,
                    questId = 77260
                },
                advanced = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2619,
                    questId = 77261
                },
                reverse = {
                    silver = 57,
                    gold = 54,
                    currencyId = 2634,
                    questId = 77262
                }
            },
            normal = {
                bronze = 18649,
                silver = 18650,
                gold = 18651
            },
            advanced = {
                bronze = 18652,
                silver = 18653,
                gold = 18654
            },
            reverse = {
                bronze = 18655,
                silver = 18656,
                gold = 18657
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
                x = 60,
                y = 5
            },
            name = "Razorthorn Rise Rush",
            zone = 108
        },
        [6] = { -- Auchindoun Coaster
            id = 431803,
            times = {
                normal = {
                    silver = 78,
                    gold = 73,
                    currencyId = 2605,
                    questId = 77264
                },
                advanced = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2620,
                    questId = 77265
                },
                reverse = {
                    silver = 73,
                    gold = 70,
                    currencyId = 2635,
                    questId = 77266
                }
            },
            normal = {
                bronze = 18658,
                silver = 18659,
                gold = 18660
            },
            advanced = {
                bronze = 18661,
                silver = 18662,
                gold = 18663
            },
            reverse = {
                bronze = 18664,
                silver = 18665,
                gold = 18666
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
                x = 42,
                y = 68
            },
            name = "Auchindoun Coaster",
            zone = 108
        },
        [7] = { -- Tempest Keep Sweep
            id = 431804,
            times = {
                normal = {
                    silver = 105,
                    gold = 100,
                    currencyId = 2606,
                    questId = 77278
                },
                advanced = {
                    silver = 90,
                    gold = 87,
                    currencyId = 2621,
                    questId = 77279
                },
                reverse = {
                    silver = 91,
                    gold = 88,
                    currencyId = 2636,
                    questId = 77280
                }
            },
            normal = {
                bronze = 18667,
                silver = 18668,
                gold = 18669
            },
            advanced = {
                bronze = 18670,
                silver = 18671,
                gold = 18672
            },
            reverse = {
                bronze = 18673,
                silver = 18674,
                gold = 18675
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
                x = 69,
                y = 48
            },
            name = "Tempest Keep Sweep",
            zone = 109
        },
        [8] = { -- Shattrath City Sashay
            id = 431805,
            times = {
                normal = {
                    silver = 80,
                    gold = 75,
                    currencyId = 2607,
                    questId = 77322
                },
                advanced = {
                    silver = 68,
                    gold = 65,
                    currencyId = 2622,
                    questId = 77323
                },
                reverse = {
                    silver = 69,
                    gold = 66,
                    currencyId = 2637,
                    questId = 77324
                }
            },
            normal = {
                bronze = 18679,
                silver = 18680,
                gold = 18681
            },
            advanced = {
                bronze = 18682,
                silver = 18683,
                gold = 18684
            },
            reverse = {
                bronze = 18685,
                silver = 18686,
                gold = 18687
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
                x = 72,
                y = 71
            },
            name = "Shattrath City Sashay",
            zone = 109
        },
        [9] = { -- Shadowmoon Slam
            id = 431806,
            times = {
                normal = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2608,
                    questId = 77346
                },
                advanced = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2623,
                    questId = 77347
                },
                reverse = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2638,
                    questId = 77348
                }
            },
            normal = {
                bronze = 18692,
                silver = 18693,
                gold = 18694
            },
            advanced = {
                bronze = 18695,
                silver = 18696,
                gold = 18697
            },
            reverse = {
                bronze = 18698,
                silver = 18699,
                gold = 18700
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
                x = 62,
                y = 49
            },
            name = "Shadowmoon Slam",
            zone = 104
        },
        [10] = { -- Eco-Dome Excursion
            id = 431806,
            times = {
                normal = {
                    silver = 120,
                    gold = 115,
                    currencyId = 2609,
                    questId = 77398
                },
                advanced = {
                    silver = 112,
                    gold = 109,
                    currencyId = 2624,
                    questId = 77399
                },
                reverse = {
                    silver = 113,
                    gold = 110,
                    currencyId = 2639,
                    questId = 77400
                }
            },
            normal = {
                bronze = 18707,
                silver = 18708,
                gold = 18709
            },
            advanced = {
                bronze = 18710,
                silver = 18711,
                gold = 18712
            },
            reverse = {
                bronze = 18713,
                silver = 18714,
                gold = 18715
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
                x = 51,
                y = 42
            },
            name = "Eco-Dome Excursion",
            zone = 109
        },
        [11] = { -- Warmaul Wingding
            id = 431808,
            times = {
                normal = {
                    silver = 85,
                    gold = 80,
                    currencyId = 2610,
                    questId = 77589
                },
                advanced = {
                    silver = 75,
                    gold = 72,
                    currencyId = 2625,
                    questId = 77590
                },
                reverse = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2640,
                    questId = 77591
                }
            },
            normal = {
                bronze = 18739,
                silver = 18740,
                gold = 18741
            },
            advanced = {
                bronze = 18742,
                silver = 18743,
                gold = 18744
            },
            reverse = {
                bronze = 18745,
                silver = 18746,
                gold = 18747
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
                x = 30,
                y = 25
            },
            name = "Warmaul Wingding",
            zone = 107
        },
        [12] = { -- Skettis Scramble
            id = 431809,
            times = {
                normal = {
                    silver = 75,
                    gold = 70,
                    currencyId = 2611,
                    questId = 77645
                },
                advanced = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2626,
                    questId = 77646
                },
                reverse = {
                    silver = 66,
                    gold = 63,
                    currencyId = 2641,
                    questId = 77647
                }
            },
            normal = {
                bronze = 18794,
                silver = 18795,
                gold = 18796
            },
            advanced = {
                bronze = 18797,
                silver = 18798,
                gold = 18799
            },
            reverse = {
                bronze = 18800,
                silver = 18801,
                gold = 18802
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
                x = 67,
                y = 66
            },
            name = "Skettis Scramble",
            zone = 108
        },
        [13] = { -- Fel Pit Fracas
            id = 431810,
            times = {
                normal = {
                    silver = 82,
                    gold = 77,
                    currencyId = 2612,
                    questId = 77684
                },
                advanced = {
                    silver = 76,
                    gold = 73,
                    currencyId = 2627,
                    questId = 77685
                },
                reverse = {
                    silver = 79,
                    gold = 76,
                    currencyId = 2642,
                    questId = 77686
                }
            },
            normal = {
                bronze = 18842,
                silver = 18843,
                gold = 18844
            },
            advanced = {
                bronze = 18845,
                silver = 18846,
                gold = 18847
            },
            reverse = {
                bronze = 18848,
                silver = 18849,
                gold = 18850
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
                x = 52,
                y = 40
            },
            name = "Fel Pit Fracas",
            zone = 104
        },
    }
}

maps.ColorCodes = {
    [3] = '|CFFA16B43',
    [2] = '|CFFA1A09D',
    [1] = '|CFFCA9A2D'
}

maps:Enable()
