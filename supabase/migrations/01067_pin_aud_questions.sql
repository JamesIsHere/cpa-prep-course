-- Phase 1E: Pin AUD questions to classifier-suggested pin_ref
-- Based on docs/classify-aud.json (2026-04-19T21:26:45.835Z)
-- Total: 1425 questions | Matched: 1127 (79.1%) | Homeless: 298
-- Unique pin_refs: 96
-- Homeless questions remain at pin_ref = NULL (schema default)

BEGIN;

-- AUD/I/A/1/1 (30 questions)
UPDATE questions SET pin_ref = 'AUD/I/A/1/1', pinned_at = now() WHERE id IN (92,95,143,1314,1316,1320,1321,1322,1323,1325,1330,1332,1334,1335,1339,1345,1346,1347,1348,1349,1356,1357,1358,1365,4426,4439,4443,13834,13835,13836);

-- AUD/I/A/1/2 (17 questions)
UPDATE questions SET pin_ref = 'AUD/I/A/1/2', pinned_at = now() WHERE id IN (140,144,267,1331,1353,1360,1361,1362,1363,1367,1368,1370,1373,1375,1376,4433,4434);

-- AUD/I/A/1/3 (3 questions)
UPDATE questions SET pin_ref = 'AUD/I/A/1/3', pinned_at = now() WHERE id IN (1366,4435,4438);

-- AUD/I/A/1/4 (31 questions)
UPDATE questions SET pin_ref = 'AUD/I/A/1/4', pinned_at = now() WHERE id IN (1,2,3,91,94,142,260,262,263,1309,1311,1312,1313,1333,4427,4428,4429,4430,4432,4436,4437,4440,4441,4442,4444,4445,13831,13839,13841,13843,13844);

-- AUD/I/A/2/1 (8 questions)
UPDATE questions SET pin_ref = 'AUD/I/A/2/1', pinned_at = now() WHERE id IN (254,255,256,257,258,264,265,266);

-- AUD/I/A/2/2 (7 questions)
UPDATE questions SET pin_ref = 'AUD/I/A/2/2', pinned_at = now() WHERE id IN (4431,13830,13832,13833,13837,13838,13842);

-- AUD/I/B/0/1 (19 questions)
UPDATE questions SET pin_ref = 'AUD/I/B/0/1', pinned_at = now() WHERE id IN (4457,4458,4459,4460,4462,4463,4464,13888,13891,13892,13893,13894,13895,13896,13898,13899,13901,13902,13904);

-- AUD/I/B/0/2 (9 questions)
UPDATE questions SET pin_ref = 'AUD/I/B/0/2', pinned_at = now() WHERE id IN (4456,4461,4465,13887,13889,13890,13897,13900,13903);

-- AUD/I/C/1/1 (14 questions)
UPDATE questions SET pin_ref = 'AUD/I/C/1/1', pinned_at = now() WHERE id IN (4406,4409,4412,4416,4418,4419,4421,4423,4424,13867,13871,13874,13875,13879);

-- AUD/I/C/3/1 (5 questions)
UPDATE questions SET pin_ref = 'AUD/I/C/3/1', pinned_at = now() WHERE id IN (4410,13866,13868,13872,13881);

-- AUD/I/D/1/1 (5 questions)
UPDATE questions SET pin_ref = 'AUD/I/D/1/1', pinned_at = now() WHERE id IN (4467,4479,4481,13928,13932);

-- AUD/I/D/2/1 (8 questions)
UPDATE questions SET pin_ref = 'AUD/I/D/2/1', pinned_at = now() WHERE id IN (4471,4472,4475,4476,4478,4483,13927,13929);

-- AUD/I/D/2/2 (3 questions)
UPDATE questions SET pin_ref = 'AUD/I/D/2/2', pinned_at = now() WHERE id IN (4469,4485,13931);

