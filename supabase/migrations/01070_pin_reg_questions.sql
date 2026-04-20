-- Phase 1E: Pin REG questions to classifier-suggested pin_ref
-- Based on docs/classify-reg.json (2026-04-20T00:44:14.967Z)
-- Total: 1397 questions | Matched: 592 (42.4%) | Homeless: 805
-- Unique pin_refs: 64
-- Homeless questions remain at pin_ref = NULL (schema default)

BEGIN;

-- REG/I/A/1/1 (23 questions)
UPDATE questions SET pin_ref = 'REG/I/A/1/1', pinned_at = now() WHERE id IN (200,251,253,487,2375,2376,2377,2378,2379,2380,2386,2390,2395,2397,2400,2405,2407,2409,2410,2412,2413,13010,13016);

-- REG/I/A/1/2 (46 questions)
UPDATE questions SET pin_ref = 'REG/I/A/1/2', pinned_at = now() WHERE id IN (61,62,198,199,250,252,489,2381,2382,2383,2384,2385,2387,2388,2389,2391,2392,2393,2394,2396,2398,2399,2401,2402,2408,2411,2414,2415,2416,2417,2418,2419,2420,2422,2423,2425,2426,13006,13007,13008,13009,13012,13013,13014,13015,13017);

-- REG/I/A/2/2 (3 questions)
UPDATE questions SET pin_ref = 'REG/I/A/2/2', pinned_at = now() WHERE id IN (490,13005,13011);

-- REG/I/A/2/3 (3 questions)
UPDATE questions SET pin_ref = 'REG/I/A/2/3', pinned_at = now() WHERE id IN (493,13004,13019);

-- REG/I/C/1/1 (21 questions)
UPDATE questions SET pin_ref = 'REG/I/C/1/1', pinned_at = now() WHERE id IN (242,243,1156,1157,1159,1162,2431,2432,2438,2442,2446,12695,12699,12701,12704,12712,12715,12852,12853,12860,12864);

-- REG/I/C/1/2 (9 questions)
UPDATE questions SET pin_ref = 'REG/I/C/1/2', pinned_at = now() WHERE id IN (1161,1165,2433,12696,12710,12850,12854,12858,12865);

-- REG/I/C/3/1 (5 questions)
UPDATE questions SET pin_ref = 'REG/I/C/3/1', pinned_at = now() WHERE id IN (245,1160,2444,12708,12711);

-- REG/I/C/3/2 (21 questions)
UPDATE questions SET pin_ref = 'REG/I/C/3/2', pinned_at = now() WHERE id IN (244,1158,1163,2434,2435,2436,2437,2440,2443,2448,2449,12694,12702,12706,12709,12714,12722,12851,12856,12857,12862);

-- REG/I/D/1/1 (1 question)
UPDATE questions SET pin_ref = 'REG/I/D/1/1', pinned_at = now() WHERE id IN (2876);

-- REG/I/D/1/2 (4 questions)
UPDATE questions SET pin_ref = 'REG/I/D/1/2', pinned_at = now() WHERE id IN (2868,2869,2871,2875);

-- REG/I/D/2/1 (1 question)
UPDATE questions SET pin_ref = 'REG/I/D/2/1', pinned_at = now() WHERE id IN (2866);

-- REG/I/D/2/2 (6 questions)
UPDATE questions SET pin_ref = 'REG/I/D/2/2', pinned_at = now() WHERE id IN (1173,1175,2872,2874,13789,13794);

-- REG/II/A/1/1 (8 questions)
UPDATE questions SET pin_ref = 'REG/II/A/1/1', pinned_at = now() WHERE id IN (66,205,2481,2482,2483,2484,2505,11167);

-- REG/II/A/1/2 (1 question)
UPDATE questions SET pin_ref = 'REG/II/A/1/2', pinned_at = now() WHERE id IN (2480);

