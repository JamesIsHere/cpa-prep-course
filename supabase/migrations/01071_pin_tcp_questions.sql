-- Phase 1E: Pin TCP questions to classifier-suggested pin_ref
-- Based on docs/classify-tcp.json (2026-04-20T01:55:04.428Z)
-- Total: 1292 questions | Matched: 711 (55.0%) | Homeless: 581
-- Unique pin_refs: 58
-- Homeless questions remain at pin_ref = NULL (schema default)

BEGIN;

-- TCP/I/A/0/1 (42 questions)
UPDATE questions SET pin_ref = 'TCP/I/A/0/1', pinned_at = now() WHERE id IN (896,898,902,903,905,909,3920,3922,3925,3927,3930,3932,3938,3943,3944,3945,3947,3949,3951,3955,3957,12630,12633,12636,12640,12641,12646,12649,12651,12652,14071,14072,14075,14077,14078,14096,14098,14618,14619,14620,14621,14632);

-- TCP/I/A/0/10 (5 questions)
UPDATE questions SET pin_ref = 'TCP/I/A/0/10', pinned_at = now() WHERE id IN (897,900,901,14080,14091);

-- TCP/I/A/0/2 (5 questions)
UPDATE questions SET pin_ref = 'TCP/I/A/0/2', pinned_at = now() WHERE id IN (907,3936,12642,14069,14633);

-- TCP/I/A/0/6 (2 questions)
UPDATE questions SET pin_ref = 'TCP/I/A/0/6', pinned_at = now() WHERE id IN (12648,12659);

-- TCP/I/A/0/7 (1 question)
UPDATE questions SET pin_ref = 'TCP/I/A/0/7', pinned_at = now() WHERE id IN (14090);

-- TCP/I/B/0/1 (22 questions)
UPDATE questions SET pin_ref = 'TCP/I/B/0/1', pinned_at = now() WHERE id IN (916,919,3964,3968,3978,3979,3991,5908,5913,5915,5948,5953,5956,5961,5973,5983,6008,6049,6059,6068,6072,6082);

-- TCP/I/B/0/2 (19 questions)
UPDATE questions SET pin_ref = 'TCP/I/B/0/2', pinned_at = now() WHERE id IN (910,911,920,3958,3966,3984,3990,3993,5907,5910,5920,5922,5933,5970,5980,5989,6000,6042,6074);

-- TCP/I/B/0/3 (12 questions)
UPDATE questions SET pin_ref = 'TCP/I/B/0/3', pinned_at = now() WHERE id IN (914,3974,3980,5911,5964,5978,5982,6015,6019,6029,6058,6073);

-- TCP/I/B/0/4 (5 questions)
UPDATE questions SET pin_ref = 'TCP/I/B/0/4', pinned_at = now() WHERE id IN (5914,5931,5957,5958,6032);

-- TCP/I/C/0/1 (8 questions)
UPDATE questions SET pin_ref = 'TCP/I/C/0/1', pinned_at = now() WHERE id IN (930,3994,3998,3999,4000,12799,12816,14668);

-- TCP/I/C/0/2 (22 questions)
UPDATE questions SET pin_ref = 'TCP/I/C/0/2', pinned_at = now() WHERE id IN (924,933,1300,1301,3996,4005,4008,4012,4015,4016,4026,4031,12787,12788,12797,12802,12806,14175,14183,14184,14663,14669);

-- TCP/I/C/0/3 (27 questions)
UPDATE questions SET pin_ref = 'TCP/I/C/0/3', pinned_at = now() WHERE id IN (925,928,934,935,3995,3997,4007,4024,4025,4028,4030,12791,12793,12794,12811,12813,12814,12815,14170,14171,14176,14180,14190,14662,14666,14672,14675);

-- TCP/I/C/0/4 (2 questions)
UPDATE questions SET pin_ref = 'TCP/I/C/0/4', pinned_at = now() WHERE id IN (926,927);

-- TCP/I/D/0/1 (95 questions)
UPDATE questions SET pin_ref = 'TCP/I/D/0/1', pinned_at = now() WHERE id IN (938,939,940,941,943,945,946,947,948,950,951,4032,4033,4034,4035,4036,4037,4038,4039,4040,4041,4042,4043,4046,4047,4049,4051,4052,4053,4054,4056,4058,4059,4060,4061,4062,4063,4065,4066,7770,7771,7773,7774,7775,7776,7777,7778,7779,7780,7782,7784,7786,7787,7789,7790,7794,7795,7797,7798,7799,14215,14220,14221,14222,14223,14224,14225,14226,14227,14228,14230,14232,14233,14234,14235,14236,14238,14240,14241,15767,15768,15770,15772,15775,15776,15777,15778,15779,15780,15781,15782,15783,15784,15785,15786);

