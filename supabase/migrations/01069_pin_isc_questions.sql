-- Phase 1E: Pin ISC questions to classifier-suggested pin_ref
-- Based on docs/classify-isc.json (2026-04-19T22:31:04.288Z)
-- Total: 1457 questions | Matched: 884 (60.7%) | Homeless: 573
-- Unique pin_refs: 68
-- Homeless questions remain at pin_ref = NULL (schema default)

BEGIN;

-- ISC/I/A/1/1 (52 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/1/1', pinned_at = now() WHERE id IN (746,748,750,752,753,755,758,759,3429,3430,3431,3433,3436,3438,3439,3440,3441,3442,3446,3447,3453,3454,3456,3459,3464,3540,3541,3548,3572,13589,13590,13591,13593,13594,13597,13600,13601,13602,13603,13604,13605,13606,13607,13608,13610,13611,13613,13614,13615,13616,13617,13647);

-- ISC/I/A/1/2 (11 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/1/2', pinned_at = now() WHERE id IN (747,749,3434,3435,3449,3452,3458,3461,3465,3565,13609);

-- ISC/I/A/1/3 (6 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/1/3', pinned_at = now() WHERE id IN (3448,3450,3455,3462,13558,13599);

-- ISC/I/A/2/1 (36 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/2/1', pinned_at = now() WHERE id IN (760,761,762,763,764,765,768,770,3467,3469,3470,3471,3472,3476,3481,3487,3494,3495,3496,3497,3499,3500,13463,13464,13468,13474,13476,13477,13478,13481,13483,13486,13489,13490,13491,13492);

-- ISC/I/A/2/4 (3 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/2/4', pinned_at = now() WHERE id IN (3468,3477,3478);

-- ISC/I/A/2/5 (9 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/2/5', pinned_at = now() WHERE id IN (3479,3492,3498,13113,13465,13466,13469,13475,13484);

-- ISC/I/A/3/1 (23 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/3/1', pinned_at = now() WHERE id IN (788,793,796,3466,3535,3537,3539,3547,3553,3556,3559,3561,3569,3569,3570,3827,13107,13117,13596,13628,13861,15689,15691);

-- ISC/I/A/3/2 (8 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/3/2', pinned_at = now() WHERE id IN (797,3538,3563,3573,13595,13621,13640,15692);

-- ISC/I/A/3/3 (3 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/3/3', pinned_at = now() WHERE id IN (3536,3560,13623);

-- ISC/I/A/3/4 (3 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/3/4', pinned_at = now() WHERE id IN (799,3554,13612);

-- ISC/I/A/3/5 (9 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/3/5', pinned_at = now() WHERE id IN (757,789,1055,3567,3815,13108,13479,15686,15687);

-- ISC/I/A/3/6 (5 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/3/6', pinned_at = now() WHERE id IN (3451,3460,13467,13626,13637);

-- ISC/I/A/4/1 (43 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/1', pinned_at = now() WHERE id IN (790,791,792,1047,1050,1051,1292,1293,3542,3543,3544,3545,3549,3550,3551,3557,3562,3564,3571,3828,4921,4922,4924,12607,12614,12618,12621,12623,12625,12629,13122,13532,13535,13539,13540,13544,13546,13549,13550,13624,13627,15683,15685);

-- ISC/I/A/4/2 (19 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/2', pinned_at = now() WHERE id IN (798,1295,3555,3568,3813,3912,4906,4925,12600,12606,12612,13112,13529,13545,13619,13631,13638,15681,15682);

-- ISC/I/A/4/3 (15 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/3', pinned_at = now() WHERE id IN (751,794,801,3574,3819,3820,3825,12608,12609,13110,13120,13551,13555,13620,13629);

-- ISC/I/A/4/4 (6 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/4', pinned_at = now() WHERE id IN (756,800,3491,4923,13543,13636);

-- ISC/I/A/4/5 (10 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/5', pinned_at = now() WHERE id IN (3484,3558,12605,12624,12627,13118,13557,13622,13643,15690);

-- ISC/I/A/4/6 (31 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/6', pinned_at = now() WHERE id IN (795,1294,3493,3552,3566,3811,3812,3822,3911,4907,4909,12610,12611,12613,12615,12616,12617,12619,12620,12628,13530,13533,13537,13541,13547,13552,13630,13633,13860,15684,15693);

-- ISC/I/A/4/7 (4 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/7', pinned_at = now() WHERE id IN (3488,12604,13642,13862);

-- ISC/I/A/4/8 (4 questions)
UPDATE questions SET pin_ref = 'ISC/I/A/4/8', pinned_at = now() WHERE id IN (13536,13625,13634,13646);

-- ISC/I/B/0/1 (13 questions)
UPDATE questions SET pin_ref = 'ISC/I/B/0/1', pinned_at = now() WHERE id IN (3501,3504,3509,3510,3512,3523,3533,13438,13446,13456,15742,15745,15751);

-- ISC/I/B/0/2 (26 questions)
UPDATE questions SET pin_ref = 'ISC/I/B/0/2', pinned_at = now() WHERE id IN (776,779,787,3505,3506,3518,3519,3529,13433,13437,13439,13440,13441,13442,13449,13451,13455,13457,13458,13460,13461,15744,15746,15747,15749,15750);

-- ISC/I/B/0/3 (6 questions)
UPDATE questions SET pin_ref = 'ISC/I/B/0/3', pinned_at = now() WHERE id IN (777,3502,3503,3530,13432,15743);

-- ISC/I/B/0/4 (1 question)
UPDATE questions SET pin_ref = 'ISC/I/B/0/4', pinned_at = now() WHERE id IN (3516);

-- ISC/I/B/0/5 (3 questions)
UPDATE questions SET pin_ref = 'ISC/I/B/0/5', pinned_at = now() WHERE id IN (783,3531,13459);

-- ISC/II/A/0/1 (1 question)
UPDATE questions SET pin_ref = 'ISC/II/A/0/1', pinned_at = now() WHERE id IN (3606);

-- ISC/II/A/0/4 (8 questions)
UPDATE questions SET pin_ref = 'ISC/II/A/0/4', pinned_at = now() WHERE id IN (802,803,13280,13284,13295,13308,13818,13950);

-- ISC/II/A/0/6 (3 questions)
UPDATE questions SET pin_ref = 'ISC/II/A/0/6', pinned_at = now() WHERE id IN (3593,3605,12937);

-- ISC/II/A/0/7 (2 questions)
UPDATE questions SET pin_ref = 'ISC/II/A/0/7', pinned_at = now() WHERE id IN (3584,3585);

-- ISC/II/A/0/8 (31 questions)
UPDATE questions SET pin_ref = 'ISC/II/A/0/8', pinned_at = now() WHERE id IN (804,809,810,813,1056,3582,3583,3604,3608,3610,3832,3833,3834,3835,3846,3854,3857,12939,12942,12943,12947,12948,12955,12958,12961,13806,13811,13813,13941,13945,13956);

-- ISC/II/B/1/1 (5 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/1/1', pinned_at = now() WHERE id IN (828,3627,3628,12893,12896);

-- ISC/II/B/1/10 (4 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/1/10', pinned_at = now() WHERE id IN (3644,3646,3664,13737);

-- ISC/II/B/1/2 (33 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/1/2', pinned_at = now() WHERE id IN (826,827,837,3613,3614,3615,3616,3617,3619,3621,3622,3631,3632,3633,3634,3635,3637,3638,3639,3640,3643,12874,12876,12878,12894,12898,13719,13722,13725,13730,13733,13734,13739);

-- ISC/II/B/1/3 (16 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/1/3', pinned_at = now() WHERE id IN (816,818,819,820,821,840,3618,3620,3623,12775,12779,12875,12879,12882,13723,13728);

-- ISC/II/B/1/4 (11 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/1/4', pinned_at = now() WHERE id IN (817,825,3645,12877,12884,12895,13672,13721,13726,13735,13738);

-- ISC/II/B/1/6 (1 question)
UPDATE questions SET pin_ref = 'ISC/II/B/1/6', pinned_at = now() WHERE id IN (12888);

-- ISC/II/B/1/9 (3 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/1/9', pinned_at = now() WHERE id IN (12886,12887,13727);

-- ISC/II/B/2/1 (12 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/2/1', pinned_at = now() WHERE id IN (832,834,835,836,3651,3671,3672,12757,13654,13657,13665,13669);

-- ISC/II/B/2/2 (4 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/2/2', pinned_at = now() WHERE id IN (843,3629,3636,13720);

-- ISC/II/B/2/3 (4 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/2/3', pinned_at = now() WHERE id IN (838,3668,13658,13660);

-- ISC/II/B/2/6 (33 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/2/6', pinned_at = now() WHERE id IN (823,829,3641,3647,3658,3659,3662,3663,3665,3669,3674,3678,3679,12758,12761,12762,12770,12771,12782,12783,12880,12881,12883,12885,12889,12890,12891,12902,13652,13671,13724,13729,13731);

-- ISC/II/B/2/7 (14 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/2/7', pinned_at = now() WHERE id IN (830,3652,3654,3655,12755,12756,12765,12768,12769,12780,12892,13656,13668,13670);

-- ISC/II/B/2/8 (5 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/2/8', pinned_at = now() WHERE id IN (831,3656,12759,12760,12899);

-- ISC/II/B/3/1 (2 questions)
UPDATE questions SET pin_ref = 'ISC/II/B/3/1', pinned_at = now() WHERE id IN (841,3642);

-- ISC/II/C/0/1 (48 questions)
UPDATE questions SET pin_ref = 'ISC/II/C/0/1', pinned_at = now() WHERE id IN (4929,5756,5757,5759,5761,5763,5764,5769,5773,5784,5787,5790,5793,5794,5801,5802,5805,5808,5813,5827,5837,5843,5844,5845,5849,5850,5851,5856,5859,5860,5863,5864,5865,5867,5868,5870,5873,5874,5875,5876,5879,5881,5884,5886,5892,5896,5902,5903);

-- ISC/II/C/0/3 (7 questions)
UPDATE questions SET pin_ref = 'ISC/II/C/0/3', pinned_at = now() WHERE id IN (3743,5777,5785,5807,5829,5885,13919);

-- ISC/II/C/0/4 (4 questions)
UPDATE questions SET pin_ref = 'ISC/II/C/0/4', pinned_at = now() WHERE id IN (4926,4938,5797,5895);

-- ISC/II/C/0/6 (78 questions)
UPDATE questions SET pin_ref = 'ISC/II/C/0/6', pinned_at = now() WHERE id IN (848,850,851,852,854,857,1297,3721,3722,3723,3724,3725,3726,3727,3728,3729,3730,3731,3732,3733,3734,3735,3737,3738,3739,3741,3742,3744,3745,4927,4935,4939,5760,5770,5779,5780,5786,5788,5789,5791,5792,5795,5798,5806,5818,5822,5823,5824,5831,5838,5840,5841,5846,5847,5848,5852,5853,5862,5871,5872,5878,5894,5897,13192,13196,13199,13201,13203,13206,13207,13209,13216,13914,13916,13918,13920,13921,13922);

-- ISC/II/C/0/7 (7 questions)
UPDATE questions SET pin_ref = 'ISC/II/C/0/7', pinned_at = now() WHERE id IN (5772,5869,5882,13200,13208,13210,13215);

-- ISC/II/D/0/1 (2 questions)
UPDATE questions SET pin_ref = 'ISC/II/D/0/1', pinned_at = now() WHERE id IN (3693,7914);

-- ISC/II/D/0/2 (2 questions)
UPDATE questions SET pin_ref = 'ISC/II/D/0/2', pinned_at = now() WHERE id IN (7806,7898);

-- ISC/II/D/0/3 (38 questions)
UPDATE questions SET pin_ref = 'ISC/II/D/0/3', pinned_at = now() WHERE id IN (858,859,860,861,862,864,866,868,871,3685,3687,3689,3698,3700,3703,3704,3705,3706,3707,3708,3710,7801,7802,7807,7810,7811,7817,7820,7901,7902,7904,7905,7908,7912,7913,7916,7917,7919);

-- ISC/II/D/0/4 (1 question)
UPDATE questions SET pin_ref = 'ISC/II/D/0/4', pinned_at = now() WHERE id IN (3702);

-- ISC/III/A/0/1 (4 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/1', pinned_at = now() WHERE id IN (3748,3758,13965,13969);

-- ISC/III/A/0/11 (2 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/11', pinned_at = now() WHERE id IN (3763,13960);

-- ISC/III/A/0/12 (2 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/12', pinned_at = now() WHERE id IN (877,13967);

-- ISC/III/A/0/13 (3 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/13', pinned_at = now() WHERE id IN (880,3754,3773);

-- ISC/III/A/0/14 (1 question)
UPDATE questions SET pin_ref = 'ISC/III/A/0/14', pinned_at = now() WHERE id IN (3753);

-- ISC/III/A/0/15 (1 question)
UPDATE questions SET pin_ref = 'ISC/III/A/0/15', pinned_at = now() WHERE id IN (13964);

-- ISC/III/A/0/16 (1 question)
UPDATE questions SET pin_ref = 'ISC/III/A/0/16', pinned_at = now() WHERE id IN (3765);

-- ISC/III/A/0/3 (7 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/3', pinned_at = now() WHERE id IN (875,883,1207,3751,3752,3759,13968);

-- ISC/III/A/0/4 (14 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/4', pinned_at = now() WHERE id IN (873,874,3746,3749,3750,3757,3761,3762,3764,3772,3909,13958,13962,13971);

-- ISC/III/A/0/9 (5 questions)
UPDATE questions SET pin_ref = 'ISC/III/A/0/9', pinned_at = now() WHERE id IN (881,3755,3766,3770,13970);

-- ISC/III/B/0/1 (10 questions)
UPDATE questions SET pin_ref = 'ISC/III/B/0/1', pinned_at = now() WHERE id IN (1218,1221,3785,3797,3801,4949,13679,13687,13692,15724);

-- ISC/III/B/0/2 (14 questions)
UPDATE questions SET pin_ref = 'ISC/III/B/0/2', pinned_at = now() WHERE id IN (1217,1222,1224,3786,3889,3890,3895,4951,4958,4959,13684,13694,13696,15719);

-- ISC/III/B/0/3 (21 questions)
UPDATE questions SET pin_ref = 'ISC/III/B/0/3', pinned_at = now() WHERE id IN (894,1216,1219,3883,3884,3885,3886,3892,3897,3903,3908,3918,4963,13675,13676,13677,13686,13688,13693,13779,15717);

-- ISC/III/B/0/4 (7 questions)
UPDATE questions SET pin_ref = 'ISC/III/B/0/4', pinned_at = now() WHERE id IN (1225,3804,3894,13425,13426,13428,13695);

-- ISC/III/B/0/5 (64 questions)
UPDATE questions SET pin_ref = 'ISC/III/B/0/5', pinned_at = now() WHERE id IN (893,893,1220,1223,3784,3803,3805,3887,3888,3891,3896,3898,3901,3904,3905,3906,3907,3910,3919,4946,4947,4956,4957,4960,4962,13399,13400,13401,13403,13404,13405,13407,13408,13409,13410,13411,13412,13414,13416,13417,13418,13419,13420,13423,13424,13427,13678,13681,13682,13683,13685,13689,13690,13691,13770,13772,13773,13775,13777,13778,13782,13784,13786,15723);

-- Sanity check: matched rows should equal 884
-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = 'isc');

COMMIT;