-- REG/II/A/2/1 (3 questions)
UPDATE questions SET pin_ref = 'REG/II/A/2/1', pinned_at = now() WHERE id IN (206,2497,11178);

-- REG/II/A/2/2 (14 questions)
UPDATE questions SET pin_ref = 'REG/II/A/2/2', pinned_at = now() WHERE id IN (67,207,2485,2486,2487,2488,2489,2490,2491,2492,2498,2502,2504,11184);

-- REG/II/B/1/1 (10 questions)
UPDATE questions SET pin_ref = 'REG/II/B/1/1', pinned_at = now() WHERE id IN (63,201,2450,2452,2455,2456,2457,2466,11197,11207);

-- REG/II/B/1/2 (11 questions)
UPDATE questions SET pin_ref = 'REG/II/B/1/2', pinned_at = now() WHERE id IN (64,65,203,204,2464,2465,2471,2472,11193,11198,11200);

-- REG/II/B/1/3 (2 questions)
UPDATE questions SET pin_ref = 'REG/II/B/1/3', pinned_at = now() WHERE id IN (11199,11203);

-- REG/II/B/2/1 (3 questions)
UPDATE questions SET pin_ref = 'REG/II/B/2/1', pinned_at = now() WHERE id IN (495,497,11208);

-- REG/II/B/2/2 (1 question)
UPDATE questions SET pin_ref = 'REG/II/B/2/2', pinned_at = now() WHERE id IN (11213);

-- REG/II/B/2/3 (4 questions)
UPDATE questions SET pin_ref = 'REG/II/B/2/3', pinned_at = now() WHERE id IN (11202,11204,11209,11217);

-- REG/II/B/2/4 (4 questions)
UPDATE questions SET pin_ref = 'REG/II/B/2/4', pinned_at = now() WHERE id IN (2462,2475,11192,11212);

-- REG/II/B/3/1 (2 questions)
UPDATE questions SET pin_ref = 'REG/II/B/3/1', pinned_at = now() WHERE id IN (2473,11211);

-- REG/II/B/3/2 (2 questions)
UPDATE questions SET pin_ref = 'REG/II/B/3/2', pinned_at = now() WHERE id IN (2460,2477);

-- REG/II/B/3/3 (11 questions)
UPDATE questions SET pin_ref = 'REG/II/B/3/3', pinned_at = now() WHERE id IN (202,496,498,2469,2470,11190,11194,11201,11205,11214,11219);

-- REG/II/C/0/1 (2 questions)
UPDATE questions SET pin_ref = 'REG/II/C/0/1', pinned_at = now() WHERE id IN (2892,11279);

-- REG/II/C/0/2 (17 questions)
UPDATE questions SET pin_ref = 'REG/II/C/0/2', pinned_at = now() WHERE id IN (1176,1178,1179,1181,2885,2886,2887,2888,11250,11251,11255,11258,11263,11265,11267,11268,11276);

-- REG/II/C/0/3 (11 questions)
UPDATE questions SET pin_ref = 'REG/II/C/0/3', pinned_at = now() WHERE id IN (1177,1180,1182,1183,1185,2883,2884,2896,2901,11259,11264);

-- REG/II/C/0/4 (29 questions)
UPDATE questions SET pin_ref = 'REG/II/C/0/4', pinned_at = now() WHERE id IN (1184,2889,2890,2891,2893,2895,2897,2898,2899,2900,2904,11252,11253,11254,11256,11257,11260,11261,11262,11266,11269,11270,11271,11272,11273,11274,11275,11277,11278);

-- REG/II/D/0/5 (1 question)
UPDATE questions SET pin_ref = 'REG/II/D/0/5', pinned_at = now() WHERE id IN (4796);

-- REG/II/E/1/1 (5 questions)
UPDATE questions SET pin_ref = 'REG/II/E/1/1', pinned_at = now() WHERE id IN (2516,11220,11223,11238,11239);