-- TCP/I/D/0/3 (19 questions)
UPDATE questions SET pin_ref = 'TCP/I/D/0/3', pinned_at = now() WHERE id IN (944,949,4044,4045,4055,4057,4064,7772,7781,7783,7788,7791,7796,14219,14229,14237,14242,15773,15774);

-- TCP/I/D/0/5 (3 questions)
UPDATE questions SET pin_ref = 'TCP/I/D/0/5', pinned_at = now() WHERE id IN (4067,7785,14239);

-- TCP/I/D/0/6 (3 questions)
UPDATE questions SET pin_ref = 'TCP/I/D/0/6', pinned_at = now() WHERE id IN (942,7792,7793);

-- TCP/II/A/1/1 (23 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/1/1', pinned_at = now() WHERE id IN (956,957,963,964,4078,4082,4089,4090,4095,4101,13586,13746,13752,13759,13766,14593,14596,14599,14603,14609,14610,14615,14616);

-- TCP/II/A/1/2 (12 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/1/2', pinned_at = now() WHERE id IN (952,953,960,4068,4069,4091,4098,4104,13753,13756,13762,13768);

-- TCP/II/A/1/3 (1 question)
UPDATE questions SET pin_ref = 'TCP/II/A/1/3', pinned_at = now() WHERE id IN (14611);

-- TCP/II/A/2/1 (46 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/2/1', pinned_at = now() WHERE id IN (987,988,1022,1023,1028,1035,4212,4213,4214,4216,4217,4218,4219,4230,4231,4237,4240,4242,4245,13254,13258,13261,13264,13267,13270,13274,13276,14516,14517,14527,14529,14531,14535,14537,14540,14542,14568,14569,14570,14571,14573,14584,14589,15988,15992,15993);

-- TCP/II/A/2/2 (4 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/2/2', pinned_at = now() WHERE id IN (992,13501,13510,14553);

-- TCP/II/A/2/3 (29 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/2/3', pinned_at = now() WHERE id IN (1024,1025,1026,4223,4225,4226,4233,4241,13263,13266,13269,13273,14519,14528,14530,14533,14536,14539,14541,14579,14580,14581,14582,14586,14587,14590,15985,15986,15990);

-- TCP/II/A/2/4 (1 question)
UPDATE questions SET pin_ref = 'TCP/II/A/2/4', pinned_at = now() WHERE id IN (14560);

-- TCP/II/A/2/5 (6 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/2/5', pinned_at = now() WHERE id IN (4150,4151,13493,13509,13520,14547);

-- TCP/II/A/2/6 (5 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/2/6', pinned_at = now() WHERE id IN (1027,1031,1032,1033,13277);

-- TCP/II/A/3/1 (16 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/3/1', pinned_at = now() WHERE id IN (954,959,965,4072,4073,4074,4088,13740,13744,13748,13760,13763,13764,14598,14600,14614);

-- TCP/II/A/3/2 (27 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/3/2', pinned_at = now() WHERE id IN (955,962,4075,4076,4077,4079,4087,4092,4093,4094,4096,4097,4099,13741,13742,13743,13745,13749,13754,13755,13767,14146,14594,14601,14608,14613,14658);

-- TCP/II/A/4/1 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/4/1', pinned_at = now() WHERE id IN (15919,15969);

-- TCP/II/A/4/2 (18 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/4/2', pinned_at = now() WHERE id IN (14642,15875,15891,15893,15900,15902,15909,15910,15912,15920,15923,15958,15970,15971,15973,15974,15980,15981);

-- TCP/II/A/4/3 (16 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/4/3', pinned_at = now() WHERE id IN (971,4107,4131,14149,15877,15887,15890,15896,15901,15906,15911,15913,15917,15965,15968,15977);

-- TCP/II/A/4/4 (12 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/4/4', pinned_at = now() WHERE id IN (14145,15873,15880,15892,15895,15899,15905,15914,15921,15924,15966,15976);

-- TCP/II/A/4/5 (10 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/4/5', pinned_at = now() WHERE id IN (15867,15872,15884,15889,15894,15903,15915,15961,15975,15983);

-- TCP/II/A/4/6 (24 questions)
UPDATE questions SET pin_ref = 'TCP/II/A/4/6', pinned_at = now() WHERE id IN (14151,14646,15866,15869,15874,15876,15878,15881,15885,15888,15897,15898,15904,15908,15916,15922,15956,15957,15962,15964,15967,15978,15979,15982);

-- TCP/II/C/1/1 (3 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/1/1', pinned_at = now() WHERE id IN (4202,14502,14505);

-- TCP/II/C/1/2 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/1/2', pinned_at = now() WHERE id IN (996,4186);

-- TCP/II/C/1/3 (10 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/1/3', pinned_at = now() WHERE id IN (997,1007,4181,4206,4208,4211,12928,12930,14489,14494);

-- TCP/II/C/2/1 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/2/1', pinned_at = now() WHERE id IN (4184,4185);

-- TCP/II/C/3/1 (1 question)
UPDATE questions SET pin_ref = 'TCP/II/C/3/1', pinned_at = now() WHERE id IN (14507);

-- TCP/II/C/3/2 (1 question)
UPDATE questions SET pin_ref = 'TCP/II/C/3/2', pinned_at = now() WHERE id IN (994);

-- TCP/II/C/3/3 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/3/3', pinned_at = now() WHERE id IN (1002,12915);

-- TCP/II/C/3/4 (5 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/3/4', pinned_at = now() WHERE id IN (1001,4187,4205,12910,14512);

-- TCP/II/C/4/2 (8 questions)
UPDATE questions SET pin_ref = 'TCP/II/C/4/2', pinned_at = now() WHERE id IN (998,1004,4183,4197,4209,12904,12905,12920);

-- TCP/II/D/1/1 (10 questions)
UPDATE questions SET pin_ref = 'TCP/II/D/1/1', pinned_at = now() WHERE id IN (1013,4246,4247,4250,4251,4259,4263,4266,4275,4281);

-- TCP/II/D/1/2 (2 questions)
UPDATE questions SET pin_ref = 'TCP/II/D/1/2', pinned_at = now() WHERE id IN (1020,4271);

-- TCP/II/D/2/2 (21 questions)
UPDATE questions SET pin_ref = 'TCP/II/D/2/2', pinned_at = now() WHERE id IN (1008,1009,1010,1011,1014,1016,1019,4248,4249,4258,4260,4261,4265,4267,4268,4272,4274,4276,4277,4278,4280);

-- TCP/III/A/0/2 (7 questions)
UPDATE questions SET pin_ref = 'TCP/III/A/0/2', pinned_at = now() WHERE id IN (1040,1042,4298,4302,4304,4308,15794);

-- TCP/III/A/0/3 (17 questions)
UPDATE questions SET pin_ref = 'TCP/III/A/0/3', pinned_at = now() WHERE id IN (1036,1038,1039,1045,4282,4284,4285,4288,4289,4290,4292,4295,4296,4297,4310,4312,15792);

-- TCP/III/A/0/4 (1 question)
UPDATE questions SET pin_ref = 'TCP/III/A/0/4', pinned_at = now() WHERE id IN (4309);

-- TCP/III/B/0/1 (1 question)
UPDATE questions SET pin_ref = 'TCP/III/B/0/1', pinned_at = now() WHERE id IN (15824);

-- TCP/III/B/0/2 (11 questions)
UPDATE questions SET pin_ref = 'TCP/III/B/0/2', pinned_at = now() WHERE id IN (4968,4971,4972,4975,4981,4982,4985,15815,15817,15818,15820);

-- TCP/III/B/0/3 (2 questions)
UPDATE questions SET pin_ref = 'TCP/III/B/0/3', pinned_at = now() WHERE id IN (4341,15819);

-- TCP/III/B/0/5 (4 questions)
UPDATE questions SET pin_ref = 'TCP/III/B/0/5', pinned_at = now() WHERE id IN (1230,1232,4334,4337);

-- TCP/IV/A/0/1 (14 questions)
UPDATE questions SET pin_ref = 'TCP/IV/A/0/1', pinned_at = now() WHERE id IN (1236,1242,4352,4353,4360,4363,4366,4368,4371,4373,4375,14371,14381,14393);

-- TCP/IV/A/0/2 (11 questions)
UPDATE questions SET pin_ref = 'TCP/IV/A/0/2', pinned_at = now() WHERE id IN (1237,1244,4350,4351,4354,4355,14375,14378,14385,14387,14396);

-- TCP/IV/C/0/1 (16 questions)
UPDATE questions SET pin_ref = 'TCP/IV/C/0/1', pinned_at = now() WHERE id IN (1248,1251,1252,1253,4378,4394,4396,14459,14460,14463,14465,14471,14479,14480,14483,14487);

-- TCP/IV/C/0/2 (10 questions)
UPDATE questions SET pin_ref = 'TCP/IV/C/0/2', pinned_at = now() WHERE id IN (4379,4400,4401,14458,14469,14470,14472,14476,14477,14481);

-- TCP/IV/C/0/3 (6 questions)
UPDATE questions SET pin_ref = 'TCP/IV/C/0/3', pinned_at = now() WHERE id IN (1254,4377,4395,4398,4402,14475);

-- Sanity check: matched rows should equal 711
-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = 'tcp');

COMMIT;
