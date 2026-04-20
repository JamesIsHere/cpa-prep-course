-- Phase 1E: Pin BAR questions to classifier-suggested pin_ref
-- Based on docs/classify-bar.json (2026-04-20T01:16:54.092Z)
-- Total: 1511 questions | Matched: 904 (59.8%) | Homeless: 607
-- Unique pin_refs: 68
-- Homeless questions remain at pin_ref = NULL (schema default)

BEGIN;

-- BAR/I/A/1/1 (4 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/1/1', pinned_at = now() WHERE id IN (612,2929,2931,7845);

-- BAR/I/A/1/2 (10 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/1/2', pinned_at = now() WHERE id IN (2937,2945,2955,2967,7833,7852,7856,7975,14860,14954);

-- BAR/I/A/1/3 (91 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/1/3', pinned_at = now() WHERE id IN (611,613,614,615,2928,2932,2933,2934,2935,2936,2938,2939,2941,2944,2947,2949,2952,2954,2956,2957,2958,2959,2962,2964,2965,7837,7842,7844,7846,7849,7850,7851,7858,7859,7964,7966,7967,7968,14849,14850,14852,14853,14855,14858,14859,14863,14866,14917,14918,14920,14921,14922,14923,14924,14925,14926,14927,14928,14929,14930,14931,14933,14933,14934,14935,14936,14939,14941,14942,14943,14945,14946,14947,14949,14952,14953,14955,14956,14958,14960,14962,14963,14965,14967,14969,14970,14971,14972,14973,14974,14975);

-- BAR/I/A/1/4 (10 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/1/4', pinned_at = now() WHERE id IN (2950,7835,7839,7840,7848,7854,7956,7978,7979,14856);

-- BAR/I/A/1/5 (11 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/1/5', pinned_at = now() WHERE id IN (2946,2951,2961,7843,7857,14916,14919,14937,14940,14964,14968);

-- BAR/I/A/2/1 (3 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/2/1', pinned_at = now() WHERE id IN (7853,14861,14865);

-- BAR/I/A/2/2 (1 question)
UPDATE questions SET pin_ref = 'BAR/I/A/2/2', pinned_at = now() WHERE id IN (2942);

-- BAR/I/A/2/4 (2 questions)
UPDATE questions SET pin_ref = 'BAR/I/A/2/4', pinned_at = now() WHERE id IN (14864,14957);

-- BAR/I/A/3/1 (1 question)
UPDATE questions SET pin_ref = 'BAR/I/A/3/1', pinned_at = now() WHERE id IN (7970);

-- BAR/I/B/1/1 (2 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/1/1', pinned_at = now() WHERE id IN (13000,13230);

-- BAR/I/B/1/2 (3 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/1/2', pinned_at = now() WHERE id IN (14794,15844,15862);

-- BAR/I/B/1/3 (54 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/1/3', pinned_at = now() WHERE id IN (617,623,624,625,2969,2974,2975,2977,2980,2984,2989,2990,2992,2994,2998,3061,3352,12867,12973,12976,12979,12981,12986,12987,12988,12990,12991,12997,12998,12999,13001,14106,14108,14112,14114,14116,14118,14122,14124,14126,14260,14786,14790,14796,14798,14800,14807,15843,15849,15851,15853,15858,15863,15865);

-- BAR/I/B/1/4 (36 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/1/4', pinned_at = now() WHERE id IN (619,620,621,2970,2971,2972,2973,2976,2978,2979,2981,2985,2986,2988,2991,2993,2995,2996,2997,3351,3353,5595,5734,14055,14058,14066,14121,14130,14779,14787,14791,14793,14799,15850,15857,15859);

-- BAR/I/B/1/5 (14 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/1/5', pinned_at = now() WHERE id IN (3035,5219,5227,12994,13002,14115,14123,15847,15848,15854,15855,15856,15860,15864);

-- BAR/I/B/2/1 (38 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/2/1', pinned_at = now() WHERE id IN (3058,5221,5226,5578,5579,5580,5583,5584,5596,5606,5607,5610,5614,5615,5620,5632,5657,5669,5673,5675,5691,5733,5745,12724,12747,13224,13225,13232,13243,14062,14243,14244,14245,14272,15599,15600,15601,15604);

-- BAR/I/B/2/2 (27 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/2/2', pinned_at = now() WHERE id IN (2982,2983,5225,5232,5233,5594,5598,5604,5627,5639,5644,5667,5674,5685,5689,5704,5719,5729,5738,5744,5747,12726,13221,13238,14774,15593,15596);

-- BAR/I/B/2/3 (16 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/2/3', pinned_at = now() WHERE id IN (5625,5642,5654,5683,5694,5701,5730,12740,12741,12744,14104,14107,14792,14813,15594,15595);

-- BAR/I/B/2/4 (20 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/2/4', pinned_at = now() WHERE id IN (643,5186,5220,5588,5601,5603,5605,5609,5618,5626,5629,5640,5650,5671,5686,5755,12737,12739,12743,15597);

-- BAR/I/B/3/1 (17 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/3/1', pinned_at = now() WHERE id IN (3033,3036,3041,5218,5630,5649,5690,5697,5737,5752,5754,12731,12732,12738,13228,13240,13244);

-- BAR/I/B/3/2 (17 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/3/2', pinned_at = now() WHERE id IN (641,3046,3049,3051,3057,3059,3063,3068,5229,12728,12730,12746,12750,13220,13245,14045,14268);

-- BAR/I/B/3/3 (27 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/3/3', pinned_at = now() WHERE id IN (653,655,5216,5653,5684,5706,5709,12733,12734,12735,12736,12749,12751,13222,13229,13235,13248,14049,14054,14056,14067,14753,14757,14781,15605,15606,15618);

-- BAR/I/B/4/1 (1 question)
UPDATE questions SET pin_ref = 'BAR/I/B/4/1', pinned_at = now() WHERE id IN (3081);

-- BAR/I/B/4/3 (2 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/4/3', pinned_at = now() WHERE id IN (3095,12729);

-- BAR/I/B/4/4 (26 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/4/4', pinned_at = now() WHERE id IN (659,660,3070,3075,3078,3080,3083,3085,3090,3091,3098,12752,14041,14057,14064,14761,14766,14819,14821,15607,15608,15611,15612,15614,15615,15620);

-- BAR/I/B/4/5 (2 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/4/5', pinned_at = now() WHERE id IN (5582,14827);

-- BAR/I/B/4/6 (4 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/4/6', pinned_at = now() WHERE id IN (5635,5658,12742,15598);

-- BAR/I/B/5/1 (3 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/5/1', pinned_at = now() WHERE id IN (14063,14756,14763);

-- BAR/I/B/5/2 (2 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/5/2', pinned_at = now() WHERE id IN (3087,14780);

-- BAR/I/B/5/3 (15 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/5/3', pinned_at = now() WHERE id IN (654,3093,3094,3418,5612,5682,14060,14065,14109,14776,14803,14808,14814,14822,15613);

-- BAR/I/B/5/4 (3 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/5/4', pinned_at = now() WHERE id IN (14769,15616,15617);

-- BAR/I/B/5/5 (3 questions)
UPDATE questions SET pin_ref = 'BAR/I/B/5/5', pinned_at = now() WHERE id IN (14059,14758,14767);

-- BAR/I/B/5/6 (1 question)
UPDATE questions SET pin_ref = 'BAR/I/B/5/6', pinned_at = now() WHERE id IN (12745);

-- BAR/II/A/0/1 (2 questions)
UPDATE questions SET pin_ref = 'BAR/II/A/0/1', pinned_at = now() WHERE id IN (4882,4883);

-- BAR/II/A/0/2 (21 questions)
UPDATE questions SET pin_ref = 'BAR/II/A/0/2', pinned_at = now() WHERE id IN (4866,4869,4870,4871,4874,4876,4877,4878,4879,4880,4881,4884,4885,14724,14726,14727,14732,14738,14744,14747,14750);

-- BAR/II/B/0/1 (29 questions)
UPDATE questions SET pin_ref = 'BAR/II/B/0/1', pinned_at = now() WHERE id IN (1066,1068,1070,1071,1074,1075,3246,3247,3248,3249,3252,3255,3256,3257,3258,3259,3261,3262,3263,3264,3265,3266,3267,3383,3384,3385,3386,3387,3425);

-- BAR/II/B/0/2 (4 questions)
UPDATE questions SET pin_ref = 'BAR/II/B/0/2', pinned_at = now() WHERE id IN (1069,1072,1073,3382);

-- BAR/II/C/0/1 (34 questions)
UPDATE questions SET pin_ref = 'BAR/II/C/0/1', pinned_at = now() WHERE id IN (661,662,663,665,666,667,673,674,675,3100,3101,3102,3103,3104,3105,3106,3107,3108,3111,3112,3113,3115,3116,3119,3120,3121,3123,3124,3125,3127,3130,3358,3359,3420);

-- BAR/II/F/0/1 (39 questions)
UPDATE questions SET pin_ref = 'BAR/II/F/0/1', pinned_at = now() WHERE id IN (680,681,682,684,685,687,690,3136,3138,3139,3142,3143,3145,3147,3149,3155,3157,3362,3364,3367,4826,4828,4830,4836,4839,4840,4844,14401,14404,14405,14408,14410,14412,14413,14414,14415,14418,14419,14422);

-- BAR/II/F/0/2 (12 questions)
UPDATE questions SET pin_ref = 'BAR/II/F/0/2', pinned_at = now() WHERE id IN (683,3137,3154,3159,4827,4833,4834,4842,14416,14420,14424,14426);

-- BAR/II/F/0/3 (3 questions)
UPDATE questions SET pin_ref = 'BAR/II/F/0/3', pinned_at = now() WHERE id IN (4829,4837,14417);

-- BAR/II/G/0/1 (29 questions)
UPDATE questions SET pin_ref = 'BAR/II/G/0/1', pinned_at = now() WHERE id IN (691,692,693,694,695,696,697,698,700,703,704,3160,3161,3164,3165,3167,3170,3171,3174,3177,3179,3180,3181,3182,3183,3184,3185,3370,3372);

-- BAR/II/G/0/2 (3 questions)
UPDATE questions SET pin_ref = 'BAR/II/G/0/2', pinned_at = now() WHERE id IN (4853,4864,14434);

-- BAR/II/G/0/3 (13 questions)
UPDATE questions SET pin_ref = 'BAR/II/G/0/3', pinned_at = now() WHERE id IN (4849,4851,4852,4859,4860,4862,4863,14431,14435,14443,14447,14449,14454);

-- BAR/II/G/0/4 (5 questions)
UPDATE questions SET pin_ref = 'BAR/II/G/0/4', pinned_at = now() WHERE id IN (3373,4850,4856,14433,14442);

-- BAR/II/H/0/1 (24 questions)
UPDATE questions SET pin_ref = 'BAR/II/H/0/1', pinned_at = now() WHERE id IN (709,712,713,716,717,720,3189,3190,3191,3192,3199,3200,3203,3205,3206,3209,3210,3211,3212,3213,3216,3217,3374,3423);

-- BAR/II/H/0/2 (9 questions)
UPDATE questions SET pin_ref = 'BAR/II/H/0/2', pinned_at = now() WHERE id IN (718,3193,3194,3197,3198,3201,3202,3207,3375);

-- BAR/II/H/0/3 (15 questions)
UPDATE questions SET pin_ref = 'BAR/II/H/0/3', pinned_at = now() WHERE id IN (706,707,708,711,714,715,719,3188,3195,3196,3204,3208,3214,3215,3377);

-- BAR/II/H/0/4 (1 question)
UPDATE questions SET pin_ref = 'BAR/II/H/0/4', pinned_at = now() WHERE id IN (3376);

-- BAR/II/I/0/1 (3 questions)
UPDATE questions SET pin_ref = 'BAR/II/I/0/1', pinned_at = now() WHERE id IN (1082,3274,14890);

-- BAR/II/I/0/2 (1 question)
UPDATE questions SET pin_ref = 'BAR/II/I/0/2', pinned_at = now() WHERE id IN (14885);

-- BAR/II/I/0/4 (12 questions)
UPDATE questions SET pin_ref = 'BAR/II/I/0/4', pinned_at = now() WHERE id IN (1077,1079,1083,1084,3268,3269,3277,3286,3391,14884,14886,14893);

-- BAR/II/I/0/5 (34 questions)
UPDATE questions SET pin_ref = 'BAR/II/I/0/5', pinned_at = now() WHERE id IN (1076,1078,1080,1081,1085,3270,3271,3272,3273,3275,3276,3278,3279,3280,3281,3282,3283,3284,3285,3287,3288,3389,3392,3393,3394,3426,14887,14889,14891,14892,14894,14895,14897,14899);

-- BAR/II/K/0/1 (3 questions)
UPDATE questions SET pin_ref = 'BAR/II/K/0/1', pinned_at = now() WHERE id IN (15029,15064,15072);

-- BAR/II/K/0/3 (1 question)
UPDATE questions SET pin_ref = 'BAR/II/K/0/3', pinned_at = now() WHERE id IN (15098);

-- BAR/III/A/1/1 (21 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/1/1', pinned_at = now() WHERE id IN (721,723,724,727,728,731,736,738,742,744,745,3218,3220,3221,3228,3234,3240,3241,3245,3379,14839);

-- BAR/III/A/1/2 (2 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/1/2', pinned_at = now() WHERE id IN (3233,14845);

-- BAR/III/A/1/3 (3 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/1/3', pinned_at = now() WHERE id IN (3242,14840,14843);

-- BAR/III/A/2/1 (15 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/2/1', pinned_at = now() WHERE id IN (722,725,730,732,733,740,3223,3226,3227,3229,3232,3237,3238,14833,14841);

-- BAR/III/A/2/2 (2 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/2/2', pinned_at = now() WHERE id IN (729,3424);

-- BAR/III/A/2/3 (4 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/2/3', pinned_at = now() WHERE id IN (3225,3380,14836,14844);

-- BAR/III/A/3/1 (4 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/3/1', pinned_at = now() WHERE id IN (726,741,3224,3231);

-- BAR/III/A/4/1 (6 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/4/1', pinned_at = now() WHERE id IN (735,3222,3243,14834,14837,14848);

-- BAR/III/A/5/1 (2 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/5/1', pinned_at = now() WHERE id IN (734,739);

-- BAR/III/A/6/1 (1 question)
UPDATE questions SET pin_ref = 'BAR/III/A/6/1', pinned_at = now() WHERE id IN (3378);

-- BAR/III/A/7/1 (1 question)
UPDATE questions SET pin_ref = 'BAR/III/A/7/1', pinned_at = now() WHERE id IN (737);

-- BAR/III/A/9/1 (2 questions)
UPDATE questions SET pin_ref = 'BAR/III/A/9/1', pinned_at = now() WHERE id IN (3235,3244);

-- BAR/III/B/0/1 (28 questions)
UPDATE questions SET pin_ref = 'BAR/III/B/0/1', pinned_at = now() WHERE id IN (1197,1199,1203,1205,3331,3334,3336,3337,3339,3341,3345,3347,3403,3405,3406,3407,3408,3410,3411,3413,14279,14284,14286,14289,14299,14300,14362,14363);

-- BAR/III/B/0/2 (50 questions)
UPDATE questions SET pin_ref = 'BAR/III/B/0/2', pinned_at = now() WHERE id IN (1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,3311,3313,3314,3316,3317,3318,3320,3321,3322,3323,3324,3325,3402,3404,3409,3412,3428,14338,14339,14340,14342,14343,14344,14345,14347,14348,14349,14350,14351,14352,14353,14354,14355,14356,14357,14358,14359,14360,14361,14364);

-- Sanity check: matched rows should equal 904
-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = 'bar');

COMMIT;
