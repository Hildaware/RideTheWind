local addonName = ...
local addon = LibStub('AceAddon-3.0'):GetAddon(addonName)

---@class Maps: AceModule
local maps = addon:NewModule('Maps')

maps.Races = {
    ---@type Race[]
    [2022] = { -- Waking Shores
        [1] = {
            id = 415640,
            times = {
                normal = {
                    silver = 55,
                    gold = 52
                },
                advanced = {
                    silver = 50,
                    gold = 45
                },
                reverse = {
                    silver = 53,
                    gold = 48
                },
                challenge = {
                    silver = 56,
                    gold = 53
                },
                challengeReverse = {
                    silver = 56,
                    gold = 53
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
        [2] = {
            id = 415639,
            times = {
                normal = {
                    silver = 53,
                    gold = 47
                },
                advanced = {
                    silver = 49,
                    gold = 44
                },
                reverse = {
                    silver = 50,
                    gold = 45
                },
                challenge = {
                    silver = 53,
                    gold = 50
                },
                challengeReverse = {
                    silver = 54,
                    gold = 51
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
        [3] = {
            id = 415643,
            times = {
                normal = {
                    silver = 66,
                    gold = 63
                },
                advanced = {
                    silver = 66,
                    gold = 61
                },
                reverse = {
                    silver = 65,
                    gold = 60
                },
                challenge = {
                    silver = 67,
                    gold = 64
                },
                challengeReverse = {
                    silver = 74,
                    gold = 69
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
        [4] = {
            id = 415541,
            times = {
                normal = {
                    silver = 56,
                    gold = 53
                },
                advanced = {
                    silver = 57,
                    gold = 52
                },
                reverse = {
                    silver = 55,
                    gold = 50
                },
                challenge = {
                    silver = 57,
                    gold = 54
                },
                challengeReverse = {
                    silver = 60,
                    gold = 57
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
        [5] = {
            id = 415641,
            times = {
                normal = {
                    silver = 48,
                    gold = 45
                },
                advanced = {
                    silver = 45,
                    gold = 40
                },
                reverse = {
                    silver = 48,
                    gold = 43
                },
                challenge = {
                    silver = 49,
                    gold = 46
                },
                challengeReverse = {
                    silver = 51,
                    gold = 48
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
        [6] = {
            id = 41564,
            times = {
                normal = {
                    silver = 43,
                    gold = 40
                },
                advanced = {
                    silver = 43,
                    gold = 38
                },
                reverse = {
                    silver = 46,
                    gold = 41
                },
                challenge = {
                    silver = 46,
                    gold = 43
                },
                challengeReverse = {
                    silver = 47,
                    gold = 44
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
        [7] = {
            id = 415638,
            times = {
                normal = {
                    silver = 45,
                    gold = 42
                },
                advanced = {
                    silver = 45,
                    gold = 40
                },
                reverse = {
                    silver = 46,
                    gold = 41
                },
                challenge = {
                    silver = 51,
                    gold = 48
                },
                challengeReverse = {
                    silver = 52,
                    gold = 49
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
        [8] = {
            id = 415624,
            times = {
                normal = {
                    silver = 56,
                    gold = 53
                },
                advanced = {
                    silver = 58,
                    gold = 53
                },
                reverse = {
                    silver = 61,
                    gold = 56
                },
                challenge = {
                    silver = 63,
                    gold = 60
                },
                challengeReverse = {
                    silver = 63,
                    gold = 60
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
    [2023] = { -- Om nom nom Plains
        [1] = {
            id = 415652,
            times = {
                normal = {
                    silver = 51,
                    gold = 48
                },
                advanced = {
                    silver = 46,
                    gold = 41
                },
                reverse = {
                    silver = 52,
                    gold = 47
                },
                challenge = {
                    silver = 53,
                    gold = 50
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50
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
        [2] = {
            id = 415650,
            times = {
                normal = {
                    silver = 52,
                    gold = 44
                },
                advanced = {
                    silver = 46,
                    gold = 41
                },
                reverse = {
                    silver = 50,
                    gold = 45
                },
                challenge = {
                    silver = 54,
                    gold = 51
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50
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
        [3] = {
            id = 415656,
            times = {
                normal = {
                    silver = 28,
                    gold = 25
                },
                challenge = {
                    silver = 27,
                    gold = 24
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
        [4] = {
            id = 415653,
            times = {
                normal = {
                    silver = 52,
                    gold = 49
                },
                advanced = {
                    silver = 52,
                    gold = 47
                },
                reverse = {
                    silver = 51,
                    gold = 46
                },
                challenge = {
                    silver = 53,
                    gold = 50
                },
                challengeReverse = {
                    silver = 54,
                    gold = 51
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
        [5] = {
            id = 415657,
            times = {
                normal = {
                    silver = 29,
                    gold = 26
                },
                challenge = {
                    silver = 30,
                    gold = 27
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
        [6] = {
            id = 415658,
            times = {
                normal = {
                    silver = 51,
                    gold = 48
                },
                advanced = {
                    silver = 48,
                    gold = 43
                },
                reverse = {
                    silver = 49,
                    gold = 44
                },
                challenge = {
                    silver = 55,
                    gold = 52
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52
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
        [7] = {
            id = 415654,
            times = {
                normal = {
                    silver = 66,
                    gold = 63
                },
                advanced = {
                    silver = 60,
                    gold = 55
                },
                reverse = {
                    silver = 62,
                    gold = 57
                },
                challenge = {
                    silver = 69,
                    gold = 66
                },
                challengeReverse = {
                    silver = 69,
                    gold = 66
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
    [2024] = { -- Azure Span
        [1] = {
            id = 415662,
            times = {
                normal = {
                    silver = 78,
                    gold = 75
                },
                advanced = {
                    silver = 75,
                    gold = 70
                },
                reverse = {
                    silver = 72,
                    gold = 67
                },
                challenge = {
                    silver = 81,
                    gold = 78
                },
                challengeReverse = {
                    silver = 82,
                    gold = 79
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
        [2] = {
            id = 415660,
            times = {
                normal = {
                    silver = 61,
                    gold = 58
                },
                advanced = {
                    silver = 61,
                    gold = 56
                },
                reverse = {
                    silver = 58,
                    gold = 53
                },
                challenge = {
                    silver = 58,
                    gold = 55
                },
                challengeReverse = {
                    silver = 58,
                    gold = 55
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
        [3] = {
            id = 415663,
            times = {
                normal = {
                    silver = 79,
                    gold = 76
                },
                advanced = {
                    silver = 77,
                    gold = 72
                },
                reverse = {
                    silver = 74,
                    gold = 69
                },
                challenge = {
                    silver = 88,
                    gold = 85
                },
                challengeReverse = {
                    silver = 86,
                    gold = 83
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
        [4] = {
            id = 415659,
            times = {
                normal = {
                    silver = 66,
                    gold = 63
                },
                advanced = {
                    silver = 63,
                    gold = 58
                },
                reverse = {
                    silver = 65,
                    gold = 60
                },
                challenge = {
                    silver = 70,
                    gold = 67
                },
                challengeReverse = {
                    silver = 72,
                    gold = 69
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
        [5] = {
            id = 415664,
            times = {
                normal = {
                    silver = 94,
                    gold = 91
                },
                advanced = {
                    silver = 86,
                    gold = 81
                },
                reverse = {
                    silver = 81,
                    gold = 76
                },
                challenge = {
                    silver = 93,
                    gold = 90
                },
                challengeReverse = {
                    silver = 95,
                    gold = 92
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
        [6] = {
            id = 415661,
            times = {
                normal = {
                    silver = 61,
                    gold = 58
                },
                advanced = {
                    silver = 61,
                    gold = 56
                },
                reverse = {
                    silver = 61,
                    gold = 56
                },
                challenge = {
                    silver = 66,
                    gold = 63
                },
                challengeReverse = {
                    silver = 67,
                    gold = 64
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
    [2025] = { -- Thaldraszus
        [1] = {
            id = 415665,
            times = {
                normal = {
                    silver = 52,
                    gold = 49
                },
                advanced = {
                    silver = 45,
                    gold = 40
                },
                reverse = {
                    silver = 46,
                    gold = 41
                },
                challenge = {
                    silver = 50,
                    gold = 47
                },
                challengeReverse = {
                    silver = 49,
                    gold = 46
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
        [2] = {
            id = 415668,
            times = {
                normal = {
                    silver = 72,
                    gold = 69
                },
                advanced = {
                    silver = 71,
                    gold = 66
                },
                reverse = {
                    silver = 74,
                    gold = 69
                },
                challenge = {
                    silver = 84,
                    gold = 81
                },
                challengeReverse = {
                    silver = 83,
                    gold = 80
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
        [3] = {
            id = 415670,
            times = {
                normal = {
                    silver = 64,
                    gold = 61
                },
                advanced = {
                    silver = 59,
                    gold = 54
                },
                reverse = {
                    silver = 62,
                    gold = 57
                },
                challenge = {
                    silver = 63,
                    gold = 60
                },
                challengeReverse = {
                    silver = 67,
                    gold = 64
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
        [4] = {
            id = 415666,
            times = {
                normal = {
                    silver = 84,
                    gold = 81
                },
                advanced = {
                    silver = 80,
                    gold = 75
                },
                reverse = {
                    silver = 64,
                    gold = 59
                },
                challenge = {
                    silver = 61,
                    gold = 58
                },
                challengeReverse = {
                    silver = 66,
                    gold = 63
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
        [5] = {
            id = 415669,
            times = {
                normal = {
                    silver = 57,
                    gold = 54
                },
                advanced = {
                    silver = 57,
                    gold = 52
                },
                reverse = {
                    silver = 58,
                    gold = 53
                },
                challenge = {
                    silver = 68,
                    gold = 65
                },
                challengeReverse = {
                    silver = 68,
                    gold = 65
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
        [6] = {
            id = 415671,
            times = {
                normal = {
                    silver = 53,
                    gold = 50
                },
                advanced = {
                    silver = 50,
                    gold = 45
                },
                reverse = {
                    silver = 52,
                    gold = 47
                },
                challenge = {
                    silver = 59,
                    gold = 56
                },
                challengeReverse = {
                    silver = 57,
                    gold = 54
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
    [2133] = { -- Zaralek Cavern
        [1] = {
            id = 415795,
            times = {
                normal = {
                    silver = 68,
                    gold = 63
                },
                advanced = {
                    silver = 60,
                    gold = 63
                },
                reverse = {
                    silver = 58,
                    gold = 53
                },
                challenge = {
                    silver = 60,
                    gold = 57
                },
                challengeReverse = {
                    silver = 61,
                    gold = 58
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
        [2] = {
            id = 415797,
            times = {
                normal = {
                    silver = 72,
                    gold = 69
                },
                advanced = {
                    silver = 69,
                    gold = 64
                },
                reverse = {
                    silver = 69,
                    gold = 64
                },
                challenge = {
                    silver = 72,
                    gold = 69
                },
                challengeReverse = {
                    silver = 74,
                    gold = 71
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
        [3] = {
            id = 415799,
            times = {
                normal = {
                    silver = 60,
                    gold = 55
                },
                advanced = {
                    silver = 55,
                    gold = 50
                },
                reverse = {
                    silver = 53,
                    gold = 48
                },
                challenge = {
                    silver = 56,
                    gold = 53
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52
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
        [4] = {
            id = 415796,
            times = {
                normal = {
                    silver = 80,
                    gold = 75
                },
                advanced = {
                    silver = 73,
                    gold = 68
                },
                reverse = {
                    silver = 73,
                    gold = 68
                },
                challenge = {
                    silver = 75,
                    gold = 72
                },
                challengeReverse = {
                    silver = 75,
                    gold = 72
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
        [5] = {
            id = 415798,
            times = {
                normal = {
                    silver = 80,
                    gold = 75
                },
                advanced = {
                    silver = 75,
                    gold = 70
                },
                reverse = {
                    silver = 75,
                    gold = 70
                },
                challenge = {
                    silver = 82,
                    gold = 79
                },
                challengeReverse = {
                    silver = 78,
                    gold = 75
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
        [6] = {
            id = 415800,
            times = {
                normal = {
                    silver = 67,
                    gold = 64
                },
                advanced = {
                    silver = 63,
                    gold = 58
                },
                reverse = {
                    silver = 62,
                    gold = 57
                },
                challenge = {
                    silver = 70,
                    gold = 67
                },
                challengeReverse = {
                    silver = 68,
                    gold = 65
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
    [2151] = { -- The Forbidden Reach
        [1] = {
            id = 415789,
            times = {
                normal = {
                    silver = 45,
                    gold = 43
                },
                advanced = {
                    silver = 47,
                    gold = 42
                },
                reverse = {
                    silver = 47,
                    gold = 42
                },
                challenge = {
                    silver = 48,
                    gold = 45
                },
                challengeReverse = {
                    silver = 47,
                    gold = 44
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
        [2] = {
            id = 415791,
            times = {
                normal = {
                    silver = 56,
                    gold = 53
                },
                advanced = {
                    silver = 55,
                    gold = 50
                },
                reverse = {
                    silver = 55,
                    gold = 50
                },
                challenge = {
                    silver = 56,
                    gold = 53
                },
                challengeReverse = {
                    silver = 55,
                    gold = 52
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
        [3] = {
            id = 415793,
            times = {
                normal = {
                    silver = 61,
                    gold = 58
                },
                advanced = {
                    silver = 57,
                    gold = 52
                },
                reverse = {
                    silver = 54,
                    gold = 49
                },
                challenge = {
                    silver = 58,
                    gold = 55
                },
                challengeReverse = {
                    silver = 56,
                    gold = 53
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
        [4] = {
            id = 415790,
            times = {
                normal = {
                    silver = 55,
                    gold = 52
                },
                advanced = {
                    silver = 54,
                    gold = 49
                },
                reverse = {
                    silver = 57,
                    gold = 52
                },
                challenge = {
                    silver = 53,
                    gold = 50
                },
                challengeReverse = {
                    silver = 53,
                    gold = 50
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
        [5] = {
            id = 415792,
            times = {
                normal = {
                    silver = 73,
                    gold = 70
                },
                advanced = {
                    silver = 73,
                    gold = 68
                },
                reverse = {
                    silver = 68,
                    gold = 63
                },
                challenge = {
                    silver = 73,
                    gold = 70
                },
                challengeReverse = {
                    silver = 71,
                    gold = 68
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
        [6] = {
            id = 415794,
            times = {
                normal = {
                    silver = 62,
                    gold = 59
                },
                advanced = {
                    silver = 61,
                    gold = 56
                },
                reverse = {
                    silver = 61,
                    gold = 57
                },
                challenge = {
                    silver = 63,
                    gold = 60
                },
                challengeReverse = {
                    silver = 63,
                    gold = 60
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
    [2200] = { -- Emerald Dream
        [1] = {
            id = 426030,
            times = {
                normal = {
                    silver = 110,
                    gold = 105
                },
                advanced = {
                    silver = 96,
                    gold = 93
                },
                reverse = {
                    silver = 99,
                    gold = 96
                },
                challenge = {
                    silver = 108,
                    gold = 105
                },
                challengeReverse = {
                    silver = 108,
                    gold = 105
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
        [2] = {
            id = 426031,
            times = {
                normal = {
                    silver = 89,
                    gold = 84
                },
                advanced = {
                    silver = 73,
                    gold = 70
                },
                reverse = {
                    silver = 73,
                    gold = 70
                },
                challenge = {
                    silver = 76,
                    gold = 73
                },
                challengeReverse = {
                    silver = 76,
                    gold = 73
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
        [3] = {
            id = 426029,
            times = {
                normal = {
                    silver = 78,
                    gold = 73
                },
                advanced = {
                    silver = 66,
                    gold = 63
                },
                reverse = {
                    silver = 65,
                    gold = 62
                },
                challenge = {
                    silver = 73,
                    gold = 70
                },
                challengeReverse = {
                    silver = 73,
                    gold = 70
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
        [4] = {
            id = 426027,
            times = {
                normal = {
                    silver = 85,
                    gold = 80
                },
                advanced = {
                    silver = 76,
                    gold = 73
                },
                reverse = {
                    silver = 82,
                    gold = 73
                },
                challenge = {
                    silver = 82,
                    gold = 79
                },
                challengeReverse = {
                    silver = 83,
                    gold = 80
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
        [5] = {
            id = 426028,
            times = {
                normal = {
                    silver = 83,
                    gold = 78
                },
                advanced = {
                    silver = 67,
                    gold = 64
                },
                reverse = {
                    silver = 67,
                    gold = 64
                },
                challenge = {
                    silver = 76,
                    gold = 73
                },
                challengeReverse = {
                    silver = 76,
                    gold = 73
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
        [6] = {
            id = 426026,
            times = {
                normal = {
                    silver = 103,
                    gold = 98
                },
                advanced = {
                    silver = 90,
                    gold = 87
                },
                reverse = {
                    silver = 90,
                    gold = 87
                },
                challenge = {
                    silver = 98,
                    gold = 95
                },
                challengeReverse = {
                    silver = 100,
                    gold = 97
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
    }
}

maps.ColorCodes = {
    [3] = '|CFFA16B43',
    [2] = '|CFFA1A09D',
    [1] = '|CFFCA9A2D'
}

maps:Enable()