-- REG/II/E/1/2 (22 questions)
UPDATE questions SET pin_ref = 'REG/II/E/1/2', pinned_at = now() WHERE id IN (69,208,210,2506,2507,2510,2512,2514,2515,2520,2521,2522,2524,11222,11224,11225,11230,11235,11236,11243,11247,11249);

-- REG/II/E/2/1 (2 questions)
UPDATE questions SET pin_ref = 'REG/II/E/2/1', pinned_at = now() WHERE id IN (211,2530);

-- REG/II/E/2/2 (11 questions)
UPDATE questions SET pin_ref = 'REG/II/E/2/2', pinned_at = now() WHERE id IN (2509,2511,2517,2518,2519,2526,11227,11228,11233,11246,11248);

-- REG/III/A/0/1 (7 questions)
UPDATE questions SET pin_ref = 'REG/III/A/0/1', pinned_at = now() WHERE id IN (212,2532,2543,2549,2550,2556,2563);

-- REG/III/A/0/2 (6 questions)
UPDATE questions SET pin_ref = 'REG/III/A/0/2', pinned_at = now() WHERE id IN (213,599,2544,2546,2547,2557);

-- REG/III/A/0/3 (17 questions)
UPDATE questions SET pin_ref = 'REG/III/A/0/3', pinned_at = now() WHERE id IN (71,2536,2537,2539,2540,2541,2542,2545,2548,2551,2553,2555,2558,2559,2561,2562,2564);

-- REG/III/A/0/5 (1 question)
UPDATE questions SET pin_ref = 'REG/III/A/0/5', pinned_at = now() WHERE id IN (2554);

-- REG/IV/A/0/1 (18 questions)
UPDATE questions SET pin_ref = 'REG/IV/A/0/1', pinned_at = now() WHERE id IN (543,2616,2617,2622,2623,2624,2626,2628,2629,2631,2633,2635,2638,2639,2640,2645,2649,11051);

-- REG/IV/A/0/2 (1 question)
UPDATE questions SET pin_ref = 'REG/IV/A/0/2', pinned_at = now() WHERE id IN (11042);

-- REG/IV/A/0/3 (11 questions)
UPDATE questions SET pin_ref = 'REG/IV/A/0/3', pinned_at = now() WHERE id IN (76,2618,2625,2630,2636,2644,2648,11041,11046,11060,11062);

-- REG/IV/C/0/1 (18 questions)
UPDATE questions SET pin_ref = 'REG/IV/C/0/1', pinned_at = now() WHERE id IN (222,224,1287,1289,2652,2653,2654,2655,2656,2657,2668,2672,10986,10991,11000,11002,11003,11009);

-- REG/IV/C/0/2 (35 questions)
UPDATE questions SET pin_ref = 'REG/IV/C/0/2', pinned_at = now() WHERE id IN (223,225,2650,2651,2658,2659,2660,2661,2662,2663,2669,2670,2673,2675,2676,2677,10980,10981,10982,10983,10988,10989,10990,10992,10993,10994,10995,10996,10998,10999,11004,11005,11006,11007,11008);

-- REG/IV/C/0/3 (7 questions)
UPDATE questions SET pin_ref = 'REG/IV/C/0/3', pinned_at = now() WHERE id IN (226,2664,2665,2666,2667,2671,2674);

-- REG/IV/E/0/1 (10 questions)
UPDATE questions SET pin_ref = 'REG/IV/E/0/1', pinned_at = now() WHERE id IN (227,2723,2724,2725,2726,2727,2735,2749,2753,11035);

-- REG/IV/E/0/2 (4 questions)
UPDATE questions SET pin_ref = 'REG/IV/E/0/2', pinned_at = now() WHERE id IN (1263,2754,11030,11039);

-- REG/IV/E/0/3 (7 questions)
UPDATE questions SET pin_ref = 'REG/IV/E/0/3', pinned_at = now() WHERE id IN (1262,1265,2743,11020,11021,11028,11031);