-- AUD/I/D/2/3 (3 questions)
UPDATE questions SET pin_ref = 'AUD/I/D/2/3', pinned_at = now() WHERE id IN (4473,13923,13936);

-- AUD/I/D/2/4 (18 questions)
UPDATE questions SET pin_ref = 'AUD/I/D/2/4', pinned_at = now() WHERE id IN (4466,4468,4470,4474,4477,4480,4482,4484,13924,13925,13926,13930,13933,13934,13935,13938,13939,13940);

-- AUD/I/G/0/1 (12 questions)
UPDATE questions SET pin_ref = 'AUD/I/G/0/1', pinned_at = now() WHERE id IN (27,136,358,364,1378,1384,1394,1403,1406,1408,1410,1413);

-- AUD/I/G/0/2 (24 questions)
UPDATE questions SET pin_ref = 'AUD/I/G/0/2', pinned_at = now() WHERE id IN (28,137,138,139,360,361,362,365,369,1380,1385,1386,1387,1388,1389,1390,1391,1392,1393,1395,1399,1400,1405,1409);

-- AUD/II/A/1/1 (10 questions)
UPDATE questions SET pin_ref = 'AUD/II/A/1/1', pinned_at = now() WHERE id IN (4,5,6,96,97,98,99,100,270,1441);

-- AUD/II/A/2/1 (28 questions)
UPDATE questions SET pin_ref = 'AUD/II/A/2/1', pinned_at = now() WHERE id IN (269,273,1442,1445,1446,1449,1450,1454,1456,1461,1462,1464,1465,1466,1470,1471,1472,1473,1474,1476,1477,1479,1480,1481,1482,1484,1485,1579);

-- AUD/II/B/1/2 (1 question)
UPDATE questions SET pin_ref = 'AUD/II/B/1/2', pinned_at = now() WHERE id IN (15734);

-- AUD/II/B/1/3 (15 questions)
UPDATE questions SET pin_ref = 'AUD/II/B/1/3', pinned_at = now() WHERE id IN (4486,4487,4493,4495,4497,4502,13139,13145,13155,13156,13160,13162,13163,13167,15731);

-- AUD/II/B/2/2 (35 questions)
UPDATE questions SET pin_ref = 'AUD/II/B/2/2', pinned_at = now() WHERE id IN (4488,4489,4490,4492,4496,4498,4499,4500,4501,4503,4504,4505,13140,13141,13143,13144,13147,13148,13151,13152,13153,13158,13159,13161,13164,13166,13168,15727,15729,15732,15735,15736,15737,15739,15740);

