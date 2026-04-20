-- Phase 1E: Pin FAR questions to classifier-suggested pin_ref
-- Based on docs/classify-far.json (2026-04-20T06:42:39.567Z)
-- Total: 1539 questions | Matched: 1414 (91.9%) | Homeless: 125
-- Unique pin_refs: 106
-- Homeless questions remain at pin_ref = NULL (schema default)

BEGIN;

-- FAR/I/A (75 questions)
UPDATE questions SET pin_ref = 'FAR/I/A', pinned_at = now() WHERE id IN (370,372,375,376,1848,4706,4707,4708,4709,4710,4711,4712,4713,4714,4715,4717,4718,4719,4720,4721,4722,4723,4724,4725,11520,11521,11525,11529,11531,11532,11533,11534,11536,11537,11539,11540,11541,11542,11543,11544,11546,11547,11548,11549,11581,11590,11597,11606,12211,12212,12213,12214,12216,12218,12219,12220,12221,12222,12223,12224,12225,12226,12227,12229,12230,12232,12233,12235,12237,12238,12239,12277,12278,12287,12289);

-- FAR/I/A/1/1 (10 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/1/1', pinned_at = now() WHERE id IN (145,190,1849,1864,1871,1872,1873,11585,11602,11605);

-- FAR/I/A/1/2 (3 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/1/2', pinned_at = now() WHERE id IN (147,1856,1870);

-- FAR/I/A/1/3 (1 question)
UPDATE questions SET pin_ref = 'FAR/I/A/1/3', pinned_at = now() WHERE id IN (12293);

-- FAR/I/A/2/1 (10 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/2/1', pinned_at = now() WHERE id IN (1851,1855,11545,11586,12271,12284,12291,12292,12296,12297);

-- FAR/I/A/23 (9 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/23', pinned_at = now() WHERE id IN (11522,11524,11526,11527,11528,11530,11535,11538,11583);

-- FAR/I/A/3/1 (6 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/3/1', pinned_at = now() WHERE id IN (1854,11591,11595,11596,12210,12281);

-- FAR/I/A/3/2 (6 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/3/2', pinned_at = now() WHERE id IN (373,377,1853,1857,11609,11693);

-- FAR/I/A/4/1 (7 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/4/1', pinned_at = now() WHERE id IN (1865,1868,1869,11598,11603,12215,12272);

-- FAR/I/A/5/1 (49 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/5/1', pinned_at = now() WHERE id IN (148,191,1878,1879,1880,1882,1889,1890,1892,1893,1894,1895,1896,1897,1899,1900,1901,1902,11584,11588,11589,11599,11604,11608,11611,11614,11615,11616,11617,11618,11620,11621,11626,11627,11636,11638,11639,12300,12302,12304,12308,12309,12310,12315,12316,12319,12320,12327,12389);

-- FAR/I/A/5/2 (1 question)
UPDATE questions SET pin_ref = 'FAR/I/A/5/2', pinned_at = now() WHERE id IN (11632);

-- FAR/I/A/5/3 (2 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/5/3', pinned_at = now() WHERE id IN (11623,11637);

-- FAR/I/A/5/4 (35 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/5/4', pinned_at = now() WHERE id IN (188,189,1885,1886,1898,11580,11582,11610,11612,11613,11619,11622,11628,11629,11630,11631,11633,11635,12301,12303,12305,12306,12307,12311,12312,12313,12314,12318,12321,12322,12323,12324,12326,12328,12329);

-- FAR/I/A/6 (37 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/6', pinned_at = now() WHERE id IN (55,56,475,477,479,480,483,484,485,2193,2195,2196,2201,2202,2207,2209,2212,2216,11670,11672,11673,11675,11676,11677,11685,11688,11692,11704,12068,12273,12362,12363,12368,12369,12371,12376,12381);

-- FAR/I/A/6/1 (19 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/6/1', pinned_at = now() WHERE id IN (186,481,486,1867,2190,2191,2192,2197,2199,2203,2206,2215,2267,11682,11695,11697,12360,12372,12373);

-- FAR/I/A/7/1 (3 questions)
UPDATE questions SET pin_ref = 'FAR/I/A/7/1', pinned_at = now() WHERE id IN (1877,12274,12280);

-- FAR/I/A/7/2 (1 question)
UPDATE questions SET pin_ref = 'FAR/I/A/7/2', pinned_at = now() WHERE id IN (33);

-- FAR/I/B (15 questions)
UPDATE questions SET pin_ref = 'FAR/I/B', pinned_at = now() WHERE id IN (53,54,182,467,468,471,2276,2286,2290,2294,2295,11823,11828,11830,11845);

-- FAR/I/B/1/1 (2 questions)
UPDATE questions SET pin_ref = 'FAR/I/B/1/1', pinned_at = now() WHERE id IN (11833,11843);

-- FAR/I/B/1/2 (3 questions)
UPDATE questions SET pin_ref = 'FAR/I/B/1/2', pinned_at = now() WHERE id IN (472,2282,11832);

-- FAR/I/B/2/1 (1 question)
UPDATE questions SET pin_ref = 'FAR/I/B/2/1', pinned_at = now() WHERE id IN (11848);

-- FAR/I/B/2/2 (19 questions)
UPDATE questions SET pin_ref = 'FAR/I/B/2/2', pinned_at = now() WHERE id IN (470,2270,2272,2275,2278,2281,2289,2291,2293,2296,11825,11826,11827,11834,11836,11838,11840,11841,11846);

-- FAR/I/B/2/4 (4 questions)
UPDATE questions SET pin_ref = 'FAR/I/B/2/4', pinned_at = now() WHERE id IN (184,2284,11822,11844);

-- FAR/I/B/3/1 (1 question)
UPDATE questions SET pin_ref = 'FAR/I/B/3/1', pinned_at = now() WHERE id IN (11847);

-- FAR/I/C (152 questions)
UPDATE questions SET pin_ref = 'FAR/I/C', pinned_at = now() WHERE id IN (459,460,465,2298,2313,2316,2320,2324,2325,4769,4772,4774,4776,4777,4778,4780,4781,4783,4784,4785,5247,5249,5250,5255,5257,5259,5261,5262,5264,5267,5271,5272,5336,5337,5339,5340,5343,5344,5346,5347,5348,5349,5351,5352,5354,5355,5356,5359,5363,5364,5365,5367,5368,5369,5372,5376,5377,5378,5379,5380,5381,5382,5385,5386,5389,5390,5392,5393,5398,5399,5401,5402,5405,5406,5408,5409,5411,5413,5414,5417,5419,5421,5430,5433,5434,5442,5448,5451,5453,5454,5455,11371,11373,11374,11376,11378,11380,11381,11383,11384,11394,11395,11399,11402,11405,11406,11407,11408,11411,11412,11415,11423,11424,11427,11429,11430,11431,11432,11433,11434,11435,11437,11439,11441,11442,11443,11447,11453,11455,11760,11761,11762,11763,11764,11765,11766,11768,11769,11771,11772,11773,11774,11775,11777,11778,11779,11782,11785,11786,11787,11788,11789);

-- FAR/I/C/1/1 (10 questions)
UPDATE questions SET pin_ref = 'FAR/I/C/1/1', pinned_at = now() WHERE id IN (4766,4767,4770,4773,4779,5397,11767,11770,11780,11784);

-- FAR/I/C/2/1 (16 questions)
UPDATE questions SET pin_ref = 'FAR/I/C/2/1', pinned_at = now() WHERE id IN (179,4768,4775,4782,5270,5274,5353,5373,5425,11392,11397,11404,11420,11776,11781,11783);

-- FAR/I/D (26 questions)
UPDATE questions SET pin_ref = 'FAR/I/D', pinned_at = now() WHERE id IN (7646,7649,7651,7661,8349,8353,8365,9434,9964,10053,10131,10175,10229,10235,10279,10453,10546,12430,12445,12458,12472,12476,12526,12533,12546,12585);

-- FAR/I/D/0/3 (39 questions)
UPDATE questions SET pin_ref = 'FAR/I/D/0/3', pinned_at = now() WHERE id IN (195,1909,1915,1919,1920,7648,7652,7653,8222,8431,8442,8445,8446,8455,8457,8760,8775,9030,9040,9044,9875,10058,10059,10061,10063,10064,10066,10071,10108,10205,10210,10213,10277,10336,10458,10580,12241,12460,12468);

-- FAR/I/E (37 questions)
UPDATE questions SET pin_ref = 'FAR/I/E', pinned_at = now() WHERE id IN (1119,1121,1122,1123,1124,1125,2352,2357,2358,2359,2367,2368,2371,2372,11490,11492,11493,11494,11495,11497,11499,11501,11502,11504,11506,11507,11509,11510,11512,11515,11517,11920,11921,11924,11934,11936,11938);

-- FAR/I/E/0/1 (3 questions)
UPDATE questions SET pin_ref = 'FAR/I/E/0/1', pinned_at = now() WHERE id IN (1118,2364,11939);

-- FAR/I/E/0/3 (14 questions)
UPDATE questions SET pin_ref = 'FAR/I/E/0/3', pinned_at = now() WHERE id IN (2351,2360,2362,2366,2369,2373,11496,11500,11508,11911,11912,11915,11919,11926);

-- FAR/I/E/0/4 (24 questions)
UPDATE questions SET pin_ref = 'FAR/I/E/0/4', pinned_at = now() WHERE id IN (1117,1120,2353,2354,2355,2356,2363,2365,2370,2374,11491,11498,11503,11511,11514,11519,11910,11913,11916,11918,11922,11925,11931,11932);

-- FAR/I/F (37 questions)
UPDATE questions SET pin_ref = 'FAR/I/F', pinned_at = now() WHERE id IN (14980,14981,14984,14989,14994,14995,14996,14998,15005,15006,15007,15008,15009,15105,15109,15111,15113,15114,15121,15122,15124,15125,15128,15130,15131,15133,15197,15200,15202,15203,15206,15208,15210,15213,15214,15217,15222);

-- FAR/I/F/0/1 (15 questions)
UPDATE questions SET pin_ref = 'FAR/I/F/0/1', pinned_at = now() WHERE id IN (14987,14990,15000,15001,15002,15004,15106,15108,15116,15195,15201,15209,15216,15218,15223);

-- FAR/I/F/0/2 (4 questions)
UPDATE questions SET pin_ref = 'FAR/I/F/0/2', pinned_at = now() WHERE id IN (14993,15003,15126,15220);

-- FAR/I/F/0/3 (4 questions)
UPDATE questions SET pin_ref = 'FAR/I/F/0/3', pinned_at = now() WHERE id IN (14983,15107,15118,15120);

-- FAR/I/F/0/4 (5 questions)
UPDATE questions SET pin_ref = 'FAR/I/F/0/4', pinned_at = now() WHERE id IN (14997,15115,15194,15198,15211);

-- FAR/I/F/0/5 (19 questions)
UPDATE questions SET pin_ref = 'FAR/I/F/0/5', pinned_at = now() WHERE id IN (14982,14985,14991,14992,14999,15104,15110,15117,15119,15123,15127,15132,15199,15204,15207,15212,15215,15219,15221);

-- FAR/II/A (4 questions)
UPDATE questions SET pin_ref = 'FAR/II/A', pinned_at = now() WHERE id IN (1102,2260,2268,11974);

-- FAR/II/A/0/1 (4 questions)
UPDATE questions SET pin_ref = 'FAR/II/A/0/1', pinned_at = now() WHERE id IN (2264,11976,11984,11996);

-- FAR/II/A/0/2 (3 questions)
UPDATE questions SET pin_ref = 'FAR/II/A/0/2', pinned_at = now() WHERE id IN (2244,2246,11999);

-- FAR/II/A/0/3 (4 questions)
UPDATE questions SET pin_ref = 'FAR/II/A/0/3', pinned_at = now() WHERE id IN (2259,11973,11988,11994);

-- FAR/II/B (12 questions)
UPDATE questions SET pin_ref = 'FAR/II/B', pinned_at = now() WHERE id IN (1098,1103,1105,2256,2262,11978,11980,11981,11986,11991,11993,11998);

-- FAR/II/B/0/1 (13 questions)
UPDATE questions SET pin_ref = 'FAR/II/B/0/1', pinned_at = now() WHERE id IN (2248,2249,2258,2261,2263,2269,11970,11971,11972,11987,11992,11995,11997);

-- FAR/II/B/0/2 (11 questions)
UPDATE questions SET pin_ref = 'FAR/II/B/0/2', pinned_at = now() WHERE id IN (1101,1104,2250,2251,2252,2253,2254,2265,11982,11983,11990);

-- FAR/II/C (19 questions)
UPDATE questions SET pin_ref = 'FAR/II/C', pinned_at = now() WHERE id IN (38,393,396,397,399,1961,1967,1968,1969,1970,1972,1976,1982,1983,1984,1985,1986,12102,12108);

-- FAR/II/C/0/1 (17 questions)
UPDATE questions SET pin_ref = 'FAR/II/C/0/1', pinned_at = now() WHERE id IN (155,390,395,1958,1960,1963,1966,1973,1977,1980,1981,12091,12092,12096,12111,12112,12113);

-- FAR/II/C/0/2 (5 questions)
UPDATE questions SET pin_ref = 'FAR/II/C/0/2', pinned_at = now() WHERE id IN (156,1962,1978,12110,12119);

-- FAR/II/C/0/3 (2 questions)
UPDATE questions SET pin_ref = 'FAR/II/C/0/3', pinned_at = now() WHERE id IN (12099,12103);

-- FAR/II/C/0/4 (1 question)
UPDATE questions SET pin_ref = 'FAR/II/C/0/4', pinned_at = now() WHERE id IN (12100);

-- FAR/II/D (24 questions)
UPDATE questions SET pin_ref = 'FAR/II/D', pinned_at = now() WHERE id IN (39,159,406,407,408,1989,1990,1991,1992,1999,2000,2001,2011,12031,12032,12034,12037,12044,12045,12048,12051,12052,12053,12059);

-- FAR/II/D/0/1 (10 questions)
UPDATE questions SET pin_ref = 'FAR/II/D/0/1', pinned_at = now() WHERE id IN (158,401,1988,1993,1996,1998,2005,12030,12033,12040);

-- FAR/II/D/0/2 (7 questions)
UPDATE questions SET pin_ref = 'FAR/II/D/0/2', pinned_at = now() WHERE id IN (402,403,1997,2003,12036,12047,12050);

-- FAR/II/D/0/3 (3 questions)
UPDATE questions SET pin_ref = 'FAR/II/D/0/3', pinned_at = now() WHERE id IN (1994,2008,12043);

-- FAR/II/D/0/4 (1 question)
UPDATE questions SET pin_ref = 'FAR/II/D/0/4', pinned_at = now() WHERE id IN (405);

-- FAR/II/D/0/5 (3 questions)
UPDATE questions SET pin_ref = 'FAR/II/D/0/5', pinned_at = now() WHERE id IN (404,2014,12049);

-- FAR/II/E (3 questions)
UPDATE questions SET pin_ref = 'FAR/II/E', pinned_at = now() WHERE id IN (15173,15178,15189);

-- FAR/II/E/1/1 (4 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/1/1', pinned_at = now() WHERE id IN (15172,15184,15661,15671);

-- FAR/II/E/1/2 (5 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/1/2', pinned_at = now() WHERE id IN (15180,15192,15655,15667,15679);

-- FAR/II/E/1/3 (6 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/1/3', pinned_at = now() WHERE id IN (15179,15651,15664,15665,15670,15677);

-- FAR/II/E/1/4 (4 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/1/4', pinned_at = now() WHERE id IN (15175,15188,15663,15673);

-- FAR/II/E/2/1 (2 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/2/1', pinned_at = now() WHERE id IN (15659,15680);

-- FAR/II/E/2/2 (3 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/2/2', pinned_at = now() WHERE id IN (15169,15185,15660);

-- FAR/II/E/3/1 (5 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/3/1', pinned_at = now() WHERE id IN (15167,15653,15654,15662,15676);

-- FAR/II/E/3/2 (15 questions)
UPDATE questions SET pin_ref = 'FAR/II/E/3/2', pinned_at = now() WHERE id IN (15168,15171,15174,15176,15177,15181,15183,15187,15190,15191,15652,15657,15658,15675,15678);

-- FAR/II/F (30 questions)
UPDATE questions SET pin_ref = 'FAR/II/F', pinned_at = now() WHERE id IN (42,161,162,409,410,413,415,416,417,2020,2022,2023,2024,2029,2032,2033,2035,2038,2040,2041,2042,2045,12063,12067,12069,12074,12076,12080,12083,12380);

-- FAR/II/F/0/1 (8 questions)
UPDATE questions SET pin_ref = 'FAR/II/F/0/1', pinned_at = now() WHERE id IN (2019,2026,12062,12072,12073,12075,12082,12084);

-- FAR/II/F/0/2 (10 questions)
UPDATE questions SET pin_ref = 'FAR/II/F/0/2', pinned_at = now() WHERE id IN (41,2018,2027,2031,2036,2044,12064,12078,12087,12088);

-- FAR/II/F/0/3 (2 questions)
UPDATE questions SET pin_ref = 'FAR/II/F/0/3', pinned_at = now() WHERE id IN (12060,12081);

-- FAR/II/G (9 questions)
UPDATE questions SET pin_ref = 'FAR/II/G', pinned_at = now() WHERE id IN (4728,4730,4736,4742,4743,4744,12153,12156,12163);

-- FAR/II/G/0/1 (2 questions)
UPDATE questions SET pin_ref = 'FAR/II/G/0/1', pinned_at = now() WHERE id IN (4731,12175);

-- FAR/II/G/0/2 (24 questions)
UPDATE questions SET pin_ref = 'FAR/II/G/0/2', pinned_at = now() WHERE id IN (4726,4727,4729,4732,4733,4734,4738,4741,12150,12155,12158,12159,12162,12165,12166,12167,12168,12169,12170,12171,12172,12173,12176,12178);

-- FAR/II/G/0/3 (2 questions)
UPDATE questions SET pin_ref = 'FAR/II/G/0/3', pinned_at = now() WHERE id IN (4745,12157);

-- FAR/II/H (18 questions)
UPDATE questions SET pin_ref = 'FAR/II/H', pinned_at = now() WHERE id IN (430,432,435,2084,2091,2095,2100,11941,11948,11952,11954,11955,11957,11958,11961,11962,11965,11969);

-- FAR/II/H/1/1 (1 question)
UPDATE questions SET pin_ref = 'FAR/II/H/1/1', pinned_at = now() WHERE id IN (11942);

-- FAR/II/H/1/3 (17 questions)
UPDATE questions SET pin_ref = 'FAR/II/H/1/3', pinned_at = now() WHERE id IN (45,46,168,2082,2083,2086,2090,2093,2098,2099,2101,2104,2135,11951,11959,11967,11968);

-- FAR/II/H/1/4 (9 questions)
UPDATE questions SET pin_ref = 'FAR/II/H/1/4', pinned_at = now() WHERE id IN (2078,2079,2080,2085,2089,2096,2106,11940,11949);

-- FAR/II/I (13 questions)
UPDATE questions SET pin_ref = 'FAR/II/I', pinned_at = now() WHERE id IN (171,172,438,441,445,2137,12003,12011,12012,12013,12014,12024,12027);

-- FAR/II/I/0/1 (22 questions)
UPDATE questions SET pin_ref = 'FAR/II/I/0/1', pinned_at = now() WHERE id IN (47,48,170,444,2108,2111,2112,2113,2116,2117,2118,2123,2124,2125,2130,2131,2132,2136,12007,12009,12026,12029);

-- FAR/III/A (12 questions)
UPDATE questions SET pin_ref = 'FAR/III/A', pinned_at = now() WHERE id IN (4748,4751,4756,4757,4759,4760,4762,4764,11663,11666,12340,12358);

-- FAR/III/A/0/1 (26 questions)
UPDATE questions SET pin_ref = 'FAR/III/A/0/1', pinned_at = now() WHERE id IN (4750,4754,11640,11643,11644,11645,11647,11648,11649,11652,11655,11657,11658,11664,11665,11667,11668,12332,12334,12335,12338,12339,12348,12351,12353,12354);

-- FAR/III/A/0/2 (14 questions)
UPDATE questions SET pin_ref = 'FAR/III/A/0/2', pinned_at = now() WHERE id IN (4761,4765,11641,11646,11650,11651,11653,11654,11656,11659,12337,12341,12346,12355);

-- FAR/III/B (7 questions)
UPDATE questions SET pin_ref = 'FAR/III/B', pinned_at = now() WHERE id IN (192,1137,1144,2139,2144,2145,2154);

-- FAR/III/B/0/1 (13 questions)
UPDATE questions SET pin_ref = 'FAR/III/B/0/1', pinned_at = now() WHERE id IN (1136,1138,1139,1143,2138,2141,2143,2148,2151,2156,11706,11709,11728);

-- FAR/III/B/0/2 (16 questions)
UPDATE questions SET pin_ref = 'FAR/III/B/0/2', pinned_at = now() WHERE id IN (1141,2146,2149,2150,2152,2155,2158,2159,11700,11702,11705,11711,11713,11720,11721,11722);

-- FAR/III/B/0/3 (14 questions)
UPDATE questions SET pin_ref = 'FAR/III/B/0/3', pinned_at = now() WHERE id IN (193,1140,1142,1145,2140,2142,2147,11708,11710,11712,11714,11719,11724,11726);

-- FAR/III/C/0/1 (6 questions)
UPDATE questions SET pin_ref = 'FAR/III/C/0/1', pinned_at = now() WHERE id IN (152,153,389,1927,1940,1945);

-- FAR/III/C/0/4 (44 questions)
UPDATE questions SET pin_ref = 'FAR/III/C/0/4', pinned_at = now() WHERE id IN (34,35,36,380,381,382,383,385,386,388,1925,1926,1928,1929,1930,1931,1932,1936,1937,1938,1941,1942,1944,1946,1947,1948,1950,1951,1952,1953,1956,12181,12183,12184,12185,12188,12192,12193,12194,12195,12199,12200,12202,12203);

-- FAR/III/C/0/5 (3 questions)
UPDATE questions SET pin_ref = 'FAR/III/C/0/5', pinned_at = now() WHERE id IN (1943,1954,12205);

-- FAR/III/D (23 questions)
UPDATE questions SET pin_ref = 'FAR/III/D', pinned_at = now() WHERE id IN (173,176,453,454,455,2160,2170,2172,2178,2179,2180,2181,2183,2185,2188,11791,11802,11803,11804,11808,11809,11810,11815);

-- FAR/III/D/0/1 (6 questions)
UPDATE questions SET pin_ref = 'FAR/III/D/0/1', pinned_at = now() WHERE id IN (175,447,456,2173,2174,11807);

-- FAR/III/D/0/2 (4 questions)
UPDATE questions SET pin_ref = 'FAR/III/D/0/2', pinned_at = now() WHERE id IN (449,2164,2165,2177);

-- FAR/III/D/0/3 (3 questions)
UPDATE questions SET pin_ref = 'FAR/III/D/0/3', pinned_at = now() WHERE id IN (2162,2169,2182);

-- FAR/III/D/0/4 (22 questions)
UPDATE questions SET pin_ref = 'FAR/III/D/0/4', pinned_at = now() WHERE id IN (49,2163,2166,2168,2175,2176,2184,2186,11790,11792,11793,11795,11797,11798,11799,11801,11805,11811,11812,11813,11814,11817);

-- FAR/III/E (35 questions)
UPDATE questions SET pin_ref = 'FAR/III/E', pinned_at = now() WHERE id IN (196,1147,1153,1154,1281,1282,1283,2220,2221,2222,2225,2226,2228,2229,2230,2233,2235,2239,11730,11733,11734,11737,11738,11739,11741,11742,11745,11747,11748,11749,11750,11755,11756,11757,11758);

-- FAR/III/E/0/1 (8 questions)
UPDATE questions SET pin_ref = 'FAR/III/E/0/1', pinned_at = now() WHERE id IN (1149,1152,2227,2234,11731,11735,11740,11752);

-- FAR/III/E/0/2 (13 questions)
UPDATE questions SET pin_ref = 'FAR/III/E/0/2', pinned_at = now() WHERE id IN (197,1146,1155,2223,2224,2231,2236,2237,2238,2241,11743,11744,11753);

-- FAR/III/F (8 questions)
UPDATE questions SET pin_ref = 'FAR/III/F', pinned_at = now() WHERE id IN (420,427,2059,2064,2067,2069,2070,12135);

-- FAR/III/F/0/1 (4 questions)
UPDATE questions SET pin_ref = 'FAR/III/F/0/1', pinned_at = now() WHERE id IN (2052,2073,12121,12142);

-- FAR/III/F/0/2 (5 questions)
UPDATE questions SET pin_ref = 'FAR/III/F/0/2', pinned_at = now() WHERE id IN (2046,2053,2061,12144,12148);

-- FAR/III/F/0/3 (10 questions)
UPDATE questions SET pin_ref = 'FAR/III/F/0/3', pinned_at = now() WHERE id IN (57,2047,2060,2063,2065,2071,12126,12127,12147,12149);

-- FAR/III/F/0/4 (8 questions)
UPDATE questions SET pin_ref = 'FAR/III/F/0/4', pinned_at = now() WHERE id IN (44,163,2048,2049,2057,2068,2076,12123);

-- FAR/III/G/0/1 (7 questions)
UPDATE questions SET pin_ref = 'FAR/III/G/0/1', pinned_at = now() WHERE id IN (15138,15139,15141,15152,15154,15155,15162);

-- FAR/III/G/0/2 (9 questions)
UPDATE questions SET pin_ref = 'FAR/III/G/0/2', pinned_at = now() WHERE id IN (15134,15137,15140,15143,15146,15149,15150,15153,15160);

-- FAR/III/G/0/3 (13 questions)
UPDATE questions SET pin_ref = 'FAR/III/G/0/3', pinned_at = now() WHERE id IN (15135,15136,15142,15144,15145,15147,15148,15151,15156,15157,15158,15159,15163);

-- Sanity check: matched rows should equal 1414
-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = 'far');

COMMIT;