-- REG/IV/F/0/1 (5 questions)
UPDATE questions SET pin_ref = 'REG/IV/F/0/1', pinned_at = now() WHERE id IN (10939,10953,11364,13173,13175);

-- REG/IV/F/0/2 (9 questions)
UPDATE questions SET pin_ref = 'REG/IV/F/0/2', pinned_at = now() WHERE id IN (10936,10948,10954,10964,10968,10970,10978,11311,11358);

-- REG/IV/F/0/3 (3 questions)
UPDATE questions SET pin_ref = 'REG/IV/F/0/3', pinned_at = now() WHERE id IN (2711,2717,2722);

-- REG/V/B/1/1 (21 questions)
UPDATE questions SET pin_ref = 'REG/V/B/1/1', pinned_at = now() WHERE id IN (83,2782,2787,2795,2807,10713,10715,10719,10724,10725,10734,10738,10809,10811,10818,10827,11075,11078,11082,11084,11093);

-- REG/V/B/1/2 (3 questions)
UPDATE questions SET pin_ref = 'REG/V/B/1/2', pinned_at = now() WHERE id IN (2796,2800,2802);

-- REG/V/C/1/1 (4 questions)
UPDATE questions SET pin_ref = 'REG/V/C/1/1', pinned_at = now() WHERE id IN (10796,11132,15934,15946);

-- REG/V/C/1/2 (13 questions)
UPDATE questions SET pin_ref = 'REG/V/C/1/2', pinned_at = now() WHERE id IN (2812,10771,10778,10783,10797,10798,10861,15927,15932,15939,15940,15944,15945);

-- REG/V/C/1/3 (7 questions)
UPDATE questions SET pin_ref = 'REG/V/C/1/3', pinned_at = now() WHERE id IN (85,15928,15930,15933,15938,15942,15948);

-- REG/V/C/2/1 (9 questions)
UPDATE questions SET pin_ref = 'REG/V/C/2/1', pinned_at = now() WHERE id IN (86,2829,2835,10776,11140,11146,15931,15936,15949);

-- REG/V/C/2/2 (6 questions)
UPDATE questions SET pin_ref = 'REG/V/C/2/2', pinned_at = now() WHERE id IN (2832,10794,11143,15943,15951,15952);

-- REG/V/C/2/3 (1 question)
UPDATE questions SET pin_ref = 'REG/V/C/2/3', pinned_at = now() WHERE id IN (11156);

-- REG/V/C/3/1 (20 questions)
UPDATE questions SET pin_ref = 'REG/V/C/3/1', pinned_at = now() WHERE id IN (2818,2822,2823,2824,2834,10772,10777,10787,10790,10885,10887,11136,11137,11152,15935,15941,15947,15950,15954,15955);

-- REG/V/C/3/2 (1 question)
UPDATE questions SET pin_ref = 'REG/V/C/3/2', pinned_at = now() WHERE id IN (11135);

-- REG/V/D/1/1 (5 questions)
UPDATE questions SET pin_ref = 'REG/V/D/1/1', pinned_at = now() WHERE id IN (2847,10752,10754,10850,11125);

-- REG/V/D/2/1 (14 questions)
UPDATE questions SET pin_ref = 'REG/V/D/2/1', pinned_at = now() WHERE id IN (89,2836,2837,2840,2844,2845,2860,10746,10755,10765,10841,10859,11106,11110);

-- REG/V/F/0/1 (10 questions)
UPDATE questions SET pin_ref = 'REG/V/F/0/1', pinned_at = now() WHERE id IN (7720,8373,8385,8399,8461,8485,8581,8582,9024,9603);

-- Sanity check: matched rows should equal 592
-- SELECT count(*) FROM questions WHERE pin_ref IS NOT NULL AND section_id = (SELECT id FROM sections WHERE code = 'reg');

COMMIT;