-- AUD/II/C/1/1 (11 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/1/1', pinned_at = now() WHERE id IN (10,106,1533,1534,1537,1540,1544,1570,1575,1583,1584);

-- AUD/II/C/2/1 (9 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/2/1', pinned_at = now() WHERE id IN (282,283,1276,1277,1535,1536,1539,1554,1568);

-- AUD/II/C/2/2 (7 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/2/2', pinned_at = now() WHERE id IN (110,1548,1552,1559,1560,1577,1578);

-- AUD/II/C/3/2 (2 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/3/2', pinned_at = now() WHERE id IN (108,1564);

-- AUD/II/C/3/3 (11 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/3/3', pinned_at = now() WHERE id IN (11,12,285,288,1541,1546,1549,1550,1553,1555,1576);

-- AUD/II/C/3/4 (11 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/3/4', pinned_at = now() WHERE id IN (109,284,289,293,1538,1542,1543,1545,1558,1561,1585);

-- AUD/II/C/4/1 (1 question)
UPDATE questions SET pin_ref = 'AUD/II/C/4/1', pinned_at = now() WHERE id IN (290);

-- AUD/II/C/5/1 (3 questions)
UPDATE questions SET pin_ref = 'AUD/II/C/5/1', pinned_at = now() WHERE id IN (1551,1567,1573);

-- AUD/II/C/5/2 (1 question)
UPDATE questions SET pin_ref = 'AUD/II/C/5/2', pinned_at = now() WHERE id IN (107);

-- AUD/II/D/1/1 (22 questions)
UPDATE questions SET pin_ref = 'AUD/II/D/1/1', pinned_at = now() WHERE id IN (4511,4514,4518,4520,4523,4525,13021,13025,13026,13031,13038,13039,13040,13041,13045,13048,15827,15830,15832,15835,15836,15837);

-- AUD/II/D/1/2 (15 questions)
UPDATE questions SET pin_ref = 'AUD/II/D/1/2', pinned_at = now() WHERE id IN (4506,4508,4510,4512,4513,4516,4519,4524,13028,13034,13037,13046,15828,15831,15834);

-- AUD/II/D/1/3 (6 questions)
UPDATE questions SET pin_ref = 'AUD/II/D/1/3', pinned_at = now() WHERE id IN (4515,4522,13022,13027,13033,13044);

-- AUD/II/D/2/1 (4 questions)
UPDATE questions SET pin_ref = 'AUD/II/D/2/1', pinned_at = now() WHERE id IN (13020,13024,13030,15838);

-- AUD/II/D/2/2 (7 questions)
UPDATE questions SET pin_ref = 'AUD/II/D/2/2', pinned_at = now() WHERE id IN (4507,4509,4517,13023,13032,15826,15829);

-- AUD/II/E/0/1 (13 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/1', pinned_at = now() WHERE id IN (275,279,1493,1499,1504,1513,1521,1522,1524,1526,1528,1532,1581);

-- AUD/II/E/0/10 (20 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/10', pinned_at = now() WHERE id IN (101,274,278,1491,1494,1495,1506,1511,1512,1515,1519,1525,4528,4529,4530,4532,13071,13073,13076,15694);

-- AUD/II/E/0/11 (2 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/11', pinned_at = now() WHERE id IN (13087,13091);

-- AUD/II/E/0/2 (27 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/2', pinned_at = now() WHERE id IN (7,102,103,104,277,281,1488,1489,1490,1496,1497,1498,1502,1505,1507,1510,1514,1517,1518,1520,1527,1529,1530,1582,4536,13084,13088);

-- AUD/II/E/0/3 (9 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/3', pinned_at = now() WHERE id IN (1501,1503,1516,1580,4526,4531,4535,15696,15700);

-- AUD/II/E/0/4 (6 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/4', pinned_at = now() WHERE id IN (1531,4534,4543,15701,15712,15714);

-- AUD/II/E/0/5 (32 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/5', pinned_at = now() WHERE id IN (8,276,280,1500,1509,1523,4527,4533,4537,4538,4539,4540,4541,4544,13072,13089,13092,13093,13095,13096,13098,13099,13100,15695,15697,15698,15702,15703,15704,15706,15710,15711);

-- AUD/II/E/0/6 (5 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/6', pinned_at = now() WHERE id IN (4542,4545,13075,13077,13083);

-- AUD/II/E/0/7 (3 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/7', pinned_at = now() WHERE id IN (13079,13082,13085);

-- AUD/II/E/0/9 (3 questions)
UPDATE questions SET pin_ref = 'AUD/II/E/0/9', pinned_at = now() WHERE id IN (9,105,1492);

-- AUD/II/F/0/1 (18 questions)
UPDATE questions SET pin_ref = 'AUD/II/F/0/1', pinned_at = now() WHERE id IN (4546,4547,4548,4549,4553,4555,4557,4563,4565,13341,13346,13347,13356,13357,13365,15754,15763,15766);

-- AUD/II/F/0/2 (10 questions)
UPDATE questions SET pin_ref = 'AUD/II/F/0/2', pinned_at = now() WHERE id IN (4550,4551,4552,4554,4556,4562,13342,13345,13359,15760);

-- AUD/II/F/0/3 (21 questions)
UPDATE questions SET pin_ref = 'AUD/II/F/0/3', pinned_at = now() WHERE id IN (4558,4559,4560,4564,13343,13344,13349,13350,13351,13352,13355,13360,13363,13366,13367,13369,15756,15758,15761,15762,15765);

-- AUD/III/B/0/1 (42 questions)
UPDATE questions SET pin_ref = 'AUD/III/B/0/1', pinned_at = now() WHERE id IN (13,14,111,112,113,114,115,294,296,298,299,300,302,303,1278,1279,1280,1587,1588,1589,1590,1591,1594,1595,1602,1603,1605,1610,1611,1612,1613,1614,1618,1619,1620,1621,1622,1625,1626,1627,1630,1632);

-- AUD/III/B/0/2 (8 questions)
UPDATE questions SET pin_ref = 'AUD/III/B/0/2', pinned_at = now() WHERE id IN (295,297,301,1592,1593,1598,1604,1615);

-- AUD/III/C/0/1 (29 questions)
UPDATE questions SET pin_ref = 'AUD/III/C/0/1', pinned_at = now() WHERE id IN (15,16,116,117,118,304,305,306,310,312,313,1634,1635,1636,1637,1638,1639,1640,1644,1645,1646,1647,1650,1653,1655,1658,1660,1661,1667);

-- AUD/III/C/0/2 (1 question)
UPDATE questions SET pin_ref = 'AUD/III/C/0/2', pinned_at = now() WHERE id IN (1665);

-- AUD/III/C/0/3 (8 questions)
UPDATE questions SET pin_ref = 'AUD/III/C/0/3', pinned_at = now() WHERE id IN (311,1633,1641,1652,1657,1662,1664,1666);

-- AUD/III/C/0/4 (13 questions)
UPDATE questions SET pin_ref = 'AUD/III/C/0/4', pinned_at = now() WHERE id IN (119,307,308,309,1642,1643,1648,1649,1651,1654,1656,1659,1668);

-- AUD/III/D/1/1 (10 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/1/1', pinned_at = now() WHERE id IN (120,1673,1674,1684,1685,1694,1696,1701,4584,12837);

-- AUD/III/D/1/3 (3 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/1/3', pinned_at = now() WHERE id IN (4572,4580,14031);

-- AUD/III/D/1/4 (2 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/1/4', pinned_at = now() WHERE id IN (1707,14036);

-- AUD/III/D/1/6 (40 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/1/6', pinned_at = now() WHERE id IN (4566,4567,4568,4569,4570,4571,4573,4574,4575,4576,4577,4579,12818,12822,12823,12824,12825,12826,12827,12828,12829,12830,12832,12834,12835,12836,12838,12839,12840,12842,12844,12845,12847,14025,14026,14027,14028,14029,14030,14033);

-- AUD/III/D/1/7 (13 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/1/7', pinned_at = now() WHERE id IN (18,121,123,320,321,323,1675,1676,1682,1695,1699,1700,1703);

-- AUD/III/D/2/1 (15 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/2/1', pinned_at = now() WHERE id IN (1671,1689,4601,12677,12678,12681,12685,12690,12693,14009,14012,14015,14021,14022,14023);

-- AUD/III/D/2/2 (30 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/2/2', pinned_at = now() WHERE id IN (17,1669,1683,1704,4588,4592,4594,4595,4596,4597,4598,4600,4603,4605,12666,12670,12671,12672,12673,12676,12679,12680,12682,12686,12688,12691,12692,14011,14013,14017);

-- AUD/III/D/2/3 (3 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/2/3', pinned_at = now() WHERE id IN (4591,4599,12664);

-- AUD/III/D/2/4 (18 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/2/4', pinned_at = now() WHERE id IN (122,1670,1688,4590,4602,4604,12665,12667,12668,12669,12674,12675,12687,12689,14016,14018,14019,14020);

-- AUD/III/D/3/1 (3 questions)
UPDATE questions SET pin_ref = 'AUD/III/D/3/1', pinned_at = now() WHERE id IN (30,1693,1705);

-- AUD/III/D/3/2 (1 question)
UPDATE questions SET pin_ref = 'AUD/III/D/3/2', pinned_at = now() WHERE id IN (1672);

-- AUD/III/E/1/1 (6 questions)
UPDATE questions SET pin_ref = 'AUD/III/E/1/1', pinned_at = now() WHERE id IN (4655,4705,7604,7614,15809,15814);

-- AUD/III/E/1/2 (1 question)
UPDATE questions SET pin_ref = 'AUD/III/E/1/2', pinned_at = now() WHERE id IN (15805);

-- AUD/III/E/1/3 (3 questions)
UPDATE questions SET pin_ref = 'AUD/III/E/1/3', pinned_at = now() WHERE id IN (4663,7606,7611);

-- AUD/III/E/2/1 (1 question)
UPDATE questions SET pin_ref = 'AUD/III/E/2/1', pinned_at = now() WHERE id IN (4660);

-- AUD/III/E/2/2 (2 questions)
UPDATE questions SET pin_ref = 'AUD/III/E/2/2', pinned_at = now() WHERE id IN (4649,7588);

-- AUD/III/E/3/1 (3 questions)
UPDATE questions SET pin_ref = 'AUD/III/E/3/1', pinned_at = now() WHERE id IN (7592,15802,15803);

-- AUD/III/E/4/1 (7 questions)
UPDATE questions SET pin_ref = 'AUD/III/E/4/1', pinned_at = now() WHERE id IN (4647,4650,4653,4657,4659,4662,15800);

-- AUD/III/E/5/1 (8 questions)
UPDATE questions SET pin_ref = 'AUD/III/E/5/1', pinned_at = now() WHERE id IN (4646,4648,4651,4654,4658,4661,4664,7593);

-- AUD/III/F/0/1 (12 questions)
UPDATE questions SET pin_ref = 'AUD/III/F/0/1', pinned_at = now() WHERE id IN (5006,5014,5092,5306,6109,6193,6194,6206,6225,6393,6412,6413);

-- AUD/III/F/0/2 (22 questions)
UPDATE questions SET pin_ref = 'AUD/III/F/0/2', pinned_at = now() WHERE id IN (5015,5023,5025,5037,5292,6105,6146,6148,6155,6166,6184,6189,6213,6217,6219,6234,6259,6338,6406,6414,6465,6482);

-- AUD/III/F/0/3 (5 questions)
UPDATE questions SET pin_ref = 'AUD/III/F/0/3', pinned_at = now() WHERE id IN (5018,5035,5309,6178,6210);

-- AUD/III/F/0/4 (13 questions)
UPDATE questions SET pin_ref = 'AUD/III/F/0/4', pinned_at = now() WHERE id IN (5011,5028,5029,6139,6186,6188,6195,6201,6233,6303,6409,6422,6431);

-- AUD/III/G/0/1 (36 questions)
UPDATE questions SET pin_ref = 'AUD/III/G/0/1', pinned_at = now() WHERE id IN (7927,7931,7932,7933,7936,7937,7939,7942,7944,7945,7947,8073,8078,8079,8084,8086,8088,8134,8143,8706,8720,8794,8799,8803,8808,8813,8978,9082,9088,9120,9121,9142,9144,9337,9339,9342);

-- AUD/IV/A/0/1 (3 questions)
UPDATE questions SET pin_ref = 'AUD/IV/A/0/1', pinned_at = now() WHERE id IN (1750,4676,13982);

-- AUD/IV/A/0/3 (17 questions)
UPDATE questions SET pin_ref = 'AUD/IV/A/0/3', pinned_at = now() WHERE id IN (20,125,336,1714,1732,1733,1734,1741,1749,4665,4666,4667,4670,4672,4673,4675,4678);

-- AUD/IV/A/0/4 (11 questions)
UPDATE questions SET pin_ref = 'AUD/IV/A/0/4', pinned_at = now() WHERE id IN (126,329,334,1717,1718,1728,1729,1747,4668,4669,4683);

-- AUD/IV/A/0/5 (40 questions)
UPDATE questions SET pin_ref = 'AUD/IV/A/0/5', pinned_at = now() WHERE id IN (19,326,327,328,333,335,337,1710,1712,1713,1721,1725,1730,1736,1739,1740,1746,1748,4671,4674,4677,4679,4680,4681,4682,4684,13973,13974,13975,13976,13977,13979,13980,13981,13983,13984,13985,13986,13988,13989);

-- AUD/IV/B/1/1 (10 questions)
UPDATE questions SET pin_ref = 'AUD/IV/B/1/1', pinned_at = now() WHERE id IN (134,349,350,1819,1835,1838,1839,1840,1844,1846);

-- AUD/IV/B/1/2 (6 questions)
UPDATE questions SET pin_ref = 'AUD/IV/B/1/2', pinned_at = now() WHERE id IN (25,135,351,352,1822,1823);

-- AUD/IV/B/2/1 (1 question)
UPDATE questions SET pin_ref = 'AUD/IV/B/2/1', pinned_at = now() WHERE id IN (26);

-- AUD/IV/B/2/2 (6 questions)
UPDATE questions SET pin_ref = 'AUD/IV/B/2/2', pinned_at = now() WHERE id IN (355,1824,1825,1836,1837,1845);

-- AUD/IV/C/1/1 (8 questions)
UPDATE questions SET pin_ref = 'AUD/IV/C/1/1', pinned_at = now() WHERE id IN (131,132,338,339,1756,1757,1772,1785);

-- AUD/IV/C/2/1 (5 questions)
UPDATE questions SET pin_ref = 'AUD/IV/C/2/1', pinned_at = now() WHERE id IN (129,347,1755,1758,1767);

-- AUD/IV/C/2/2 (14 questions)
UPDATE questions SET pin_ref = 'AUD/IV/C/2/2', pinned_at = now() WHERE id IN (23,342,343,1764,1769,1773,1774,1784,1792,1793,1794,1798,1803,1811);

-- AUD/IV/C/3/1 (12 questions)
UPDATE questions SET pin_ref = 'AUD/IV/C/3/1', pinned_at = now() WHERE id IN (22,24,130,340,1752,1753,1754,1759,1787,1788,1789,1790);

-- AUD/IV/C/3/2 (12 questions)
UPDATE questions SET pin_ref = 'AUD/IV/C/3/2', pinned_at = now() WHERE id IN (346,1762,1763,1777,1781,1782,1791,1801,1802,1805,1808,1810);

-- AUD/IV/D/0/1 (3 questions)
UPDATE questions SET pin_ref = 'AUD/IV/D/0/1', pinned_at = now() WHERE id IN (1422,1425,1440);

-- AUD/IV/D/0/2 (1 question)
UPDATE questions SET pin_ref = 'AUD/IV/D/0/2', pinned_at = now() WHERE id IN (1423);

-- AUD/IV/E/2/1 (15 questions)
UPDATE questions SET pin_ref = 'AUD/IV/E/2/1', pinned_at = now() WHERE id IN (4685,4686,4688,4693,4695,4696,4698,4701,4703,4704,13994,13999,14003,14004,14008);

-- AUD/IV/E/4/1 (21 questions)
UPDATE questions SET pin_ref = 'AUD/IV/E/4/1', pinned_at = now() WHERE id IN (4687,4689,4690,4691,4692,4694,4697,4699,4700,4702,13992,13995,13996,13997,13998,14000,14001,14002,14005,14006,14007);

-- Sanity check: matched rows should equal 1127
-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = 'aud');

COMMIT;
