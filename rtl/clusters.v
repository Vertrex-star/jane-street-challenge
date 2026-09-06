
// Cluster 1: 147 instances
module cluster_1 (
    input  n__20,
    input  n__319,
    input  n__322,
    input  n__377,
    input  n__378,
    input  n__380,
    input  n__436,
    input  n__832,
    output n__1034,
    output n__736,
    output n__857,
    output n__985
);

    wire n__1,
         n__1000,
         n__1006,
         n__101,
         n__102,
         n__103,
         n__1038,
         n__104,
         n__1055,
         n__109,
         n__114,
         n__1169,
         n__123,
         n__128,
         n__138,
         n__14,
         n__145,
         n__15,
         n__151,
         n__156,
         n__16,
         n__163,
         n__165,
         n__17,
         n__172,
         n__176,
         n__179,
         n__198,
         n__200,
         n__201,
         n__21,
         n__22,
         n__23,
         n__239,
         n__243,
         n__25,
         n__267,
         n__27,
         n__270,
         n__28,
         n__283,
         n__290,
         n__292,
         n__314,
         n__323,
         n__325,
         n__347,
         n__348,
         n__357,
         n__360,
         n__364,
         n__371,
         n__379,
         n__38,
         n__382,
         n__386,
         n__39,
         n__392,
         n__394,
         n__40,
         n__406,
         n__414,
         n__42,
         n__43,
         n__44,
         n__440,
         n__445,
         n__45,
         n__454,
         n__456,
         n__457,
         n__462,
         n__466,
         n__487,
         n__492,
         n__50,
         n__51,
         n__510,
         n__515,
         n__523,
         n__53,
         n__531,
         n__536,
         n__538,
         n__549,
         n__550,
         n__558,
         n__560,
         n__565,
         n__57,
         n__574,
         n__579,
         n__58,
         n__59,
         n__60,
         n__606,
         n__624,
         n__627,
         n__631,
         n__639,
         n__646,
         n__652,
         n__653,
         n__659,
         n__663,
         n__675,
         n__677,
         n__694,
         n__695,
         n__701,
         n__704,
         n__705,
         n__735,
         n__76,
         n__772,
         n__773,
         n__775,
         n__777,
         n__779,
         n__783,
         n__80,
         n__810,
         n__811,
         n__823,
         n__828,
         n__83,
         n__84,
         n__85,
         n__869,
         n__870,
         n__872,
         n__874,
         n__878,
         n__905,
         n__91,
         n__92,
         n__94,
         n__944,
         n__945,
         n__953,
         n__97,
         n__98,
         n__987;

    sky130_fd_sc_hd__o21a_2 inst_1 (
        .A1(n__23),
        .A2(n__1),
        .B1(n__16),
        .X(n__104)
    );

    sky130_fd_sc_hd__and2_2 inst_7 (
        .A(n__103),
        .B(n__21),
        .X(n__1)
    );

    sky130_fd_sc_hd__o21ai_2 inst_162 (
        .A1(n__23),
        .A2(n__27),
        .B1(n__39),
        .Y(n__201)
    );

    sky130_fd_sc_hd__o21ai_2 inst_165 (
        .A1(n__536),
        .A2(n__663),
        .B1(n__243),
        .Y(n__1055)
    );

    sky130_fd_sc_hd__o32a_2 inst_177 (
        .A1(n__39),
        .A2(n__492),
        .A3(n__44),
        .B1(n__414),
        .B2(n__347),
        .X(n__783)
    );

    sky130_fd_sc_hd__o22ai_2 inst_264 (
        .A1(n__377),
        .A2(n__523),
        .B1(n__677),
        .B2(n__579),
        .Y(n__646)
    );

    sky130_fd_sc_hd__a211o_2 inst_266 (
        .A1(n__39),
        .A2(n__45),
        .B1(n__549),
        .C1(n__102),
        .X(n__675)
    );

    sky130_fd_sc_hd__a211o_2 inst_268 (
        .A1(n__536),
        .A2(n__953),
        .B1(n__200),
        .C1(n__823),
        .X(n__905)
    );

    sky130_fd_sc_hd__a21o_2 inst_284 (
        .A1(n__606),
        .A2(n__574),
        .B1(n__694),
        .X(n__773)
    );

    sky130_fd_sc_hd__a21o_2 inst_285 (
        .A1(n__536),
        .A2(n__735),
        .B1(n__777),
        .X(n__779)
    );

    sky130_fd_sc_hd__a21o_2 inst_286 (
        .A1(n__462),
        .A2(n__558),
        .B1(n__1006),
        .X(n__560)
    );

    sky130_fd_sc_hd__nand2b_2 inst_338 (
        .A_N(n__606),
        .B(n__639),
        .Y(n__872)
    );

    sky130_fd_sc_hd__o31ai_2 inst_340 (
        .A1(n__25),
        .A2(n__138),
        .A3(n__27),
        .B1(n__39),
        .Y(n__347)
    );

    sky130_fd_sc_hd__and2b_2 inst_389 (
        .A_N(n__382),
        .B(n__646),
        .X(n__531)
    );

    sky130_fd_sc_hd__a32o_2 inst_400 (
        .A1(n__20),
        .A2(n__51),
        .A3(n__314),
        .B1(n__57),
        .B2(n__151),
        .X(n__270)
    );

    sky130_fd_sc_hd__xnor2_2 inst_406 (
        .A(n__377),
        .B(n__378),
        .Y(n__653)
    );

    sky130_fd_sc_hd__xnor2_2 inst_411 (
        .A(n__57),
        .B(n__151),
        .Y(n__53)
    );

    sky130_fd_sc_hd__a32o_2 inst_412 (
        .A1(n__39),
        .A2(n__43),
        .A3(n__16),
        .B1(n__28),
        .B2(n__172),
        .X(n__953)
    );

    sky130_fd_sc_hd__xnor2_2 inst_413 (
        .A(n__772),
        .B(n__773),
        .Y(n__823)
    );

    sky130_fd_sc_hd__xnor2_2 inst_416 (
        .A(n__606),
        .B(n__639),
        .Y(n__828)
    );

    sky130_fd_sc_hd__xnor2_2 inst_417 (
        .A(n__270),
        .B(n__466),
        .Y(n__25)
    );

    sky130_fd_sc_hd__a211o_2 inst_418 (
        .A1(n__25),
        .A2(n__91),
        .B1(n__198),
        .C1(n__39),
        .X(n__701)
    );

    sky130_fd_sc_hd__xnor2_2 inst_420 (
        .A(n__22),
        .B(n__314),
        .Y(n__57)
    );

    sky130_fd_sc_hd__a22o_2 inst_421 (
        .A1(n__15),
        .A2(n__40),
        .B1(n__17),
        .B2(n__25),
        .X(n__348)
    );

    sky130_fd_sc_hd__xnor2_2 inst_427 (
        .A(n__832),
        .B(n__828),
        .Y(n__659)
    );

    sky130_fd_sc_hd__xnor2_2 inst_428 (
        .A(n__560),
        .B(n__531),
        .Y(n__102)
    );

    sky130_fd_sc_hd__xnor2_2 inst_433 (
        .A(n__659),
        .B(n__565),
        .Y(n__466)
    );

    sky130_fd_sc_hd__a21bo_2 inst_445 (
        .A1(n__39),
        .A2(n__360),
        .B1_N(n__701),
        .X(n__735)
    );

    sky130_fd_sc_hd__or3_2 inst_453 (
        .A(n__39),
        .B(n__364),
        .C(n__114),
        .X(n__440)
    );

    sky130_fd_sc_hd__or3_2 inst_457 (
        .A(n__42),
        .B(n__23),
        .C(n__17),
        .X(n__163)
    );

    sky130_fd_sc_hd__or3_2 inst_458 (
        .A(n__878),
        .B(n__574),
        .C(n__695),
        .X(n__874)
    );

    sky130_fd_sc_hd__or3_2 inst_459 (
        .A(n__42),
        .B(n__53),
        .C(n__14),
        .X(n__60)
    );

    sky130_fd_sc_hd__and2b_2 inst_460 (
        .A_N(n__151),
        .B(n__267),
        .X(n__38)
    );

    sky130_fd_sc_hd__or3_2 inst_461 (
        .A(n__42),
        .B(n__14),
        .C(n__138),
        .X(n__283)
    );

    sky130_fd_sc_hd__or3_2 inst_463 (
        .A(n__823),
        .B(n__515),
        .C(n__631),
        .X(n__945)
    );

    sky130_fd_sc_hd__xor2_2 inst_464 (
        .A(n__322),
        .B(n__377),
        .X(n__51)
    );

    sky130_fd_sc_hd__and4bb_2 inst_465 (
        .A_N(n__322),
        .B_N(n__377),
        .C(n__436),
        .D(n__378),
        .X(n__382)
    );

    sky130_fd_sc_hd__xor2_2 inst_467 (
        .A(n__772),
        .B(n__773),
        .X(n__704)
    );

    sky130_fd_sc_hd__xor2_2 inst_468 (
        .A(n__380),
        .B(n__357),
        .X(n__314)
    );

    sky130_fd_sc_hd__xor2_2 inst_473 (
        .A(n__560),
        .B(n__531),
        .X(n__536)
    );

    sky130_fd_sc_hd__xor2_2 inst_474 (
        .A(n__462),
        .B(n__558),
        .X(n__39)
    );

    sky130_fd_sc_hd__xor2_2 inst_476 (
        .A(n__270),
        .B(n__466),
        .X(n__23)
    );

    sky130_fd_sc_hd__xor2_2 inst_477 (
        .A(n__378),
        .B(n__510),
        .X(n__639)
    );

    sky130_fd_sc_hd__xor2_2 inst_479 (
        .A(n__322),
        .B(n__436),
        .X(n__510)
    );

    sky130_fd_sc_hd__a31o_2 inst_489 (
        .A1(n__377),
        .A2(n__436),
        .A3(n__378),
        .B1(n__574),
        .X(n__579)
    );

    sky130_fd_sc_hd__o311a_2 inst_490 (
        .A1(n__371),
        .A2(n__39),
        .A3(n__492),
        .B1(n__102),
        .C1(n__394),
        .X(n__550)
    );

    sky130_fd_sc_hd__o2bb2a_2 inst_491 (
        .A1_N(n__380),
        .A2_N(n__357),
        .B1(n__445),
        .B2(n__436),
        .X(n__565)
    );

    sky130_fd_sc_hd__a31o_2 inst_506 (
        .A1(n__536),
        .A2(n__165),
        .A3(n__392),
        .B1(n__704),
        .X(n__944)
    );

    sky130_fd_sc_hd__a21oi_2 inst_515 (
        .A1(n__872),
        .A2(n__987),
        .B1(n__874),
        .Y(n__1006)
    );

    sky130_fd_sc_hd__a21oi_2 inst_520 (
        .A1(n__377),
        .A2(n__378),
        .B1(n__436),
        .Y(n__677)
    );

    sky130_fd_sc_hd__a21oi_2 inst_524 (
        .A1(n__560),
        .A2(n__646),
        .B1(n__382),
        .Y(n__772)
    );

    sky130_fd_sc_hd__a21oi_2 inst_526 (
        .A1(n__457),
        .A2(n__156),
        .B1(n__102),
        .Y(n__631)
    );

    sky130_fd_sc_hd__a21oi_2 inst_530 (
        .A1(n__377),
        .A2(n__510),
        .B1(n__325),
        .Y(n__357)
    );

    sky130_fd_sc_hd__a21oi_2 inst_531 (
        .A1(n__23),
        .A2(n__179),
        .B1(n__39),
        .Y(n__172)
    );

    sky130_fd_sc_hd__a21oi_2 inst_532 (
        .A1(n__378),
        .A2(n__606),
        .B1(n__574),
        .Y(n__694)
    );

    sky130_fd_sc_hd__a21oi_2 inst_533 (
        .A1(n__536),
        .A2(n__406),
        .B1(n__39),
        .Y(n__811)
    );

    sky130_fd_sc_hd__o211a_2 inst_534 (
        .A1(n__704),
        .A2(n__1055),
        .B1(n__870),
        .C1(n__775),
        .X(n__985)
    );

    sky130_fd_sc_hd__o211a_2 inst_539 (
        .A1(n__550),
        .A2(n__944),
        .B1(n__775),
        .C1(n__945),
        .X(n__736)
    );

    sky130_fd_sc_hd__o211a_2 inst_540 (
        .A1(n__704),
        .A2(n__869),
        .B1(n__905),
        .C1(n__775),
        .X(n__1034)
    );

    sky130_fd_sc_hd__o211a_2 inst_541 (
        .A1(n__704),
        .A2(n__779),
        .B1(n__705),
        .C1(n__775),
        .X(n__857)
    );

    sky130_fd_sc_hd__o211a_2 inst_544 (
        .A1(n__457),
        .A2(n__40),
        .B1(n__102),
        .C1(n__440),
        .X(n__515)
    );

    sky130_fd_sc_hd__o211a_2 inst_545 (
        .A1(n__322),
        .A2(n__377),
        .B1(n__436),
        .C1(n__378),
        .X(n__379)
    );

    sky130_fd_sc_hd__and3_2 inst_564 (
        .A(n__872),
        .B(n__987),
        .C(n__874),
        .X(n__1038)
    );

        sky130_fd_sc_hd__and3b_2 inst_567 (
        .A_N(n__101),
        .B(n__25),
        .C(n__21),
        .X(n__85)
    );

    sky130_fd_sc_hd__and3_2 inst_568 (
        .A(n__652),
        .B(n__523),
        .C(n__653),
        .X(n__695)
    );

    sky130_fd_sc_hd__and3_2 inst_573 (
        .A(n__102),
        .B(n__94),
        .C(n__1000),
        .X(n__777)
    );

    sky130_fd_sc_hd__mux2_1 inst_575 (
        .A0(n__60),
        .A1(n__283),
        .S(n__23),
        .X(n__386)
    );

    sky130_fd_sc_hd__o21ba_2 inst_576 (
        .A1(n__25),
        .A2(n__91),
        .B1_N(n__360),
        .X(n__406)
    );

    sky130_fd_sc_hd__mux2_1 inst_586 (
        .A0(n__627),
        .A1(n__348),
        .S(n__39),
        .X(n__624)
    );

    sky130_fd_sc_hd__o32a_2 inst_587 (
        .A1(n__39),
        .A2(n__492),
        .A3(n__76),
        .B1(n__347),
        .B2(n__176),
        .X(n__663)
    );

    sky130_fd_sc_hd__mux2_1 inst_593 (
        .A0(n__783),
        .A1(n__92),
        .S(n__536),
        .X(n__869)
    );

    sky130_fd_sc_hd__mux2_1 inst_596 (
        .A0(n__40),
        .A1(n__25),
        .S(n__50),
        .X(n__549)
    );

    sky130_fd_sc_hd__o21a_2 inst_1725 (
        .A1(n__42),
        .A2(n__17),
        .B1(n__23),
        .X(n__198)
    );

    sky130_fd_sc_hd__o221a_2 inst_1726 (
        .A1(n__138),
        .A2(n__201),
        .B1(n__104),
        .B2(n__39),
        .C1(n__102),
        .X(n__200)
    );

    sky130_fd_sc_hd__xor2_2 inst_1727 (
        .A(n__57),
        .B(n__151),
        .X(n__98)
    );

    sky130_fd_sc_hd__or3_2 inst_1728 (
        .A(n__39),
        .B(n__40),
        .C(n__84),
        .X(n__156)
    );

    sky130_fd_sc_hd__xnor2_2 inst_1729 (
        .A(n__20),
        .B(n__51),
        .Y(n__145)
    );

    sky130_fd_sc_hd__o21a_2 inst_1743 (
        .A1(n__23),
        .A2(n__101),
        .B1(n__45),
        .X(n__290)
    );

        // removed inv inst_1773 (absorbed)


    sky130_fd_sc_hd__and2_2 inst_1786 (
        .A(n__123),
        .B(n__38),
        .X(n__58)
    );

    sky130_fd_sc_hd__or4_2 inst_1787 (
        .A(n__39),
        .B(n__102),
        .C(n__283),
        .D(n__198),
        .X(n__243)
    );

    sky130_fd_sc_hd__and2_2 inst_1788 (
        .A(n__319),
        .B(n__322),
        .X(n__323)
    );

    sky130_fd_sc_hd__a221o_2 inst_2158 (
        .A1(n__39),
        .A2(n__487),
        .B1(n__810),
        .B2(n__811),
        .C1(n__823),
        .X(n__870)
    );

    sky130_fd_sc_hd__o21ai_2 inst_2211 (
        .A1(n__40),
        .A2(n__85),
        .B1(n__39),
        .Y(n__1000)
    );

    sky130_fd_sc_hd__a21bo_2 inst_2402 (
        .A1(n__53),
        .A2(n__59),
        .B1_N(n__172),
        .X(n__165)
    );

    sky130_fd_sc_hd__o31ai_2 inst_2406 (
        .A1(n__42),
        .A2(n__23),
        .A3(n__98),
        .B1(n__109),
        .Y(n__292)
    );

    sky130_fd_sc_hd__nand2b_2 inst_2407 (
        .A_N(n__58),
        .B(n__45),
        .Y(n__50)
    );

    sky130_fd_sc_hd__o21a_2 inst_2409 (
        .A1(n__42),
        .A2(n__43),
        .B1(n__59),
        .X(n__80)
    );

    sky130_fd_sc_hd__o211ai_2 inst_2436 (
        .A1(n__536),
        .A2(n__624),
        .B1(n__675),
        .C1(n__704),
        .Y(n__705)
    );

    sky130_fd_sc_hd__o22ai_2 inst_2449 (
        .A1(n__25),
        .A2(n__15),
        .B1(n__163),
        .B2(n__536),
        .Y(n__487)
    );

    sky130_fd_sc_hd__nand2_2 inst_2485 (
        .A(n__832),
        .B(n__828),
        .Y(n__987)
    );

    sky130_fd_sc_hd__nand2_2 inst_2493 (
        .A(n__57),
        .B(n__38),
        .Y(n__103)
    );

    sky130_fd_sc_hd__nand2_2 inst_2495 (
        .A(n__378),
        .B(n__510),
        .Y(n__523)
    );

    sky130_fd_sc_hd__nand2_2 inst_2496 (
        .A(n__57),
        .B(n__42),
        .Y(n__109)
    );

    sky130_fd_sc_hd__nand2_2 inst_2499 (
        .A(n__57),
        .B(n__101),
        .Y(n__91)
    );

    sky130_fd_sc_hd__nand2_2 inst_2500 (
        .A(n__377),
        .B(n__436),
        .Y(n__606)
    );

    sky130_fd_sc_hd__nand2_2 inst_2501 (
        .A(n__322),
        .B(n__436),
        .Y(n__652)
    );

    sky130_fd_sc_hd__nand2_2 inst_2503 (
        .A(n__39),
        .B(n__292),
        .Y(n__392)
    );

    sky130_fd_sc_hd__nand2_2 inst_2505 (
        .A(n__145),
        .B(n__97),
        .Y(n__267)
    );

    sky130_fd_sc_hd__nand2_2 inst_2506 (
        .A(n__319),
        .B(n__322),
        .Y(n__97)
    );

    sky130_fd_sc_hd__nand2_2 inst_2508 (
        .A(n__659),
        .B(n__565),
        .Y(n__456)
    );

    sky130_fd_sc_hd__nand2_2 inst_2509 (
        .A(n__53),
        .B(n__14),
        .Y(n__15)
    );

    sky130_fd_sc_hd__nand2_2 inst_2514 (
        .A(n__123),
        .B(n__53),
        .Y(n__21)
    );

    sky130_fd_sc_hd__nand2_2 inst_2516 (
        .A(n__322),
        .B(n__377),
        .Y(n__445)
    );

    sky130_fd_sc_hd__nand2_2 inst_2518 (
        .A(n__39),
        .B(n__43),
        .Y(n__457)
    );

    sky130_fd_sc_hd__nand2_2 inst_2520 (
        .A(n__39),
        .B(n__386),
        .Y(n__394)
    );

    sky130_fd_sc_hd__nand2_2 inst_2522 (
        .A(n__25),
        .B(n__15),
        .Y(n__43)
    );

    sky130_fd_sc_hd__nor2_2 inst_2524 (
        .A(n__53),
        .B(n__14),
        .Y(n__179)
    );

    sky130_fd_sc_hd__or2_2 inst_2525 (
        .A(n__98),
        .B(n__14),
        .X(n__17)
    );

    sky130_fd_sc_hd__nand2_2 inst_2526 (
        .A(n__20),
        .B(n__51),
        .Y(n__22)
    );

    sky130_fd_sc_hd__a311o_2 inst_2528 (
        .A1(n__57),
        .A2(n__39),
        .A3(n__38),
        .B1(n__40),
        .C1(n__85),
        .X(n__94)
    );

    sky130_fd_sc_hd__o22a_2 inst_2529 (
        .A1(n__23),
        .A2(n__50),
        .B1(n__16),
        .B2(n__83),
        .X(n__28)
    );

    sky130_fd_sc_hd__inv_2 inst_2530 (
        .A(n__17),
        .Y(n__27)
    );

    sky130_fd_sc_hd__mux2_1 inst_2531 (
        .A0(n__80),
        .A1(n__128),
        .S(n__39),
        .X(n__92)
    );

    sky130_fd_sc_hd__and3_2 inst_2532 (
        .A(n__25),
        .B(n__53),
        .C(n__58),
        .X(n__492)
    );

    sky130_fd_sc_hd__o211a_2 inst_2533 (
        .A1(n__42),
        .A2(n__98),
        .B1(n__25),
        .C1(n__109),
        .X(n__84)
    );

    sky130_fd_sc_hd__a21oi_2 inst_2534 (
        .A1(n__25),
        .A2(n__58),
        .B1(n__60),
        .Y(n__76)
    );

    sky130_fd_sc_hd__a31o_2 inst_2535 (
        .A1(n__23),
        .A2(n__103),
        .A3(n__21),
        .B1(n__58),
        .X(n__128)
    );

    sky130_fd_sc_hd__or2_2 inst_2537 (
        .A(n__25),
        .B(n__45),
        .X(n__16)
    );

    sky130_fd_sc_hd__or2_2 inst_2540 (
        .A(n__536),
        .B(n__364),
        .X(n__810)
    );

    sky130_fd_sc_hd__or2_2 inst_2541 (
        .A(n__323),
        .B(n__239),
        .X(n__123)
    );

    sky130_fd_sc_hd__or2_2 inst_2543 (
        .A(n__25),
        .B(n__14),
        .X(n__59)
    );

    sky130_fd_sc_hd__or2_2 inst_2545 (
        .A(n__98),
        .B(n__38),
        .X(n__45)
    );

    sky130_fd_sc_hd__or2_2 inst_2547 (
        .A(n__114),
        .B(n__290),
        .X(n__627)
    );

    sky130_fd_sc_hd__nor2_2 inst_2549 (
        .A(n__179),
        .B(n__43),
        .Y(n__414)
    );

    sky130_fd_sc_hd__nor2_2 inst_2550 (
        .A(n__652),
        .B(n__653),
        .Y(n__574)
    );

    sky130_fd_sc_hd__nor2_2 inst_2553 (
        .A(n__1006),
        .B(n__1038),
        .Y(n__558)
    );

    sky130_fd_sc_hd__nor2_2 inst_2554 (
        .A(n__23),
        .B(n__45),
        .Y(n__114)
    );

    sky130_fd_sc_hd__nor2_2 inst_2556 (
        .A(n__109),
        .B(n__23),
        .Y(n__360)
    );

    sky130_fd_sc_hd__nor2_2 inst_2557 (
        .A(n__83),
        .B(n__38),
        .Y(n__14)
    );

    sky130_fd_sc_hd__nor2_2 inst_2559 (
        .A(n__23),
        .B(n__103),
        .Y(n__364)
    );

    sky130_fd_sc_hd__nor2_2 inst_2561 (
        .A(n__377),
        .B(n__523),
        .Y(n__878)
    );

    sky130_fd_sc_hd__a21o_2 inst_2562 (
        .A1(n__270),
        .A2(n__456),
        .B1(n__454),
        .X(n__462)
    );

    sky130_fd_sc_hd__nor2_2 inst_2563 (
        .A(n__145),
        .B(n__123),
        .Y(n__42)
    );

    sky130_fd_sc_hd__nor2_2 inst_2565 (
        .A(n__377),
        .B(n__436),
        .Y(n__325)
    );

    sky130_fd_sc_hd__nor2_2 inst_2566 (
        .A(n__323),
        .B(n__239),
        .Y(n__83)
    );

    sky130_fd_sc_hd__nor2_2 inst_2568 (
        .A(n__659),
        .B(n__565),
        .Y(n__454)
    );

    sky130_fd_sc_hd__nor2_2 inst_2571 (
        .A(n__25),
        .B(n__179),
        .Y(n__40)
    );

    sky130_fd_sc_hd__nor2_2 inst_2573 (
        .A(n__319),
        .B(n__322),
        .Y(n__239)
    );

    sky130_fd_sc_hd__nor2_2 inst_2579 (
        .A(n__145),
        .B(n__97),
        .Y(n__151)
    );

    sky130_fd_sc_hd__nor2_2 inst_2582 (
        .A(n__25),
        .B(n__60),
        .Y(n__44)
    );

    sky130_fd_sc_hd__nor2_2 inst_2585 (
        .A(n__239),
        .B(n__267),
        .Y(n__101)
    );

    sky130_fd_sc_hd__nor2_2 inst_2588 (
        .A(n__1169),
        .B(n__379),
        .Y(n__775)
    );

    sky130_fd_sc_hd__nor2_2 inst_2589 (
        .A(n__772),
        .B(n__773),
        .Y(n__1169)
    );

    sky130_fd_sc_hd__nor2_2 inst_2591 (
        .A(n__53),
        .B(n__101),
        .Y(n__138)
    );

    sky130_fd_sc_hd__nor2_2 inst_2593 (
        .A(n__109),
        .B(n__25),
        .Y(n__371)
    );

    sky130_fd_sc_hd__nor2_2 inst_2595 (
        .A(n__23),
        .B(n__179),
        .Y(n__176)
    );

endmodule

// Cluster 2: 129 instances
module cluster_2 (
    input  I,
    input  clk,
    input  next_EN,
    input  n__1351,
    input  n__1363,
    input  n__1365,
    input  n__1420,
    input  n__1425,
    input  n__1475,
    input  n__1505,
    input  n__1516,
    input  n__1559,
    input  n__1629,
    input  n__1693,
    input  n__1694,
    input  n__1815,
    input  n__1816,
    input  n__1822,
    input  n__1905,
    input  n__1907,
    input  n__1926,
    input  n__1928,
    input  n__1938,
    input  n__1976,
    input  n__2004,
    input  n__2006,
    input  n__2088,
    input  n__2117,
    input  n__2120,
    input  n__2155,
    input  n__2190,
    input  n__2223,
    input  n__2231,
    input  n__2239,
    input  n__2298,
    input  n__2301,
    input  n__2313,
    input  n__2610,
    input  n__2676,
    input  n__2678,
    input  n__2794,
    input  n__2810,
    input  n__3037,
    input  n__3377,
    input  n__3419,
    input  n__3420,
    input  rst_n,
    output n__2224,
    output n__2283,
    output n__2307,
    output n__2369,
    output n__2599,
    output n__2667,
    output n__2671,
    output n__2674,
    output n__2709,
    output n__2834,
    output n__2944,
    output n__3049,
    output n__3435,
    output n__3516,
    output n__3518,
    output n__3543,
    output n__3553,
    output n__3613,
    output n__3616,
    output n__3818
);

    wire n__2315,
         n__2456,
         n__2460,
         n__2461,
         n__2480,
         n__2513,
         n__2515,
         n__2537,
         n__2544,
         n__2546,
         n__2547,
         n__2563,
         n__2576,
         n__2593,
         n__2597,
         n__2604,
         n__2606,
         n__2607,
         n__2609,
         n__2612,
         n__2618,
         n__2626,
         n__2637,
         n__2648,
         n__2652,
         n__2654,
         n__2684,
         n__2687,
         n__2688,
         n__2689,
         n__2695,
         n__2700,
         n__2706,
         n__2710,
         n__2711,
         n__2720,
         n__2743,
         n__2746,
         n__2750,
         n__2751,
         n__2754,
         n__2767,
         n__2805,
         n__2808,
         n__2825,
         n__2826,
         n__2829,
         n__2857,
         n__2881,
         n__2887,
         n__2892,
         n__2904,
         n__2905,
         n__2912,
         n__2915,
         n__2927,
         n__2930,
         n__2931,
         n__2949,
         n__2951,
         n__2973,
         n__2992,
         n__2997,
         n__3041,
         n__3045,
         n__3047,
         n__3051,
         n__3052,
         n__3057,
         n__3061,
         n__3078,
         n__3079,
         n__3120,
         n__3128,
         n__3133,
         n__3171,
         n__3189,
         n__3190,
         n__3251,
         n__3257,
         n__3258,
         n__3268,
         n__3278,
         n__3286,
         n__3293,
         n__3303,
         n__3357,
         n__3361,
         n__3396,
         n__3408,
         n__3426,
         n__3430,
         n__3433,
         n__3443,
         n__3457,
         n__3459,
         n__3483,
         n__3485,
         n__3488,
         n__3510,
         n__3521,
         n__3529,
         n__3549,
         n__3593,
         n__3642,
         n__3650,
         n__3705,
         n__3709,
         n__3710,
         n__I13677;

    sky130_fd_sc_hd__dfstp_2 inst_12 (
        .CLK(clk),
        .D(n__2997),
        .Q(n__2825),
        .SET_B(rst_n)
    );

    sky130_fd_sc_hd__dfstp_2 inst_13 (
        .CLK(clk),
        .D(n__3051),
        .Q(n__2674),
        .SET_B(rst_n)
    );

    sky130_fd_sc_hd__dfstp_2 inst_14 (
        .CLK(clk),
        .D(n__2992),
        .Q(n__2689),
        .SET_B(rst_n)
    );

    sky130_fd_sc_hd__nor3b_2 inst_18 (
        .A(next_EN),
        .B(n__2610),
        .C_N(n__2515),
        .Y(n__2618)
    );

    sky130_fd_sc_hd__nor3b_2 inst_19 (
        .A(n__3377),
        .B(n__3420),
        .C_N(n__3419),
        .Y(n__3488)
    );

    sky130_fd_sc_hd__nor3b_2 inst_20 (
        .A(n__3377),
        .B(n__3419),
        .C_N(n__3420),
        .Y(n__3258)
    );

    sky130_fd_sc_hd__nor3b_2 inst_21 (
        .A(n__3419),
        .B(n__3420),
        .C_N(n__3377),
        .Y(n__3251)
    );

    sky130_fd_sc_hd__and3b_2 inst_30 (
        .A_N(next_EN),
        .B(n__2515),
        .C(n__2678),
        .X(n__2710)
    );

    sky130_fd_sc_hd__o31a_2 inst_31 (
        .A1(n__3408),
        .A2(n__3650),
        .A3(n__3396),
        .B1(n__3257),
        .X(n__3818)
    );

    sky130_fd_sc_hd__o31a_2 inst_32 (
        .A1(n__3408),
        .A2(n__3710),
        .A3(n__3459),
        .B1(n__3485),
        .X(n__3613)
    );

    sky130_fd_sc_hd__o31a_2 inst_33 (
        .A1(n__3408),
        .A2(n__3529),
        .A3(n__3278),
        .B1(n__3443),
        .X(n__3435)
    );

    sky130_fd_sc_hd__o31a_2 inst_34 (
        .A1(n__3408),
        .A2(n__3709),
        .A3(n__3457),
        .B1(n__3521),
        .X(n__3543)
    );

    sky130_fd_sc_hd__o31a_2 inst_36 (
        .A1(n__3408),
        .A2(n__3705),
        .A3(n__3483),
        .B1(n__3303),
        .X(n__3616)
    );

    sky130_fd_sc_hd__o31a_2 inst_38 (
        .A1(n__3408),
        .A2(n__3642),
        .A3(n__3549),
        .B1(n__3510),
        .X(n__3553)
    );

    sky130_fd_sc_hd__o31a_2 inst_39 (
        .A1(n__3408),
        .A2(n__3430),
        .A3(n__3286),
        .B1(n__3433),
        .X(n__3518)
    );

    sky130_fd_sc_hd__o31a_2 inst_40 (
        .A1(n__3408),
        .A2(n__3426),
        .A3(n__3361),
        .B1(n__3357),
        .X(n__3516)
    );

    sky130_fd_sc_hd__conb_1 inst_41 (
        .HI(n__I13677),
        .LO(n__2480)
    );

    sky130_fd_sc_hd__or3b_2 inst_61 (
        .A(n__1351),
        .B(n__1365),
        .C_N(n__1363),
        .X(n__2805)
    );

    sky130_fd_sc_hd__o21ai_2 inst_163 (
        .A1(I),
        .A2(n__2515),
        .B1(n__2626),
        .Y(n__2606)
    );

    sky130_fd_sc_hd__o21ai_2 inst_164 (
        .A1(n__2604),
        .A2(n__2546),
        .B1(n__2612),
        .Y(n__2695)
    );

    sky130_fd_sc_hd__nor3_2 inst_166 (
        .A(n__3377),
        .B(n__3419),
        .C(n__3420),
        .Y(n__3593)
    );

    sky130_fd_sc_hd__a221o_2 inst_169 (
        .A1(next_EN),
        .A2(n__2689),
        .B1(n__2537),
        .B2(n__2610),
        .C1(n__2754),
        .X(n__3061)
    );

    sky130_fd_sc_hd__a221o_2 inst_170 (
        .A1(next_EN),
        .A2(n__2674),
        .B1(n__2949),
        .B2(n__2754),
        .C1(n__3045),
        .X(n__3041)
    );

    sky130_fd_sc_hd__a221o_2 inst_172 (
        .A1(next_EN),
        .A2(n__2676),
        .B1(n__2743),
        .B2(n__2754),
        .C1(n__2688),
        .X(n__2750)
    );

    sky130_fd_sc_hd__a221o_2 inst_173 (
        .A1(next_EN),
        .A2(n__2609),
        .B1(n__2754),
        .B2(n__2751),
        .C1(n__2951),
        .X(n__2857)
    );

    sky130_fd_sc_hd__o32a_2 inst_175 (
        .A1(n__2604),
        .A2(n__2576),
        .A3(n__2648),
        .B1(n__2563),
        .B2(n__2546),
        .X(n__2637)
    );

    sky130_fd_sc_hd__o32a_2 inst_176 (
        .A1(n__2767),
        .A2(n__2710),
        .A3(n__3120),
        .B1(n__2829),
        .B2(n__2689),
        .X(n__2992)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_207 (
        .CLK(clk),
        .D(n__2857),
        .Q(n__2751),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_215 (
        .CLK(clk),
        .D(n__3078),
        .Q(n__2609),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_238 (
        .CLK(clk),
        .D(n__3041),
        .Q(n__2949),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a211o_2 inst_269 (
        .A1(n__1351),
        .A2(n__1365),
        .B1(n__2593),
        .C1(n__2599),
        .X(n__2612)
    );

    sky130_fd_sc_hd__a21o_2 inst_280 (
        .A1(n__2931),
        .A2(n__3133),
        .B1(n__3128),
        .X(n__2997)
    );

    sky130_fd_sc_hd__a21o_2 inst_281 (
        .A1(next_EN),
        .A2(n__2949),
        .B1(n__2754),
        .X(n__3120)
    );

    sky130_fd_sc_hd__nand2b_2 inst_328 (
        .A_N(next_EN),
        .B(n__3037),
        .Y(n__2687)
    );

    sky130_fd_sc_hd__nand2b_2 inst_337 (
        .A_N(n__1363),
        .B(n__1351),
        .Y(n__2927)
    );

    sky130_fd_sc_hd__a22o_2 inst_341 (
        .A1(n__2706),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1559),
        .X(n__3483)
    );

    sky130_fd_sc_hd__a22o_2 inst_342 (
        .A1(n__1351),
        .A2(n__3052),
        .B1(n__2927),
        .B2(n__1365),
        .X(n__3047)
    );

    sky130_fd_sc_hd__a22o_2 inst_343 (
        .A1(next_EN),
        .A2(n__2751),
        .B1(n__2825),
        .B2(n__2754),
        .X(n__3128)
    );

    sky130_fd_sc_hd__a22o_2 inst_344 (
        .A1(n__2313),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__1976),
        .X(n__3426)
    );

    sky130_fd_sc_hd__a22o_2 inst_345 (
        .A1(next_EN),
        .A2(n__2825),
        .B1(n__2754),
        .B2(n__2676),
        .X(n__2905)
    );

    sky130_fd_sc_hd__a22o_2 inst_346 (
        .A1(n__2480),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2004),
        .X(n__3529)
    );

    sky130_fd_sc_hd__a22o_2 inst_347 (
        .A1(n__2684),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1694),
        .X(n__3361)
    );

    sky130_fd_sc_hd__a22o_2 inst_348 (
        .A1(n__2460),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2120),
        .X(n__3710)
    );

    sky130_fd_sc_hd__a22o_2 inst_349 (
        .A1(n__2746),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1516),
        .X(n__3459)
    );

    sky130_fd_sc_hd__a22o_2 inst_350 (
        .A1(n__2892),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1475),
        .X(n__3549)
    );

    sky130_fd_sc_hd__a22o_2 inst_351 (
        .A1(n__2239),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2190),
        .X(n__3642)
    );

    sky130_fd_sc_hd__a22o_2 inst_352 (
        .A1(n__2315),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2088),
        .X(n__3650)
    );

    sky130_fd_sc_hd__a22o_2 inst_353 (
        .A1(n__2667),
        .A2(n__2544),
        .B1(n__2576),
        .B2(n__2805),
        .X(n__2720)
    );

    sky130_fd_sc_hd__a22o_2 inst_355 (
        .A1(n__2904),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1420),
        .X(n__3396)
    );

    sky130_fd_sc_hd__a22o_2 inst_356 (
        .A1(n__2298),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2117),
        .X(n__3709)
    );

    sky130_fd_sc_hd__a22o_2 inst_359 (
        .A1(n__2607),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1425),
        .X(n__3278)
    );

    sky130_fd_sc_hd__a22o_2 inst_360 (
        .A1(n__2231),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2006),
        .X(n__3705)
    );

    sky130_fd_sc_hd__a22o_2 inst_361 (
        .A1(n__2461),
        .A2(n__3488),
        .B1(n__3593),
        .B2(n__2155),
        .X(n__3430)
    );

    sky130_fd_sc_hd__a22o_2 inst_362 (
        .A1(n__3293),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1629),
        .X(n__3286)
    );

    sky130_fd_sc_hd__a22o_2 inst_363 (
        .A1(n__3190),
        .A2(n__3251),
        .B1(n__3258),
        .B2(n__1693),
        .X(n__3457)
    );

    sky130_fd_sc_hd__and2b_2 inst_365 (
        .A_N(next_EN),
        .B(n__3037),
        .X(n__2931)
    );

    sky130_fd_sc_hd__and2b_2 inst_371 (
        .A_N(n__1351),
        .B(n__1363),
        .X(n__2599)
    );

    sky130_fd_sc_hd__and2b_2 inst_372 (
        .A_N(n__2547),
        .B(n__2513),
        .X(n__2563)
    );

    sky130_fd_sc_hd__a21boi_2 inst_373 (
        .A1(I),
        .A2(n__2515),
        .B1_N(next_EN),
        .Y(n__2626)
    );

    sky130_fd_sc_hd__and2b_2 inst_374 (
        .A_N(n__2678),
        .B(n__2537),
        .X(n__2767)
    );

    sky130_fd_sc_hd__and2b_2 inst_376 (
        .A_N(n__1363),
        .B(n__1351),
        .X(n__2307)
    );

    sky130_fd_sc_hd__nor3b_2 inst_377 (
        .A(n__1351),
        .B(n__1365),
        .C_N(n__1363),
        .Y(n__2369)
    );

    sky130_fd_sc_hd__dfstp_2 inst_402 (
        .CLK(clk),
        .D(n__2750),
        .Q(n__2743),
        .SET_B(rst_n)
    );

    sky130_fd_sc_hd__xnor2_2 inst_403 (
        .A(n__2676),
        .B(n__2973),
        .Y(n__3189)
    );

    sky130_fd_sc_hd__xnor2_2 inst_405 (
        .A(n__2944),
        .B(n__3049),
        .Y(n__3133)
    );

    sky130_fd_sc_hd__xnor2_2 inst_407 (
        .A(n__2676),
        .B(n__2700),
        .Y(n__2834)
    );

    sky130_fd_sc_hd__a22oi_2 inst_408 (
        .A1(n__1351),
        .A2(n__2593),
        .B1(n__2544),
        .B2(n__2513),
        .Y(n__2597)
    );

    sky130_fd_sc_hd__xnor2_2 inst_409 (
        .A(n__1505),
        .B(n__2881),
        .Y(n__2576)
    );

    sky130_fd_sc_hd__xnor2_2 inst_410 (
        .A(n__2676),
        .B(n__3047),
        .Y(n__3293)
    );

    sky130_fd_sc_hd__xnor2_2 inst_414 (
        .A(n__2912),
        .B(n__2808),
        .Y(n__2904)
    );

    sky130_fd_sc_hd__xnor2_2 inst_415 (
        .A(n__2743),
        .B(n__2652),
        .Y(n__2607)
    );

    sky130_fd_sc_hd__xnor2_2 inst_419 (
        .A(n__2689),
        .B(n__2695),
        .Y(n__2684)
    );

    sky130_fd_sc_hd__xnor2_2 inst_423 (
        .A(n__2751),
        .B(n__2609),
        .Y(n__2700)
    );

    sky130_fd_sc_hd__xnor2_2 inst_424 (
        .A(n__2825),
        .B(n__2743),
        .Y(n__2887)
    );

    sky130_fd_sc_hd__xnor2_2 inst_429 (
        .A(n__2674),
        .B(n__2711),
        .Y(n__2706)
    );

    sky130_fd_sc_hd__xnor2_2 inst_431 (
        .A(n__2689),
        .B(n__2825),
        .Y(n__2944)
    );

    sky130_fd_sc_hd__xnor2_2 inst_432 (
        .A(n__2700),
        .B(n__2887),
        .Y(n__2515)
    );

    sky130_fd_sc_hd__or3_2 inst_447 (
        .A(n__1822),
        .B(n__3251),
        .C(n__3268),
        .X(n__3257)
    );

    sky130_fd_sc_hd__or3_2 inst_448 (
        .A(n__1938),
        .B(n__3251),
        .C(n__3268),
        .X(n__3485)
    );

    sky130_fd_sc_hd__or3_2 inst_449 (
        .A(n__2667),
        .B(n__2547),
        .C(n__3052),
        .X(n__2912)
    );

    sky130_fd_sc_hd__or3_2 inst_450 (
        .A(n__1928),
        .B(n__3251),
        .C(n__3268),
        .X(n__3433)
    );

    sky130_fd_sc_hd__or3_2 inst_451 (
        .A(n__1907),
        .B(n__3251),
        .C(n__3268),
        .X(n__3357)
    );

    sky130_fd_sc_hd__or3_2 inst_452 (
        .A(n__1926),
        .B(n__3251),
        .C(n__3268),
        .X(n__3510)
    );

    sky130_fd_sc_hd__or3_2 inst_454 (
        .A(n__1816),
        .B(n__3251),
        .C(n__3268),
        .X(n__3303)
    );

    sky130_fd_sc_hd__or3_2 inst_455 (
        .A(n__1905),
        .B(n__3251),
        .C(n__3268),
        .X(n__3521)
    );

    sky130_fd_sc_hd__or3_2 inst_456 (
        .A(n__1815),
        .B(n__3251),
        .C(n__3268),
        .X(n__3443)
    );

    sky130_fd_sc_hd__xor2_2 inst_466 (
        .A(n__2949),
        .B(n__2544),
        .X(n__2808)
    );

    sky130_fd_sc_hd__xor2_2 inst_470 (
        .A(n__2751),
        .B(n__2794),
        .X(n__2892)
    );

    sky130_fd_sc_hd__xor2_2 inst_472 (
        .A(n__2689),
        .B(n__2949),
        .X(n__3079)
    );

    sky130_fd_sc_hd__xor2_2 inst_475 (
        .A(n__2609),
        .B(n__2949),
        .X(n__3049)
    );

    sky130_fd_sc_hd__xor2_2 inst_478 (
        .A(n__2609),
        .B(n__2743),
        .X(n__2973)
    );

    sky130_fd_sc_hd__xor2_2 inst_480 (
        .A(n__2609),
        .B(n__2637),
        .X(n__2746)
    );

    sky130_fd_sc_hd__xor2_2 inst_482 (
        .A(n__2825),
        .B(n__2930),
        .X(n__3190)
    );

    sky130_fd_sc_hd__xor2_2 inst_484 (
        .A(n__2674),
        .B(n__2751),
        .X(n__3057)
    );

    sky130_fd_sc_hd__o221a_2 inst_486 (
        .A1(n__2674),
        .A2(n__2829),
        .B1(n__2687),
        .B2(n__2810),
        .C1(n__2606),
        .X(n__3051)
    );

    sky130_fd_sc_hd__a31o_2 inst_505 (
        .A1(n__2931),
        .A2(n__2915),
        .A3(n__2826),
        .B1(n__2905),
        .X(n__2709)
    );

    sky130_fd_sc_hd__a31o_2 inst_509 (
        .A1(n__1365),
        .A2(n__2593),
        .A3(n__2513),
        .B1(n__2597),
        .X(n__2652)
    );

    sky130_fd_sc_hd__a21oi_2 inst_517 (
        .A1(n__3419),
        .A2(n__3420),
        .B1(n__3377),
        .Y(n__3268)
    );

    sky130_fd_sc_hd__a21oi_2 inst_518 (
        .A1(n__3079),
        .A2(n__3057),
        .B1(n__2687),
        .Y(n__3171)
    );

    sky130_fd_sc_hd__a21oi_2 inst_522 (
        .A1(n__1351),
        .A2(n__2301),
        .B1(n__1505),
        .Y(n__2461)
    );

    sky130_fd_sc_hd__a21oi_2 inst_528 (
        .A1(n__2654),
        .A2(n__2671),
        .B1(n__2667),
        .Y(n__2711)
    );

    sky130_fd_sc_hd__and3_2 inst_549 (
        .A(n__1351),
        .B(n__1363),
        .C(n__1365),
        .X(n__2881)
    );

    sky130_fd_sc_hd__and3_2 inst_569 (
        .A(n__1351),
        .B(n__1363),
        .C(n__1365),
        .X(n__2224)
    );

    sky130_fd_sc_hd__a2111oi_2 inst_570 (
        .A1(n__1351),
        .A2(n__1365),
        .B1(n__1505),
        .C1(n__2301),
        .D1(n__2456),
        .Y(n__2460)
    );

    sky130_fd_sc_hd__o21a_2 inst_1733 (
        .A1(n__3079),
        .A2(n__3057),
        .B1(n__3171),
        .X(n__2951)
    );

    sky130_fd_sc_hd__o21a_2 inst_1751 (
        .A1(n__2283),
        .A2(n__2224),
        .B1(n__2223),
        .X(n__2315)
    );

    sky130_fd_sc_hd__inv_2 inst_1754 (
        .A(n__1351),
        .Y(n__2283)
    );

    sky130_fd_sc_hd__inv_2 inst_1757 (
        .A(n__1505),
        .Y(n__2593)
    );

    sky130_fd_sc_hd__inv_2 inst_1758 (
        .A(n__2654),
        .Y(n__2604)
    );

    sky130_fd_sc_hd__o22a_2 inst_1777 (
        .A1(n__2609),
        .A2(n__2829),
        .B1(n__2618),
        .B2(n__3061),
        .X(n__3078)
    );

    sky130_fd_sc_hd__nand2_2 inst_2486 (
        .A(n__2927),
        .B(n__2720),
        .Y(n__2930)
    );

    sky130_fd_sc_hd__nand2_2 inst_2487 (
        .A(n__2689),
        .B(n__2834),
        .Y(n__2915)
    );

    sky130_fd_sc_hd__nand2_2 inst_2489 (
        .A(n__1365),
        .B(n__2599),
        .Y(n__2654)
    );

    sky130_fd_sc_hd__nand2_2 inst_2498 (
        .A(n__1351),
        .B(n__1363),
        .Y(n__2513)
    );

    sky130_fd_sc_hd__nand2_2 inst_2502 (
        .A(n__1363),
        .B(n__1505),
        .Y(n__2671)
    );

    sky130_fd_sc_hd__nand2_2 inst_2523 (
        .A(n__2544),
        .B(n__2576),
        .Y(n__2546)
    );

    sky130_fd_sc_hd__or2_2 inst_2536 (
        .A(n__2689),
        .B(n__2834),
        .X(n__2826)
    );

    sky130_fd_sc_hd__or2_2 inst_2542 (
        .A(n__3037),
        .B(next_EN),
        .X(n__2829)
    );

    sky130_fd_sc_hd__or2_2 inst_2544 (
        .A(n__1363),
        .B(n__1365),
        .X(n__2544)
    );

    sky130_fd_sc_hd__nor2_2 inst_2552 (
        .A(n__1351),
        .B(n__2593),
        .Y(n__2667)
    );

    sky130_fd_sc_hd__nor2_2 inst_2555 (
        .A(n__1351),
        .B(n__1363),
        .Y(n__2456)
    );

    sky130_fd_sc_hd__nor2_2 inst_2567 (
        .A(n__2687),
        .B(n__3189),
        .Y(n__3045)
    );

    sky130_fd_sc_hd__nor2_2 inst_2569 (
        .A(n__3037),
        .B(next_EN),
        .Y(n__2754)
    );

    sky130_fd_sc_hd__nor2_2 inst_2574 (
        .A(n__1365),
        .B(n__1505),
        .Y(n__3052)
    );

    sky130_fd_sc_hd__nor2_2 inst_2575 (
        .A(n__1351),
        .B(n__1363),
        .Y(n__2547)
    );

    sky130_fd_sc_hd__nor2_2 inst_2577 (
        .A(n__2515),
        .B(n__2687),
        .Y(n__2688)
    );

    sky130_fd_sc_hd__nor2_2 inst_2581 (
        .A(n__1365),
        .B(n__2563),
        .Y(n__2648)
    );

    sky130_fd_sc_hd__nor2_2 inst_2586 (
        .A(next_EN),
        .B(n__2515),
        .Y(n__2537)
    );

    sky130_fd_sc_hd__nor2_2 inst_2590 (
        .A(n__3251),
        .B(n__3268),
        .Y(n__3408)
    );

endmodule

// Cluster 3: 34 instances
module cluster_3 (
    input  I,
    input  clk,
    input  n__1034,
    input  n__1288,
    input  n__736,
    input  n__857,
    input  n__881,
    input  next_EN,
    input  n__985,
    input  rst_n,
    output n__1326,
    output n__349,
    output n__399,
    output n__401,
    output n__404,
    output n__840,
    output n__895
);

    wire n__1032,
         n__1033,
         n__1112,
         n__1190,
         n__1191,
         n__1193,
         n__1194,
         n__1195,
         n__1196,
         n__1197,
         n__1199,
         n__1214,
         n__1220,
         n__1222,
         n__1237,
         n__1242,
         n__1247,
         n__1250,
         n__1267,
         n__1273,
         n__1283,
         n__1289,
         n__1290,
         n__1293,
         n__1394,
         n__966,
         n__967;

    sky130_fd_sc_hd__or4b_2 inst_92 (
        .A(n__736),
        .B(n__1034),
        .C(n__985),
        .D_N(n__857),
        .X(n__1289)
    );

    sky130_fd_sc_hd__nand4_2 inst_149 (
        .A(I),
        .B(next_EN),
        .C(n__1293),
        .D(n__1267),
        .Y(n__1283)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_191 (
        .CLK(clk),
        .D(n__1214),
        .Q(n__1193),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_200 (
        .CLK(clk),
        .D(n__1273),
        .Q(n__1293),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_204 (
        .CLK(clk),
        .D(n__881),
        .Q(n__840),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_210 (
        .CLK(clk),
        .D(n__1196),
        .Q(n__1191),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_233 (
        .CLK(clk),
        .D(n__966),
        .Q(n__1032),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__nand4_2 inst_234 (
        .A(I),
        .B(next_EN),
        .C(n__1032),
        .D(n__1033),
        .Y(n__895)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_242 (
        .CLK(clk),
        .D(n__1222),
        .Q(n__1194),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_247 (
        .CLK(clk),
        .D(n__1394),
        .Q(n__1247),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a21o_2 inst_282 (
        .A1(n__1194),
        .A2(n__1195),
        .B1(n__1288),
        .X(n__1326)
    );

    sky130_fd_sc_hd__a21o_2 inst_289 (
        .A1(n__1193),
        .A2(n__1197),
        .B1(n__1191),
        .X(n__1196)
    );

    sky130_fd_sc_hd__and4bb_2 inst_300 (
        .A_N(n__1034),
        .B_N(n__985),
        .C(n__736),
        .D(n__857),
        .X(n__1267)
    );

    sky130_fd_sc_hd__nand2b_2 inst_327 (
        .A_N(n__1247),
        .B(n__1283),
        .Y(n__1394)
    );

    sky130_fd_sc_hd__and2b_2 inst_368 (
        .A_N(n__1293),
        .B(n__1247),
        .X(n__401)
    );

    sky130_fd_sc_hd__and2b_2 inst_386 (
        .A_N(n__1032),
        .B(n__840),
        .X(n__404)
    );

    sky130_fd_sc_hd__or4_2 inst_438 (
        .A(n__1288),
        .B(n__1290),
        .C(n__1289),
        .D(n__1242),
        .X(n__1237)
    );

    sky130_fd_sc_hd__or4_2 inst_442 (
        .A(n__1191),
        .B(n__1190),
        .C(n__1112),
        .D(n__1199),
        .X(n__1220)
    );

    sky130_fd_sc_hd__or4b_2 inst_443 (
        .A(n__857),
        .B(n__1034),
        .C(n__985),
        .D_N(n__736),
        .X(n__1112)
    );

    sky130_fd_sc_hd__a31o_2 inst_496 (
        .A1(I),
        .A2(next_EN),
        .A3(n__1267),
        .B1(n__1293),
        .X(n__1250)
    );

    sky130_fd_sc_hd__a31o_2 inst_513 (
        .A1(I),
        .A2(next_EN),
        .A3(n__1033),
        .B1(n__1032),
        .X(n__967)
    );

    sky130_fd_sc_hd__nor4_2 inst_514 (
        .A(n__857),
        .B(n__736),
        .C(n__1034),
        .D(n__985),
        .Y(n__1033)
    );

    sky130_fd_sc_hd__o21a_2 inst_1721 (
        .A1(n__1193),
        .A2(n__1197),
        .B1(n__1220),
        .X(n__1214)
    );

    sky130_fd_sc_hd__o21a_2 inst_1724 (
        .A1(n__1194),
        .A2(n__1195),
        .B1(n__1237),
        .X(n__1222)
    );

    sky130_fd_sc_hd__o21a_2 inst_1739 (
        .A1(n__840),
        .A2(n__895),
        .B1(n__967),
        .X(n__966)
    );

    sky130_fd_sc_hd__o21a_2 inst_1744 (
        .A1(n__1247),
        .A2(n__1283),
        .B1(n__1250),
        .X(n__1273)
    );

    sky130_fd_sc_hd__inv_2 inst_1764 (
        .A(n__1194),
        .Y(n__1290)
    );

    sky130_fd_sc_hd__inv_2 inst_1768 (
        .A(n__1193),
        .Y(n__1190)
    );

    sky130_fd_sc_hd__and2_2 inst_1783 (
        .A(n__1288),
        .B(n__1290),
        .X(n__399)
    );

    sky130_fd_sc_hd__and2_2 inst_1796 (
        .A(n__1191),
        .B(n__1190),
        .X(n__349)
    );

    sky130_fd_sc_hd__nand2_2 inst_2513 (
        .A(I),
        .B(next_EN),
        .Y(n__1242)
    );

    sky130_fd_sc_hd__nand2_2 inst_2521 (
        .A(I),
        .B(next_EN),
        .Y(n__1199)
    );

    sky130_fd_sc_hd__nor2_2 inst_2584 (
        .A(n__1112),
        .B(n__1199),
        .Y(n__1197)
    );

    sky130_fd_sc_hd__nor2_2 inst_2592 (
        .A(n__1289),
        .B(n__1242),
        .Y(n__1195)
    );

endmodule

// Cluster 4: 28 instances
module cluster_4 (
    input  clk,
    input  n__1084,
    input  n__3435,
    input  n__3516,
    input  n__3518,
    input  n__3543,
    input  n__3553,
    input  n__3613,
    input  n__3616,
    input  n__3771,
    input  n__3818,
    input  n__3919,
    input  n__791,
    input  success,
    output O_0_,
    output O_1_,
    output O_2_,
    output O_3_,
    output O_4_,
    output O_5_,
    output O_6_,
    output O_7_,
    output n__1351,
    output n__1363,
    output n__1365,
    output n__1505,
    output n__3037,
    output n__3377,
    output n__3419,
    output n__3420
);

    wire n__3809,
         n__3833,
         n__3834,
         n__3866,
         n__3870,
         n__3874,
         n__3893,
         n__3923,
         n__3949,
         n__3983,
         n__4000,
         n__4031;

    sky130_fd_sc_hd__dfxtp_2 inst_9 (
        .CLK(clk),
        .D(n__3923),
        .Q(n__1351)
    );

    sky130_fd_sc_hd__dfxtp_2 inst_10 (
        .CLK(clk),
        .D(n__3983),
        .Q(n__1363)
    );

    sky130_fd_sc_hd__dfxtp_2 inst_11 (
        .CLK(clk),
        .D(n__4000),
        .Q(n__1365)
    );

    sky130_fd_sc_hd__a21boi_2 inst_15 (
        .A1(n__3834),
        .A2(n__3809),
        .B1_N(n__3771),
        .Y(n__3833)
    );

    sky130_fd_sc_hd__a21boi_2 inst_16 (
        .A1(n__1351),
        .A2(n__3874),
        .B1_N(n__3771),
        .Y(n__3923)
    );

    sky130_fd_sc_hd__a21boi_2 inst_17 (
        .A1(n__3874),
        .A2(n__3893),
        .B1_N(n__3771),
        .Y(n__3983)
    );

    sky130_fd_sc_hd__a211oi_2 inst_23 (
        .A1(n__3949),
        .A2(n__3919),
        .B1(n__1084),
        .C1(n__791),
        .Y(n__3377)
    );

    sky130_fd_sc_hd__nand3_2 inst_27 (
        .A(n__1365),
        .B(n__1363),
        .C(n__1351),
        .Y(n__3809)
    );

    sky130_fd_sc_hd__or4b_2 inst_86 (
        .A(n__791),
        .B(success),
        .C(n__1084),
        .D_N(n__3919),
        .X(n__3866)
    );

    sky130_fd_sc_hd__nand4_2 inst_160 (
        .A(n__1505),
        .B(n__1365),
        .C(n__1363),
        .D(n__1351),
        .Y(n__3874)
    );

    sky130_fd_sc_hd__a21o_2 inst_290 (
        .A1(n__1363),
        .A2(n__1351),
        .B1(n__1365),
        .X(n__3870)
    );

    sky130_fd_sc_hd__o21ba_2 inst_291 (
        .A1(success),
        .A2(n__3919),
        .B1_N(n__1084),
        .X(n__4031)
    );

    sky130_fd_sc_hd__xnor2_2 inst_430 (
        .A(n__1363),
        .B(n__1351),
        .Y(n__3893)
    );

    sky130_fd_sc_hd__o211a_2 inst_537 (
        .A1(n__1505),
        .A2(n__3809),
        .B1(n__3870),
        .C1(n__3771),
        .X(n__4000)
    );

    sky130_fd_sc_hd__dfxtp_2 inst_538 (
        .CLK(clk),
        .D(n__3833),
        .Q(n__1505)
    );

    sky130_fd_sc_hd__and3_2 inst_553 (
        .A(n__3771),
        .B(n__3613),
        .C(n__3874),
        .X(O_3_)
    );

    sky130_fd_sc_hd__and3_2 inst_554 (
        .A(n__3771),
        .B(n__3543),
        .C(n__3874),
        .X(O_5_)
    );

    sky130_fd_sc_hd__and3_2 inst_555 (
        .A(n__3771),
        .B(n__3518),
        .C(n__3874),
        .X(O_6_)
    );

    sky130_fd_sc_hd__and3_2 inst_557 (
        .A(n__3771),
        .B(n__3818),
        .C(n__3874),
        .X(O_1_)
    );

    sky130_fd_sc_hd__and3_2 inst_558 (
        .A(n__3771),
        .B(n__3553),
        .C(n__3874),
        .X(O_4_)
    );

    sky130_fd_sc_hd__and3_2 inst_565 (
        .A(n__3771),
        .B(n__3435),
        .C(n__3874),
        .X(O_7_)
    );

    sky130_fd_sc_hd__and3_2 inst_566 (
        .A(n__3771),
        .B(n__3516),
        .C(n__3874),
        .X(O_2_)
    );

    sky130_fd_sc_hd__and3_2 inst_571 (
        .A(n__3771),
        .B(n__3616),
        .C(n__3874),
        .X(O_0_)
    );

    sky130_fd_sc_hd__inv_2 inst_1755 (
        .A(n__3866),
        .Y(n__3420)
    );

    sky130_fd_sc_hd__inv_2 inst_1771 (
        .A(success),
        .Y(n__3949)
    );

    sky130_fd_sc_hd__inv_2 inst_1776 (
        .A(n__1505),
        .Y(n__3834)
    );

    sky130_fd_sc_hd__and2_2 inst_1795 (
        .A(n__3771),
        .B(n__3874),
        .X(n__3037)
    );

    sky130_fd_sc_hd__nor2_2 inst_2587 (
        .A(n__791),
        .B(n__4031),
        .Y(n__3419)
    );

endmodule

// Cluster 5: 24 instances
module cluster_5 (
    input  n__1351,
    input  n__1363,
    input  n__1365,
    input  n__1425,
    input  n__1505,
    output n__1420,
    output n__1475,
    output n__1516,
    output n__1559,
    output n__1598,
    output n__1629,
    output n__1694
);

    wire n__1409,
         n__1410,
         n__1411,
         n__1414,
         n__1416,
         n__1419,
         n__1421,
         n__1443,
         n__1445,
         n__1447,
         n__1448,
         n__1449,
         n__1458,
         n__1470,
         n__1487,
         n__1490,
         n__1599,
         n__I13675;

    sky130_fd_sc_hd__nor3_2 inst_167 (
        .A(n__1365),
        .B(n__1470),
        .C(n__1416),
        .Y(n__1419)
    );

    sky130_fd_sc_hd__a21o_2 inst_275 (
        .A1(n__1443),
        .A2(n__1421),
        .B1(n__1363),
        .X(n__1490)
    );

    sky130_fd_sc_hd__and3b_2 inst_276 (
        .A_N(n__1470),
        .B(n__1443),
        .C(n__1445),
        .X(n__1487)
    );

    sky130_fd_sc_hd__a31oi_2 inst_277 (
        .A1(n__1447),
        .A2(n__1448),
        .A3(n__1449),
        .B1(n__1445),
        .Y(n__1411)
    );

    sky130_fd_sc_hd__nand2b_2 inst_322 (
        .A_N(n__1351),
        .B(n__1365),
        .Y(n__1443)
    );

    sky130_fd_sc_hd__nand2b_2 inst_330 (
        .A_N(n__1365),
        .B(n__1351),
        .Y(n__1421)
    );

    sky130_fd_sc_hd__o31a_2 inst_331 (
        .A1(n__1410),
        .A2(n__1411),
        .A3(n__1419),
        .B1(n__1414),
        .X(n__1420)
    );

    sky130_fd_sc_hd__nand2b_2 inst_334 (
        .A_N(n__1365),
        .B(n__1505),
        .Y(n__1448)
    );

    sky130_fd_sc_hd__nand2b_2 inst_335 (
        .A_N(n__1505),
        .B(n__1365),
        .Y(n__1449)
    );

    sky130_fd_sc_hd__and2b_2 inst_394 (
        .A_N(n__1365),
        .B(n__1351),
        .X(n__1458)
    );

    sky130_fd_sc_hd__o32ai_2 inst_395 (
        .A1(n__1410),
        .A2(n__1411),
        .A3(n__1409),
        .B1(n__1448),
        .B2(n__1351),
        .Y(n__1475)
    );

    sky130_fd_sc_hd__and2b_2 inst_396 (
        .A_N(n__1363),
        .B(n__1365),
        .X(n__1410)
    );

    sky130_fd_sc_hd__xnor2_2 inst_422 (
        .A(n__1487),
        .B(n__1490),
        .Y(n__1516)
    );

    sky130_fd_sc_hd__a21oi_2 inst_529 (
        .A1(n__1351),
        .A2(n__1363),
        .B1(n__1505),
        .Y(n__1445)
    );

    sky130_fd_sc_hd__o22a_2 inst_1778 (
        .A1(n__1505),
        .A2(n__1598),
        .B1(n__1599),
        .B2(n__1470),
        .X(n__1629)
    );

    sky130_fd_sc_hd__a311o_2 inst_1780 (
        .A1(n__1447),
        .A2(n__1448),
        .A3(n__1449),
        .B1(n__1458),
        .C1(n__1445),
        .X(n__1414)
    );

    sky130_fd_sc_hd__and2_2 inst_1790 (
        .A(n__1351),
        .B(n__1363),
        .X(n__1416)
    );

    sky130_fd_sc_hd__conb_1 inst_1791 (
        .HI(n__I13675),
        .LO(n__1425)
    );

    sky130_fd_sc_hd__and2_2 inst_1797 (
        .A(n__1363),
        .B(n__1443),
        .X(n__1409)
    );

    sky130_fd_sc_hd__and2_2 inst_1798 (
        .A(n__1598),
        .B(n__1599),
        .X(n__1694)
    );

    sky130_fd_sc_hd__nand2_2 inst_2491 (
        .A(n__1365),
        .B(n__1505),
        .Y(n__1599)
    );

    sky130_fd_sc_hd__nand2_2 inst_2511 (
        .A(n__1351),
        .B(n__1363),
        .Y(n__1598)
    );

    sky130_fd_sc_hd__o21bai_2 inst_2512 (
        .A1(n__1470),
        .A2(n__1448),
        .B1_N(n__1487),
        .Y(n__1559)
    );

    sky130_fd_sc_hd__nor2_2 inst_2594 (
        .A(n__1351),
        .B(n__1363),
        .Y(n__1470)
    );

endmodule

// Cluster 6: 22 instances
module cluster_6 (
    input  I,
    input  clk,
    input  n__1034,
    input  n__1326,
    input  n__1672,
    input  n__1748,
    input  n__1750,
    input  n__736,
    input  n__857,
    input  next_EN,
    input  n__985,
    input  rst_n,
    output n__1288,
    output n__1719,
    output n__1770,
    output n__226,
    output n__294
);

    wire n__1399,
         n__1400,
         n__1433,
         n__1439,
         n__1480,
         n__1481,
         n__1488,
         n__1497,
         n__1521,
         n__1522,
         n__1567,
         n__1593,
         n__1594,
         n__1647,
         n__1654,
         n__1765,
         n__1778;

    sky130_fd_sc_hd__or4b_2 inst_90 (
        .A(n__857),
        .B(n__736),
        .C(n__1034),
        .D_N(n__985),
        .X(n__1400)
    );

    sky130_fd_sc_hd__nand4_2 inst_153 (
        .A(I),
        .B(next_EN),
        .C(n__1439),
        .D(n__1433),
        .Y(n__1594)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_192 (
        .CLK(clk),
        .D(n__1765),
        .Q(n__1593),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_213 (
        .CLK(clk),
        .D(n__1326),
        .Q(n__1288),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_227 (
        .CLK(clk),
        .D(n__1567),
        .Q(n__1522),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_232 (
        .CLK(clk),
        .D(n__1521),
        .Q(n__1488),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_253 (
        .CLK(clk),
        .D(n__1647),
        .Q(n__1439),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a21o_2 inst_272 (
        .A1(n__1522),
        .A2(n__1497),
        .B1(n__1488),
        .X(n__1521)
    );

    sky130_fd_sc_hd__and4bb_2 inst_298 (
        .A_N(n__736),
        .B_N(n__1034),
        .C(n__985),
        .D(n__857),
        .X(n__1719)
    );

    sky130_fd_sc_hd__and4bb_2 inst_307 (
        .A_N(n__857),
        .B_N(n__1034),
        .C(n__985),
        .D(n__736),
        .X(n__1433)
    );

    sky130_fd_sc_hd__nand2b_2 inst_320 (
        .A_N(n__1593),
        .B(n__1594),
        .Y(n__1765)
    );

    sky130_fd_sc_hd__and2b_2 inst_388 (
        .A_N(n__1439),
        .B(n__1593),
        .X(n__226)
    );

    sky130_fd_sc_hd__or4_2 inst_439 (
        .A(n__1488),
        .B(n__1480),
        .C(n__1400),
        .D(n__1399),
        .X(n__1481)
    );

    sky130_fd_sc_hd__a31o_2 inst_494 (
        .A1(I),
        .A2(next_EN),
        .A3(n__1719),
        .B1(n__1672),
        .X(n__1778)
    );

    sky130_fd_sc_hd__a31o_2 inst_507 (
        .A1(I),
        .A2(next_EN),
        .A3(n__1433),
        .B1(n__1439),
        .X(n__1654)
    );

    sky130_fd_sc_hd__o21a_2 inst_1732 (
        .A1(n__1748),
        .A2(n__1750),
        .B1(n__1778),
        .X(n__1770)
    );

    sky130_fd_sc_hd__o21a_2 inst_1746 (
        .A1(n__1522),
        .A2(n__1497),
        .B1(n__1481),
        .X(n__1567)
    );

    sky130_fd_sc_hd__o21a_2 inst_1747 (
        .A1(n__1593),
        .A2(n__1594),
        .B1(n__1654),
        .X(n__1647)
    );

    sky130_fd_sc_hd__inv_2 inst_1762 (
        .A(n__1522),
        .Y(n__1480)
    );

    sky130_fd_sc_hd__and2_2 inst_1785 (
        .A(n__1488),
        .B(n__1480),
        .X(n__294)
    );

    sky130_fd_sc_hd__nand2_2 inst_2497 (
        .A(I),
        .B(next_EN),
        .Y(n__1399)
    );

    sky130_fd_sc_hd__nor2_2 inst_2551 (
        .A(n__1400),
        .B(n__1399),
        .Y(n__1497)
    );

endmodule

// Cluster 7: 21 instances
module cluster_7 (
    input  I,
    input  clk,
    input  n__20,
    input  n__3146,
    input  n__3148,
    input  n__319,
    input  n__3320,
    input  n__3326,
    input  n__3369,
    input  n__3676,
    input  n__3677,
    input  n__3682,
    input  n__3683,
    input  n__380,
    input  n__832,
    input  next_EN,
    input  rst_n,
    output n__2474,
    output n__2479,
    output n__3139,
    output n__3207,
    output n__3249,
    output n__3283,
    output n__3325,
    output n__3370,
    output n__3414,
    output n__3675,
    output n__3686,
    output n__3720
);

    wire n__3322,
         n__3379,
         n__3463,
         n__3471,
         n__3473,
         n__3496,
         n__3502,
         n__3561,
         n__3628;

    sky130_fd_sc_hd__or4b_2 inst_87 (
        .A(n__319),
        .B(n__832),
        .C(n__380),
        .D_N(n__20),
        .X(n__3249)
    );

    sky130_fd_sc_hd__or4b_2 inst_91 (
        .A(n__20),
        .B(n__319),
        .C(n__832),
        .D_N(n__380),
        .X(n__3686)
    );

    sky130_fd_sc_hd__nand4_2 inst_155 (
        .A(I),
        .B(next_EN),
        .C(n__3471),
        .D(n__3502),
        .Y(n__3496)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_194 (
        .CLK(clk),
        .D(n__3463),
        .Q(n__3473),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_202 (
        .CLK(clk),
        .D(n__3379),
        .Q(n__3325),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_231 (
        .CLK(clk),
        .D(n__3628),
        .Q(n__3471),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_249 (
        .CLK(clk),
        .D(n__3683),
        .Q(n__3675),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_256 (
        .CLK(clk),
        .D(n__3146),
        .Q(n__3139),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a21o_2 inst_271 (
        .A1(n__3320),
        .A2(n__3322),
        .B1(n__3325),
        .X(n__3379)
    );

    sky130_fd_sc_hd__and4bb_2 inst_292 (
        .A_N(n__832),
        .B_N(n__380),
        .C(n__319),
        .D(n__20),
        .X(n__3502)
    );

    sky130_fd_sc_hd__nand2b_2 inst_324 (
        .A_N(n__3473),
        .B(n__3496),
        .Y(n__3463)
    );

    sky130_fd_sc_hd__and2b_2 inst_367 (
        .A_N(n__3471),
        .B(n__3473),
        .X(n__2479)
    );

    sky130_fd_sc_hd__a31o_2 inst_500 (
        .A1(I),
        .A2(next_EN),
        .A3(n__3502),
        .B1(n__3471),
        .X(n__3561)
    );

    sky130_fd_sc_hd__o21a_2 inst_1720 (
        .A1(n__3676),
        .A2(n__3677),
        .B1(n__3682),
        .X(n__3720)
    );

    sky130_fd_sc_hd__o21a_2 inst_1731 (
        .A1(n__3473),
        .A2(n__3496),
        .B1(n__3561),
        .X(n__3628)
    );

    sky130_fd_sc_hd__o21a_2 inst_1742 (
        .A1(n__3320),
        .A2(n__3322),
        .B1(n__3369),
        .X(n__3370)
    );

    sky130_fd_sc_hd__inv_2 inst_1765 (
        .A(n__3320),
        .Y(n__3414)
    );

    sky130_fd_sc_hd__inv_2 inst_1769 (
        .A(n__3139),
        .Y(n__3207)
    );

    sky130_fd_sc_hd__and2_2 inst_1784 (
        .A(n__3148),
        .B(n__3207),
        .X(n__3283)
    );

    sky130_fd_sc_hd__and2_2 inst_1794 (
        .A(n__3325),
        .B(n__3414),
        .X(n__2474)
    );

    sky130_fd_sc_hd__nor2_2 inst_2570 (
        .A(n__3249),
        .B(n__3326),
        .Y(n__3322)
    );

endmodule

// Cluster 8: 16 instances
module cluster_8 (
    input  I,
    input  clk,
    input  n__20,
    input  n__319,
    input  n__3675,
    input  n__3677,
    input  n__3720,
    input  n__3751,
    input  n__380,
    input  n__3808,
    input  n__3863,
    input  n__3970,
    input  n__832,
    input  next_EN,
    input  rst_n,
    output n__2393,
    output n__2472,
    output n__3676,
    output n__3683,
    output n__3685,
    output n__3753,
    output n__3755,
    output n__3756,
    output n__3830,
    output n__3902
);

    wire n__3789,
         n__3848,
         n__3860,
         n__3861,
         n__3959,
         n__3962;

    sky130_fd_sc_hd__nand4_2 inst_148 (
        .A(I),
        .B(next_EN),
        .C(n__3755),
        .D(n__3756),
        .Y(n__3789)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_188 (
        .CLK(clk),
        .D(n__3962),
        .Q(n__3902),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_201 (
        .CLK(clk),
        .D(n__3720),
        .Q(n__3676),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_205 (
        .CLK(clk),
        .D(n__3860),
        .Q(n__3861),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_248 (
        .CLK(clk),
        .D(n__3848),
        .Q(n__3755),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a21o_2 inst_283 (
        .A1(n__3676),
        .A2(n__3677),
        .B1(n__3675),
        .X(n__3683)
    );

    sky130_fd_sc_hd__and4bb_2 inst_304 (
        .A_N(n__20),
        .B_N(n__832),
        .C(n__380),
        .D(n__319),
        .X(n__3756)
    );

    sky130_fd_sc_hd__nand2b_2 inst_323 (
        .A_N(n__3861),
        .B(n__3863),
        .Y(n__3860)
    );

    sky130_fd_sc_hd__nand2b_2 inst_336 (
        .A_N(n__3751),
        .B(n__3789),
        .Y(n__3753)
    );

    sky130_fd_sc_hd__and2b_2 inst_366 (
        .A_N(n__3755),
        .B(n__3751),
        .X(n__3830)
    );

    sky130_fd_sc_hd__and2b_2 inst_387 (
        .A_N(n__3902),
        .B(n__3861),
        .X(n__2472)
    );

    sky130_fd_sc_hd__a31o_2 inst_488 (
        .A1(I),
        .A2(next_EN),
        .A3(n__3970),
        .B1(n__3902),
        .X(n__3959)
    );

    sky130_fd_sc_hd__o21a_2 inst_1730 (
        .A1(n__3751),
        .A2(n__3789),
        .B1(n__3808),
        .X(n__3848)
    );

    sky130_fd_sc_hd__o21a_2 inst_1740 (
        .A1(n__3861),
        .A2(n__3863),
        .B1(n__3959),
        .X(n__3962)
    );

    sky130_fd_sc_hd__inv_2 inst_1756 (
        .A(n__3676),
        .Y(n__3685)
    );

    sky130_fd_sc_hd__and2_2 inst_1792 (
        .A(n__3675),
        .B(n__3685),
        .X(n__2393)
    );

endmodule

// Cluster 9: 18 instances
module cluster_9 (
    input  I,
    input  clk,
    input  n__1526,
    input  n__1627,
    input  n__1718,
    input  n__20,
    input  n__319,
    input  n__380,
    input  n__832,
    input  next_EN,
    input  rst_n,
    output n__1557,
    output n__1720,
    output n__1723,
    output n__1735,
    output n__1738,
    // FIX: n__1495 was only ever a local wire inside cluster_9 before --
    // it needs to be an output too, because a downstream gate outside
    // cluster_9 (inst_1789, now living inside cluster_success as one of
    // the "loose" gates) has an absorbed-inverter dependency on it
    // (originally computed via inst_1753 in the flat netlist, which the
    // hierarchicalization step correctly absorbed into an and2b_2 -- but
    // never exposed n__1495 itself as a port to route it across).
    output n__1495
);

    wire n__1568,
         n__1587,
         n__1628,
         n__1639,
         n__1668,
         n__1669,
         n__1705,
         n__1706,
         n__1714,
         n__1734,
         n__1786,
         n__I13610;

    sky130_fd_sc_hd__conb_1 inst_45 (
        .HI(n__1627),
        .LO(n__I13610)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_240 (
        .CLK(clk),
        .D(n__1786),
        .Q(n__1735),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_243 (
        .CLK(clk),
        .D(n__1568),
        .Q(n__1495),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_244 (
        .CLK(clk),
        .D(n__1587),
        .Q(n__1639),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a22o_2 inst_357 (
        .A1(n__1668),
        .A2(n__1735),
        .B1(n__1734),
        .B2(n__1628),
        .X(n__1786)
    );

    sky130_fd_sc_hd__or4bb_2 inst_358 (
        .A(n__319),
        .B(n__380),
        .C_N(n__832),
        .D_N(n__20),
        .X(n__1738)
    );

    sky130_fd_sc_hd__or4_2 inst_436 (
        .A(n__319),
        .B(n__20),
        .C(n__380),
        .D(n__832),
        .X(n__1720)
    );

    sky130_fd_sc_hd__a31o_2 inst_508 (
        .A1(n__1526),
        .A2(next_EN),
        .A3(n__1714),
        .B1(n__1495),
        .X(n__1568)
    );

    sky130_fd_sc_hd__a21oi_2 inst_516 (
        .A1(n__1706),
        .A2(n__1669),
        .B1(n__1705),
        .Y(n__1587)
    );

    sky130_fd_sc_hd__o211a_2 inst_542 (
        .A1(n__1639),
        .A2(n__1669),
        .B1(n__1718),
        .C1(next_EN),
        .X(n__1734)
    );

    sky130_fd_sc_hd__mux2_1 inst_583 (
        .A0(n__1526),
        .A1(n__1706),
        .S(n__1668),
        .X(n__1705)
    );

    sky130_fd_sc_hd__mux2_1 inst_584 (
        .A0(n__1669),
        .A1(n__1718),
        .S(n__1639),
        .X(n__1714)
    );

    sky130_fd_sc_hd__buf_2 inst_585 (
        .A(n__1720),
        .X(n__1723)
    );

        // removed inv inst_1753 (absorbed)


    sky130_fd_sc_hd__inv_2 inst_1767 (
        .A(n__1639),
        .Y(n__1706)
    );

    sky130_fd_sc_hd__inv_2 inst_1770 (
        .A(n__1526),
        .Y(n__1628)
    );

    sky130_fd_sc_hd__inv_2 inst_1774 (
        .A(next_EN),
        .Y(n__1668)
    );

    sky130_fd_sc_hd__nand2_2 inst_2519 (
        .A(n__1735),
        .B(I),
        .Y(n__1669)
    );

endmodule

// Cluster 10: 16 instances
module cluster_10 (
    input  I,
    input  clk,
    input  n__1627,
    input  n__1738,
    input  n__2072,
    input  n__2109,
    input  n__2173,
    input  n__2218,
    input  n__2255,
    input  n__2268,
    input  n__2386,
    input  n__2393,
    input  n__2416,
    input  n__2418,
    input  n__2422,
    input  n__2459,
    input  n__2463,
    input  n__2472,
    input  n__2474,
    input  n__2475,
    input  n__2479,
    input  n__3283,
    input  n__3830,
    input  next_EN,
    input  rst_n,
    output n__2112,
    output n__2140,
    output n__2253,
    output n__2403,
    output n__2419,
    output n__2505
);

    wire n__2141,
         n__2183,
         n__2217,
         n__2254,
         n__2388,
         n__2396,
         n__2415,
         n__2467,
         n__2477,
         n__2545;

    sky130_fd_sc_hd__a221o_2 inst_171 (
        .A1(n__1738),
        .A2(n__2140),
        .B1(n__1627),
        .B2(n__2218),
        .C1(n__2268),
        .X(n__2388)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_199 (
        .CLK(clk),
        .D(n__2477),
        .Q(n__2419),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_203 (
        .CLK(clk),
        .D(n__2396),
        .Q(n__2254),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_219 (
        .CLK(clk),
        .D(n__2183),
        .Q(n__2217),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_245 (
        .CLK(clk),
        .D(n__2141),
        .Q(n__2140),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__and4_2 inst_308 (
        .A(n__3830),
        .B(n__2393),
        .C(n__2475),
        .D(n__2472),
        .X(n__2467)
    );

    sky130_fd_sc_hd__and4_2 inst_311 (
        .A(n__3283),
        .B(n__2416),
        .C(n__2479),
        .D(n__2474),
        .X(n__2545)
    );

    sky130_fd_sc_hd__a31o_2 inst_497 (
        .A1(I),
        .A2(next_EN),
        .A3(n__2388),
        .B1(n__2255),
        .X(n__2403)
    );

    sky130_fd_sc_hd__and3_2 inst_546 (
        .A(n__2463),
        .B(n__2459),
        .C(n__2386),
        .X(n__2415)
    );

    sky130_fd_sc_hd__and3_2 inst_572 (
        .A(n__2467),
        .B(n__2545),
        .C(n__2415),
        .X(n__2505)
    );

    sky130_fd_sc_hd__mux2_1 inst_577 (
        .A0(n__2072),
        .A1(n__2173),
        .S(next_EN),
        .X(n__2112)
    );

    sky130_fd_sc_hd__mux2_1 inst_578 (
        .A0(n__2217),
        .A1(n__2254),
        .S(next_EN),
        .X(n__2183)
    );

    sky130_fd_sc_hd__mux2_1 inst_579 (
        .A0(n__2140),
        .A1(n__2109),
        .S(next_EN),
        .X(n__2141)
    );

    sky130_fd_sc_hd__mux2_1 inst_590 (
        .A0(n__2173),
        .A1(n__2217),
        .S(next_EN),
        .X(n__2253)
    );

    sky130_fd_sc_hd__mux2_1 inst_594 (
        .A0(n__2419),
        .A1(n__2422),
        .S(next_EN),
        .X(n__2477)
    );

    sky130_fd_sc_hd__mux2_1 inst_595 (
        .A0(n__2254),
        .A1(n__2418),
        .S(next_EN),
        .X(n__2396)
    );

endmodule

// Cluster 11: 16 instances
module cluster_11 (
    input  I,
    input  clk,
    input  n__1034,
    input  n__1958,
    input  n__1964,
    input  n__2018,
    input  n__2037,
    input  n__2081,
    input  n__2085,
    input  n__2204,
    input  n__736,
    input  n__857,
    input  next_EN,
    input  n__985,
    input  rst_n,
    output n__1185,
    output n__1920,
    output n__1921,
    output n__2038,
    output n__2061,
    output n__2065,
    output n__2142,
    output n__2145,
    output n__2200,
    output n__341
);

    wire n__1965,
         n__1966,
         n__2019,
         n__2034,
         n__2066,
         n__2123;

    sky130_fd_sc_hd__and4b_2 inst_26 (
        .A_N(n__1034),
        .B(n__985),
        .C(n__736),
        .D(n__857),
        .X(n__1921)
    );

    sky130_fd_sc_hd__nand4_2 inst_154 (
        .A(I),
        .B(next_EN),
        .C(n__1964),
        .D(n__2034),
        .Y(n__2061)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_193 (
        .CLK(clk),
        .D(n__1958),
        .Q(n__1920),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_221 (
        .CLK(clk),
        .D(n__2019),
        .Q(n__1966),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a21o_2 inst_270 (
        .A1(n__2018),
        .A2(n__2081),
        .B1(n__1966),
        .X(n__2019)
    );

    sky130_fd_sc_hd__and4bb_2 inst_303 (
        .A_N(n__857),
        .B_N(n__985),
        .C(n__1034),
        .D(n__736),
        .X(n__2034)
    );

    sky130_fd_sc_hd__and4bb_2 inst_306 (
        .A_N(n__736),
        .B_N(n__985),
        .C(n__1034),
        .D(n__857),
        .X(n__2145)
    );

    sky130_fd_sc_hd__and2b_2 inst_383 (
        .A_N(n__1964),
        .B(n__2037),
        .X(n__1185)
    );

    sky130_fd_sc_hd__or4_2 inst_437 (
        .A(n__1966),
        .B(n__1965),
        .C(n__2085),
        .D(n__2038),
        .X(n__2123)
    );

    sky130_fd_sc_hd__a31o_2 inst_492 (
        .A1(I),
        .A2(next_EN),
        .A3(n__2034),
        .B1(n__1964),
        .X(n__2066)
    );

    sky130_fd_sc_hd__a31o_2 inst_512 (
        .A1(I),
        .A2(next_EN),
        .A3(n__2145),
        .B1(n__2204),
        .X(n__2200)
    );

    sky130_fd_sc_hd__o21a_2 inst_1749 (
        .A1(n__2018),
        .A2(n__2081),
        .B1(n__2123),
        .X(n__2142)
    );

    sky130_fd_sc_hd__o21a_2 inst_1750 (
        .A1(n__2037),
        .A2(n__2061),
        .B1(n__2066),
        .X(n__2065)
    );

    sky130_fd_sc_hd__inv_2 inst_1766 (
        .A(n__2018),
        .Y(n__1965)
    );

    sky130_fd_sc_hd__and2_2 inst_1793 (
        .A(n__1966),
        .B(n__1965),
        .X(n__341)
    );

    sky130_fd_sc_hd__nand2_2 inst_2488 (
        .A(I),
        .B(next_EN),
        .Y(n__2038)
    );

endmodule

// Cluster 12: 14 instances
module cluster_12 (
    input  clk,
    input  n__1062,
    input  n__1135,
    input  n__684,
    input  n__686,
    input  n__769,
    input  n__802,
    input  n__803,
    input  n__971,
    input  n__979,
    input  rst_n,
    output n__1022,
    output n__548,
    output n__612,
    output n__716,
    output n__718,
    output n__719,
    output n__887,
    output n__888,
    output n__919,
    output n__923
);

    wire n__648,
         n__795,
         n__800,
         n__977;

    sky130_fd_sc_hd__dfrtp_2 inst_198 (
        .CLK(clk),
        .D(n__979),
        .Q(n__919),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__and4_2 inst_315 (
        .A(n__684),
        .B(n__686),
        .C(n__612),
        .D(n__716),
        .X(n__719)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_393 (
        .CLK(clk),
        .D(n__648),
        .Q(n__612),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__xnor2_2 inst_425 (
        .A(n__612),
        .B(n__800),
        .Y(n__648)
    );

    sky130_fd_sc_hd__a31o_2 inst_493 (
        .A1(n__612),
        .A2(n__803),
        .A3(n__971),
        .B1(n__769),
        .X(n__977)
    );

    sky130_fd_sc_hd__and3_2 inst_562 (
        .A(n__684),
        .B(n__686),
        .C(n__803),
        .X(n__548)
    );

    sky130_fd_sc_hd__nor3_2 inst_563 (
        .A(n__769),
        .B(n__919),
        .C(n__1135),
        .Y(n__716)
    );

    sky130_fd_sc_hd__o21a_2 inst_1735 (
        .A1(n__795),
        .A2(n__800),
        .B1(n__977),
        .X(n__718)
    );

    sky130_fd_sc_hd__o21a_2 inst_1752 (
        .A1(n__802),
        .A2(n__548),
        .B1(n__800),
        .X(n__923)
    );

    sky130_fd_sc_hd__inv_2 inst_1775 (
        .A(n__803),
        .Y(n__887)
    );

    sky130_fd_sc_hd__and2_2 inst_1781 (
        .A(n__612),
        .B(n__769),
        .X(n__888)
    );

    sky130_fd_sc_hd__nand2_2 inst_2507 (
        .A(n__803),
        .B(n__971),
        .Y(n__800)
    );

    sky130_fd_sc_hd__nand2_2 inst_2517 (
        .A(n__612),
        .B(n__769),
        .Y(n__795)
    );

    sky130_fd_sc_hd__nor2_2 inst_2576 (
        .A(n__803),
        .B(n__1062),
        .Y(n__1022)
    );

endmodule

// Cluster 13: 13 instances
module cluster_13 (
    input  I,
    input  clk,
    input  n__20,
    input  n__319,
    input  n__380,
    input  n__4155,
    input  n__4159,
    input  n__4160,
    input  n__4163,
    input  n__4250,
    input  n__4276,
    input  n__4300,
    input  n__4325,
    input  n__832,
    input  next_EN,
    input  rst_n,
    output n__2386,
    output n__2459,
    output n__4147,
    output n__4162,
    output n__4178,
    output n__4193,
    output n__4199,
    output n__4229,
    output n__4274,
    output n__4304,
    output n__4331
);

    wire n__4195,
         n__4231;

    sky130_fd_sc_hd__nand4_2 inst_147 (
        .A(I),
        .B(next_EN),
        .C(n__4199),
        .D(n__4229),
        .Y(n__4195)
    );

    sky130_fd_sc_hd__nand4_2 inst_158 (
        .A(I),
        .B(next_EN),
        .C(n__4274),
        .D(n__4325),
        .Y(n__4331)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_197 (
        .CLK(clk),
        .D(n__4159),
        .Q(n__4147),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_236 (
        .CLK(clk),
        .D(n__4276),
        .Q(n__4274),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_246 (
        .CLK(clk),
        .D(n__4231),
        .Q(n__4199),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a21o_2 inst_274 (
        .A1(n__4147),
        .A2(n__4155),
        .B1(n__4160),
        .X(n__4193)
    );

    sky130_fd_sc_hd__and4bb_2 inst_296 (
        .A_N(n__20),
        .B_N(n__380),
        .C(n__832),
        .D(n__319),
        .X(n__4229)
    );

    sky130_fd_sc_hd__nand2b_2 inst_318 (
        .A_N(n__4163),
        .B(n__4195),
        .Y(n__4162)
    );

    sky130_fd_sc_hd__nand2b_2 inst_339 (
        .A_N(n__4300),
        .B(n__4331),
        .Y(n__4304)
    );

    sky130_fd_sc_hd__and2b_2 inst_364 (
        .A_N(n__4274),
        .B(n__4300),
        .X(n__2386)
    );

    sky130_fd_sc_hd__o21a_2 inst_1741 (
        .A1(n__4163),
        .A2(n__4195),
        .B1(n__4250),
        .X(n__4231)
    );

    sky130_fd_sc_hd__inv_2 inst_1763 (
        .A(n__4147),
        .Y(n__4178)
    );

    sky130_fd_sc_hd__and2_2 inst_1782 (
        .A(n__4160),
        .B(n__4178),
        .X(n__2459)
    );

endmodule

// Cluster 14: 13 instances
module cluster_14 (
    input  n__1351,
    input  n__1363,
    input  n__1365,
    input  n__1505,
    output n__1976,
    output n__1992,
    output n__2006,
    output n__2088,
    output n__2102,
    output n__2117,
    output n__2120,
    output n__2158
);

    wire n__1973,
         n__1977,
         n__2002,
         n__2042,
         n__2043;

    sky130_fd_sc_hd__and3b_2 inst_28 (
        .A_N(n__1505),
        .B(n__1973),
        .C(n__1365),
        .X(n__2117)
    );

    sky130_fd_sc_hd__and3b_2 inst_29 (
        .A_N(n__1505),
        .B(n__1365),
        .C(n__1363),
        .X(n__2088)
    );

    sky130_fd_sc_hd__o21ai_2 inst_161 (
        .A1(n__1363),
        .A2(n__1365),
        .B1(n__1505),
        .Y(n__2158)
    );

    sky130_fd_sc_hd__nand2b_2 inst_332 (
        .A_N(n__1351),
        .B(n__1363),
        .Y(n__1977)
    );

    sky130_fd_sc_hd__and2b_2 inst_381 (
        .A_N(n__1992),
        .B(n__1977),
        .X(n__1976)
    );

    sky130_fd_sc_hd__and2b_2 inst_385 (
        .A_N(n__1363),
        .B(n__1351),
        .X(n__1973)
    );

    sky130_fd_sc_hd__o221a_2 inst_485 (
        .A1(n__1992),
        .A2(n__1973),
        .B1(n__2043),
        .B2(n__2042),
        .C1(n__1977),
        .X(n__2120)
    );

    sky130_fd_sc_hd__a21oi_2 inst_523 (
        .A1(n__1992),
        .A2(n__1973),
        .B1(n__2002),
        .Y(n__2006)
    );

    sky130_fd_sc_hd__a21oi_2 inst_527 (
        .A1(n__1351),
        .A2(n__1505),
        .B1(n__1365),
        .Y(n__2042)
    );

    sky130_fd_sc_hd__mux2_1 inst_592 (
        .A0(n__1363),
        .A1(n__1505),
        .S(n__1365),
        .X(n__2002)
    );

    sky130_fd_sc_hd__nand2_2 inst_2504 (
        .A(n__1351),
        .B(n__1992),
        .Y(n__2102)
    );

    sky130_fd_sc_hd__or2_2 inst_2546 (
        .A(n__1365),
        .B(n__1505),
        .X(n__1992)
    );

    sky130_fd_sc_hd__nor2_2 inst_2578 (
        .A(n__1505),
        .B(n__1973),
        .Y(n__2043)
    );

endmodule

// Cluster 15: 12 instances
module cluster_15 (
    input  n__1351,
    input  n__1363,
    input  n__1365,
    input  n__1505,
    input  n__1598,
    input  n__1815,
    output n__1693,
    output n__1816,
    output n__1822,
    output n__1827,
    output n__1881,
    output n__1905,
    output n__1907,
    output n__1928
);

    wire n__1817,
         n__1834,
         n__1871,
         n__I13676;

    sky130_fd_sc_hd__conb_1 inst_42 (
        .HI(n__I13676),
        .LO(n__1815)
    );

    sky130_fd_sc_hd__nor3_2 inst_168 (
        .A(n__1351),
        .B(n__1363),
        .C(n__1365),
        .Y(n__1834)
    );

    sky130_fd_sc_hd__nor4b_2 inst_174 (
        .A(n__1351),
        .B(n__1363),
        .C(n__1365),
        .D_N(n__1505),
        .Y(n__1827)
    );

    sky130_fd_sc_hd__a21o_2 inst_288 (
        .A1(n__1351),
        .A2(n__1817),
        .B1(n__1827),
        .X(n__1822)
    );

    sky130_fd_sc_hd__and4bb_2 inst_293 (
        .A_N(n__1365),
        .B_N(n__1505),
        .C(n__1351),
        .D(n__1363),
        .X(n__1905)
    );

    sky130_fd_sc_hd__and4b_2 inst_294 (
        .A_N(n__1505),
        .B(n__1365),
        .C(n__1363),
        .D(n__1351),
        .X(n__1881)
    );

    sky130_fd_sc_hd__or3_2 inst_462 (
        .A(n__1871),
        .B(n__1881),
        .C(n__1827),
        .X(n__1928)
    );

    sky130_fd_sc_hd__a31o_2 inst_487 (
        .A1(n__1351),
        .A2(n__1365),
        .A3(n__1817),
        .B1(n__1834),
        .X(n__1907)
    );

    sky130_fd_sc_hd__a21oi_2 inst_521 (
        .A1(n__1351),
        .A2(n__1363),
        .B1(n__1505),
        .Y(n__1871)
    );

    sky130_fd_sc_hd__o22a_2 inst_1779 (
        .A1(n__1363),
        .A2(n__1365),
        .B1(n__1871),
        .B2(n__1881),
        .X(n__1816)
    );

    sky130_fd_sc_hd__nor2_2 inst_2558 (
        .A(n__1505),
        .B(n__1598),
        .Y(n__1693)
    );

    sky130_fd_sc_hd__nor2_2 inst_2572 (
        .A(n__1363),
        .B(n__1505),
        .Y(n__1817)
    );

endmodule

// Cluster 16: 10 instances
module cluster_16 (
    input  I,
    input  clk,
    input  n__20,
    input  n__319,
    input  n__380,
    input  n__3968,
    input  n__4028,
    input  n__4054,
    input  n__4147,
    input  n__4160,
    input  n__4162,
    input  n__4178,
    input  n__832,
    input  next_EN,
    input  rst_n,
    output n__2475,
    output n__4023,
    output n__4100,
    output n__4155,
    output n__4159,
    output n__4163
);

    wire n__4108,
         n__4122,
         n__4127,
         n__4157;

    sky130_fd_sc_hd__or4b_2 inst_88 (
        .A(n__20),
        .B(n__319),
        .C(n__380),
        .D_N(n__832),
        .X(n__4122)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_208 (
        .CLK(clk),
        .D(n__4108),
        .Q(n__4023),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_261 (
        .CLK(clk),
        .D(n__4162),
        .Q(n__4163),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__nand2b_2 inst_316 (
        .A_N(n__4023),
        .B(n__4054),
        .Y(n__4108)
    );

    sky130_fd_sc_hd__and2b_2 inst_380 (
        .A_N(n__4028),
        .B(n__4023),
        .X(n__2475)
    );

    sky130_fd_sc_hd__or4_2 inst_434 (
        .A(n__4160),
        .B(n__4178),
        .C(n__4122),
        .D(n__4157),
        .X(n__4127)
    );

    sky130_fd_sc_hd__a31o_2 inst_510 (
        .A1(I),
        .A2(next_EN),
        .A3(n__3968),
        .B1(n__4028),
        .X(n__4100)
    );

    sky130_fd_sc_hd__o21a_2 inst_1736 (
        .A1(n__4147),
        .A2(n__4155),
        .B1(n__4127),
        .X(n__4159)
    );

    sky130_fd_sc_hd__nand2_2 inst_2490 (
        .A(I),
        .B(next_EN),
        .Y(n__4157)
    );

    sky130_fd_sc_hd__nor2_2 inst_2596 (
        .A(n__4122),
        .B(n__4157),
        .Y(n__4155)
    );

endmodule

// Cluster 17: 9 instances
module cluster_17 (
    input  I,
    input  clk,
    input  n__1022,
    input  n__1029,
    input  n__684,
    input  n__802,
    input  n__888,
    input  n__919,
    input  next_EN,
    input  n__971,
    input  rst_n,
    output n__1028,
    output n__1062,
    output n__1075,
    output n__1084,
    output n__1135,
    output n__803,
    output n__982
);

    wire n__1068,
         n__1104;

    sky130_fd_sc_hd__dfrtp_2 inst_185 (
        .CLK(clk),
        .D(n__1022),
        .Q(n__1104),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_222 (
        .CLK(clk),
        .D(n__1068),
        .Q(n__982),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__and4_2 inst_313 (
        .A(n__919),
        .B(n__888),
        .C(n__803),
        .D(n__971),
        .X(n__1028)
    );

    sky130_fd_sc_hd__and2b_2 inst_370 (
        .A_N(n__684),
        .B(n__1104),
        .X(n__1075)
    );

    sky130_fd_sc_hd__or3_2 inst_446 (
        .A(n__1104),
        .B(n__802),
        .C(n__982),
        .X(n__1135)
    );

    sky130_fd_sc_hd__xor2_2 inst_469 (
        .A(n__982),
        .B(n__1028),
        .X(n__1068)
    );

    sky130_fd_sc_hd__a21oi_2 inst_519 (
        .A1(I),
        .A2(next_EN),
        .B1(n__1104),
        .Y(n__1062)
    );

    sky130_fd_sc_hd__and3_2 inst_548 (
        .A(n__1104),
        .B(I),
        .C(next_EN),
        .X(n__803)
    );

    sky130_fd_sc_hd__and3_2 inst_556 (
        .A(n__1029),
        .B(n__1075),
        .C(n__888),
        .X(n__1084)
    );

endmodule

// Cluster 18: 8 instances
module cluster_18 (
    input  I,
    input  clk,
    input  n__1672,
    input  n__1748,
    input  n__1750,
    input  n__1920,
    input  n__1921,
    input  next_EN,
    input  rst_n,
    output n__1908,
    output n__1958,
    output n__203,
    output n__204
);

    wire n__1856,
         n__1857,
         n__1919,
         n__1955;

    sky130_fd_sc_hd__nand4_2 inst_152 (
        .A(I),
        .B(next_EN),
        .C(n__1920),
        .D(n__1921),
        .Y(n__1919)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_230 (
        .CLK(clk),
        .D(n__1857),
        .Q(n__1856),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__nand2b_2 inst_317 (
        .A_N(n__1856),
        .B(n__1919),
        .Y(n__1857)
    );

    sky130_fd_sc_hd__nand2b_2 inst_326 (
        .A_N(n__1748),
        .B(n__1750),
        .Y(n__1908)
    );

    sky130_fd_sc_hd__and2b_2 inst_369 (
        .A_N(n__1920),
        .B(n__1856),
        .X(n__204)
    );

    sky130_fd_sc_hd__and2b_2 inst_390 (
        .A_N(n__1672),
        .B(n__1748),
        .X(n__203)
    );

    sky130_fd_sc_hd__a31o_2 inst_504 (
        .A1(I),
        .A2(next_EN),
        .A3(n__1921),
        .B1(n__1920),
        .X(n__1955)
    );

    sky130_fd_sc_hd__o21a_2 inst_1738 (
        .A1(n__1856),
        .A2(n__1919),
        .B1(n__1955),
        .X(n__1958)
    );

endmodule

// Cluster 19: 8 instances
module cluster_19 (
    input  clk,
    input  n__2140,
    input  n__2253,
    input  n__2403,
    input  n__2407,
    input  next_EN,
    input  rst_n,
    output n__2173,
    output n__2218,
    output n__2255,
    output n__2258,
    output n__2418,
    output n__2421
);

    wire n__2333,
         n__2355;

    sky130_fd_sc_hd__dfrtp_2 inst_183 (
        .CLK(clk),
        .D(n__2253),
        .Q(n__2173),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_211 (
        .CLK(clk),
        .D(n__2403),
        .Q(n__2255),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_216 (
        .CLK(clk),
        .D(n__2407),
        .Q(n__2418),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_254 (
        .CLK(clk),
        .D(n__2355),
        .Q(n__2421),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_257 (
        .CLK(clk),
        .D(n__2333),
        .Q(n__2218),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__mux2_1 inst_580 (
        .A0(n__2421),
        .A1(n__2218),
        .S(next_EN),
        .X(n__2355)
    );

    sky130_fd_sc_hd__mux2_1 inst_581 (
        .A0(n__2218),
        .A1(n__2140),
        .S(next_EN),
        .X(n__2333)
    );

    sky130_fd_sc_hd__inv_2 inst_1761 (
        .A(n__2255),
        .Y(n__2258)
    );

endmodule

// ========== Top-level module ==========

module JaneStreet (
    input  I,
    input  clk,
    input  enable,
    input  rst_n,
    output O_0_,
    output O_1_,
    output O_2_,
    output O_3_,
    output O_4_,
    output O_5_,
    output O_6_,
    output O_7_,
    output success
);

    wire n__1022,
         n__1028,
         n__1029,
         n__1034,
         n__1062,
         n__1075,
         n__1084,
         n__1135,
         n__1138,
         n__1185,
         n__1288,
         n__1326,
         n__1351,
         n__1363,
         n__1365,
         n__1420,
         n__1425,
         n__1475,
         n__1495,
         n__1505,
         n__1508,
         n__1510,
         n__1516,
         n__1526,
         n__1527,
         n__1528,
         n__1531,
         n__1554,
         n__1557,
         n__1559,
         n__1581,
         n__1598,
         n__1627,
         n__1629,
         n__1663,
         n__1672,
         n__1688,
         n__1693,
         n__1694,
         n__1700,
         n__1718,
         n__1719,
         n__1720,
         n__1723,
         n__1735,
         n__1738,
         n__1748,
         n__1750,
         n__1770,
         n__1773,
         n__1799,
         n__1815,
         n__1816,
         n__1822,
         n__1825,
         n__1827,
         n__1881,
         n__1905,
         n__1907,
         n__1908,
         n__1920,
         n__1921,
         n__1926,
         n__1928,
         n__1938,
         n__1958,
         n__1964,
         n__1976,
         n__1992,
         n__20,
         n__2004,
         n__2006,
         n__2018,
         n__203,
         n__2037,
         n__2038,
         n__204,
         n__2061,
         n__2065,
         n__2072,
         n__2073,
         n__2081,
         n__2085,
         n__2088,
         n__2102,
         n__2109,
         n__2112,
         n__2117,
         n__2120,
         n__2140,
         n__2142,
         n__2145,
         n__2155,
         n__2158,
         n__2164,
         n__2173,
         n__2190,
         n__2197,
         n__2200,
         n__2204,
         n__2218,
         n__2221,
         n__2223,
         n__2224,
         n__2231,
         n__2235,
         n__2239,
         n__2243,
         n__2253,
         n__2255,
         n__2258,
         n__226,
         n__2268,
         n__2274,
         n__2276,
         n__2283,
         n__2296,
         n__2298,
         n__2301,
         n__2302,
         n__2307,
         n__2313,
         n__2369,
         n__2374,
         n__2386,
         n__2393,
         n__2403,
         n__2407,
         n__2409,
         n__2416,
         n__2418,
         n__2419,
         n__2421,
         n__2422,
         n__2439,
         n__2459,
         n__2463,
         n__2472,
         n__2474,
         n__2475,
         n__2479,
         n__2491,
         n__2501,
         n__2505,
         n__2507,
         n__2521,
         n__2555,
         n__2599,
         n__2610,
         n__2667,
         n__2671,
         n__2674,
         n__2676,
         n__2678,
         n__2709,
         n__2794,
         n__2810,
         n__2818,
         n__2819,
         n__2821,
         n__2834,
         n__2880,
         n__289,
         n__2923,
         n__2924,
         n__294,
         n__2944,
         n__2985,
         n__3037,
         n__3049,
         n__3136,
         n__3139,
         n__3141,
         n__3142,
         n__3144,
         n__3145,
         n__3146,
         n__3148,
         n__3173,
         n__319,
         n__3207,
         n__322,
         n__3223,
         n__3249,
         n__3283,
         n__3320,
         n__3325,
         n__3326,
         n__3369,
         n__3370,
         n__3377,
         n__341,
         n__3414,
         n__3419,
         n__342,
         n__3420,
         n__343,
         n__3435,
         n__349,
         n__3516,
         n__3518,
         n__3543,
         n__3553,
         n__3613,
         n__3616,
         n__3675,
         n__3676,
         n__3677,
         n__3682,
         n__3683,
         n__3685,
         n__3686,
         n__3720,
         n__3751,
         n__3753,
         n__3755,
         n__3756,
         n__3759,
         n__377,
         n__3771,
         n__378,
         n__380,
         n__3808,
         n__3818,
         n__3830,
         n__3863,
         n__3902,
         n__3919,
         n__3968,
         n__397,
         n__3970,
         n__399,
         n__401,
         n__4023,
         n__4027,
         n__4028,
         n__404,
         n__4054,
         n__4100,
         n__4147,
         n__4155,
         n__4159,
         n__4160,
         n__4162,
         n__4163,
         n__4166,
         n__4176,
         n__4178,
         n__4193,
         n__4199,
         n__4201,
         n__4209,
         n__4229,
         n__4236,
         n__4240,
         n__4250,
         n__4274,
         n__4276,
         n__4298,
         n__4300,
         n__4304,
         n__4322,
         n__4325,
         n__4331,
         n__436,
         n__519,
         n__545,
         n__548,
         n__612,
         n__683,
         n__684,
         n__686,
         n__716,
         n__718,
         n__719,
         n__736,
         n__769,
         n__791,
         n__802,
         n__803,
         n__832,
         n__840,
         n__842,
         n__857,
         n__881,
         n__887,
         n__888,
         n__895,
         n__919,
         n__923,
         next_EN,
         n__971,
         n__979,
         n__982,
         n__985,
         n__I13673,
         n__I13674;

    // Functional blocks
    cluster_1 u_cluster_1 (
        .n__20(n__20),
        .n__319(n__319),
        .n__322(n__322),
        .n__377(n__377),
        .n__378(n__378),
        .n__380(n__380),
        .n__436(n__436),
        .n__832(n__832),
        .n__1034(n__1034),
        .n__736(n__736),
        .n__857(n__857),
        .n__985(n__985)
    );

    cluster_2 u_cluster_2 (
        .I(I),
        .clk(clk),
        .next_EN(next_EN),
        .n__1351(n__1351),
        .n__1363(n__1363),
        .n__1365(n__1365),
        .n__1420(n__1420),
        .n__1425(n__1425),
        .n__1475(n__1475),
        .n__1505(n__1505),
        .n__1516(n__1516),
        .n__1559(n__1559),
        .n__1629(n__1629),
        .n__1693(n__1693),
        .n__1694(n__1694),
        .n__1815(n__1815),
        .n__1816(n__1816),
        .n__1822(n__1822),
        .n__1905(n__1905),
        .n__1907(n__1907),
        .n__1926(n__1926),
        .n__1928(n__1928),
        .n__1938(n__1938),
        .n__1976(n__1976),
        .n__2004(n__2004),
        .n__2006(n__2006),
        .n__2088(n__2088),
        .n__2117(n__2117),
        .n__2120(n__2120),
        .n__2155(n__2155),
        .n__2190(n__2190),
        .n__2223(n__2223),
        .n__2231(n__2231),
        .n__2239(n__2239),
        .n__2298(n__2298),
        .n__2301(n__2301),
        .n__2313(n__2313),
        .n__2610(n__2610),
        .n__2676(n__2676),
        .n__2678(n__2678),
        .n__2794(n__2794),
        .n__2810(n__2810),
        .n__3037(n__3037),
        .n__3377(n__3377),
        .n__3419(n__3419),
        .n__3420(n__3420),
        .rst_n(rst_n),
        .n__2224(n__2224),
        .n__2283(n__2283),
        .n__2307(n__2307),
        .n__2369(n__2369),
        .n__2599(n__2599),
        .n__2667(n__2667),
        .n__2671(n__2671),
        .n__2674(n__2674),
        .n__2709(n__2709),
        .n__2834(n__2834),
        .n__2944(n__2944),
        .n__3049(n__3049),
        .n__3435(n__3435),
        .n__3516(n__3516),
        .n__3518(n__3518),
        .n__3543(n__3543),
        .n__3553(n__3553),
        .n__3613(n__3613),
        .n__3616(n__3616),
        .n__3818(n__3818)
    );

    cluster_3 u_cluster_3 (
        .I(I),
        .clk(clk),
        .n__1034(n__1034),
        .n__1288(n__1288),
        .n__736(n__736),
        .n__857(n__857),
        .n__881(n__881),
        .next_EN(next_EN),
        .n__985(n__985),
        .rst_n(rst_n),
        .n__1326(n__1326),
        .n__349(n__349),
        .n__399(n__399),
        .n__401(n__401),
        .n__404(n__404),
        .n__840(n__840),
        .n__895(n__895)
    );

    cluster_4 u_cluster_4 (
        .clk(clk),
        .n__1084(n__1084),
        .n__3435(n__3435),
        .n__3516(n__3516),
        .n__3518(n__3518),
        .n__3543(n__3543),
        .n__3553(n__3553),
        .n__3613(n__3613),
        .n__3616(n__3616),
        .n__3771(n__3771),
        .n__3818(n__3818),
        .n__3919(n__3919),
        .n__791(n__791),
        .success(success),
        .O_0_(O_0_),
        .O_1_(O_1_),
        .O_2_(O_2_),
        .O_3_(O_3_),
        .O_4_(O_4_),
        .O_5_(O_5_),
        .O_6_(O_6_),
        .O_7_(O_7_),
        .n__1351(n__1351),
        .n__1363(n__1363),
        .n__1365(n__1365),
        .n__1505(n__1505),
        .n__3037(n__3037),
        .n__3377(n__3377),
        .n__3419(n__3419),
        .n__3420(n__3420)
    );

    cluster_5 u_cluster_5 (
        .n__1351(n__1351),
        .n__1363(n__1363),
        .n__1365(n__1365),
        .n__1425(n__1425),
        .n__1505(n__1505),
        .n__1420(n__1420),
        .n__1475(n__1475),
        .n__1516(n__1516),
        .n__1559(n__1559),
        .n__1598(n__1598),
        .n__1629(n__1629),
        .n__1694(n__1694)
    );

    cluster_6 u_cluster_6 (
        .I(I),
        .clk(clk),
        .n__1034(n__1034),
        .n__1326(n__1326),
        .n__1672(n__1672),
        .n__1748(n__1748),
        .n__1750(n__1750),
        .n__736(n__736),
        .n__857(n__857),
        .next_EN(next_EN),
        .n__985(n__985),
        .rst_n(rst_n),
        .n__1288(n__1288),
        .n__1719(n__1719),
        .n__1770(n__1770),
        .n__226(n__226),
        .n__294(n__294)
    );

    cluster_7 u_cluster_7 (
        .I(I),
        .clk(clk),
        .n__20(n__20),
        .n__3146(n__3146),
        .n__3148(n__3148),
        .n__319(n__319),
        .n__3320(n__3320),
        .n__3326(n__3326),
        .n__3369(n__3369),
        .n__3676(n__3676),
        .n__3677(n__3677),
        .n__3682(n__3682),
        .n__3683(n__3683),
        .n__380(n__380),
        .n__832(n__832),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__2474(n__2474),
        .n__2479(n__2479),
        .n__3139(n__3139),
        .n__3207(n__3207),
        .n__3249(n__3249),
        .n__3283(n__3283),
        .n__3325(n__3325),
        .n__3370(n__3370),
        .n__3414(n__3414),
        .n__3675(n__3675),
        .n__3686(n__3686),
        .n__3720(n__3720)
    );

    cluster_8 u_cluster_8 (
        .I(I),
        .clk(clk),
        .n__20(n__20),
        .n__319(n__319),
        .n__3675(n__3675),
        .n__3677(n__3677),
        .n__3720(n__3720),
        .n__3751(n__3751),
        .n__380(n__380),
        .n__3808(n__3808),
        .n__3863(n__3863),
        .n__3970(n__3970),
        .n__832(n__832),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__2393(n__2393),
        .n__2472(n__2472),
        .n__3676(n__3676),
        .n__3683(n__3683),
        .n__3685(n__3685),
        .n__3753(n__3753),
        .n__3755(n__3755),
        .n__3756(n__3756),
        .n__3830(n__3830),
        .n__3902(n__3902)
    );

    cluster_9 u_cluster_9 (
        .I(I),
        .clk(clk),
        .n__1526(n__1526),
        .n__1627(n__1627),
        .n__1718(n__1718),
        .n__20(n__20),
        .n__319(n__319),
        .n__380(n__380),
        .n__832(n__832),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__1557(n__1557),
        .n__1720(n__1720),
        .n__1723(n__1723),
        .n__1735(n__1735),
        .n__1738(n__1738),
        .n__1495(n__1495)
    );

    cluster_10 u_cluster_10 (
        .I(I),
        .clk(clk),
        .n__1627(n__1627),
        .n__1738(n__1738),
        .n__2072(n__2072),
        .n__2109(n__2109),
        .n__2173(n__2173),
        .n__2218(n__2218),
        .n__2255(n__2255),
        .n__2268(n__2268),
        .n__2386(n__2386),
        .n__2393(n__2393),
        .n__2416(n__2416),
        .n__2418(n__2418),
        .n__2422(n__2422),
        .n__2459(n__2459),
        .n__2463(n__2463),
        .n__2472(n__2472),
        .n__2474(n__2474),
        .n__2475(n__2475),
        .n__2479(n__2479),
        .n__3283(n__3283),
        .n__3830(n__3830),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__2112(n__2112),
        .n__2140(n__2140),
        .n__2253(n__2253),
        .n__2403(n__2403),
        .n__2419(n__2419),
        .n__2505(n__2505)
    );

    cluster_11 u_cluster_11 (
        .I(I),
        .clk(clk),
        .n__1034(n__1034),
        .n__1958(n__1958),
        .n__1964(n__1964),
        .n__2018(n__2018),
        .n__2037(n__2037),
        .n__2081(n__2081),
        .n__2085(n__2085),
        .n__2204(n__2204),
        .n__736(n__736),
        .n__857(n__857),
        .next_EN(next_EN),
        .n__985(n__985),
        .rst_n(rst_n),
        .n__1185(n__1185),
        .n__1920(n__1920),
        .n__1921(n__1921),
        .n__2038(n__2038),
        .n__2061(n__2061),
        .n__2065(n__2065),
        .n__2142(n__2142),
        .n__2145(n__2145),
        .n__2200(n__2200),
        .n__341(n__341)
    );

    cluster_12 u_cluster_12 (
        .clk(clk),
        .n__1062(n__1062),
        .n__1135(n__1135),
        .n__684(n__684),
        .n__686(n__686),
        .n__769(n__769),
        .n__802(n__802),
        .n__803(n__803),
        .n__971(n__971),
        .n__979(n__979),
        .rst_n(rst_n),
        .n__1022(n__1022),
        .n__548(n__548),
        .n__612(n__612),
        .n__716(n__716),
        .n__718(n__718),
        .n__719(n__719),
        .n__887(n__887),
        .n__888(n__888),
        .n__919(n__919),
        .n__923(n__923)
    );

    cluster_13 u_cluster_13 (
        .I(I),
        .clk(clk),
        .n__20(n__20),
        .n__319(n__319),
        .n__380(n__380),
        .n__4155(n__4155),
        .n__4159(n__4159),
        .n__4160(n__4160),
        .n__4163(n__4163),
        .n__4250(n__4250),
        .n__4276(n__4276),
        .n__4300(n__4300),
        .n__4325(n__4325),
        .n__832(n__832),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__2386(n__2386),
        .n__2459(n__2459),
        .n__4147(n__4147),
        .n__4162(n__4162),
        .n__4178(n__4178),
        .n__4193(n__4193),
        .n__4199(n__4199),
        .n__4229(n__4229),
        .n__4274(n__4274),
        .n__4304(n__4304),
        .n__4331(n__4331)
    );

    cluster_14 u_cluster_14 (
        .n__1351(n__1351),
        .n__1363(n__1363),
        .n__1365(n__1365),
        .n__1505(n__1505),
        .n__1976(n__1976),
        .n__1992(n__1992),
        .n__2006(n__2006),
        .n__2088(n__2088),
        .n__2102(n__2102),
        .n__2117(n__2117),
        .n__2120(n__2120),
        .n__2158(n__2158)
    );

    cluster_15 u_cluster_15 (
        .n__1351(n__1351),
        .n__1363(n__1363),
        .n__1365(n__1365),
        .n__1505(n__1505),
        .n__1598(n__1598),
        .n__1815(n__1815),
        .n__1693(n__1693),
        .n__1816(n__1816),
        .n__1822(n__1822),
        .n__1827(n__1827),
        .n__1881(n__1881),
        .n__1905(n__1905),
        .n__1907(n__1907),
        .n__1928(n__1928)
    );

    cluster_16 u_cluster_16 (
        .I(I),
        .clk(clk),
        .n__20(n__20),
        .n__319(n__319),
        .n__380(n__380),
        .n__3968(n__3968),
        .n__4028(n__4028),
        .n__4054(n__4054),
        .n__4147(n__4147),
        .n__4160(n__4160),
        .n__4162(n__4162),
        .n__4178(n__4178),
        .n__832(n__832),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__2475(n__2475),
        .n__4023(n__4023),
        .n__4100(n__4100),
        .n__4155(n__4155),
        .n__4159(n__4159),
        .n__4163(n__4163)
    );

    cluster_17 u_cluster_17 (
        .I(I),
        .clk(clk),
        .n__1022(n__1022),
        .n__1029(n__1029),
        .n__684(n__684),
        .n__802(n__802),
        .n__888(n__888),
        .n__919(n__919),
        .next_EN(next_EN),
        .n__971(n__971),
        .rst_n(rst_n),
        .n__1028(n__1028),
        .n__1062(n__1062),
        .n__1075(n__1075),
        .n__1084(n__1084),
        .n__1135(n__1135),
        .n__803(n__803),
        .n__982(n__982)
    );

    cluster_18 u_cluster_18 (
        .I(I),
        .clk(clk),
        .n__1672(n__1672),
        .n__1748(n__1748),
        .n__1750(n__1750),
        .n__1920(n__1920),
        .n__1921(n__1921),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__1908(n__1908),
        .n__1958(n__1958),
        .n__203(n__203),
        .n__204(n__204)
    );

    cluster_19 u_cluster_19 (
        .clk(clk),
        .n__2140(n__2140),
        .n__2253(n__2253),
        .n__2403(n__2403),
        .n__2407(n__2407),
        .next_EN(next_EN),
        .rst_n(rst_n),
        .n__2173(n__2173),
        .n__2218(n__2218),
        .n__2255(n__2255),
        .n__2258(n__2258),
        .n__2418(n__2418),
        .n__2421(n__2421)
    );

    // Residual instances (clusters < 8)
    sky130_fd_sc_hd__a211oi_2 inst_22 (
        .A1(next_EN),
        .A2(n__1526),
        .B1(n__2374),
        .C1(n__2164),
        .Y(n__2302)
    );

    sky130_fd_sc_hd__and4b_2 inst_24 (
        .A_N(n__832),
        .B(n__380),
        .C(n__319),
        .D(n__20),
        .X(n__3968)
    );

    sky130_fd_sc_hd__and4b_2 inst_25 (
        .A_N(n__3771),
        .B(n__3136),
        .C(n__343),
        .D(n__2505),
        .X(n__4201)
    );

    sky130_fd_sc_hd__o31a_2 inst_35 (
        .A1(n__2224),
        .A2(n__2307),
        .A3(n__2369),
        .B1(n__2223),
        .X(n__2231)
    );

    sky130_fd_sc_hd__o31a_2 inst_37 (
        .A1(n__1365),
        .A2(n__2667),
        .A3(n__2599),
        .B1(n__2671),
        .X(n__2794)
    );

    sky130_fd_sc_hd__conb_1 inst_43 (
        .HI(n__I13674),
        .LO(n__2239)
    );

    sky130_fd_sc_hd__conb_1 inst_44 (
        .HI(n__I13673),
        .LO(n__2004)
    );

    sky130_fd_sc_hd__or4b_2 inst_85 (
        .A(n__857),
        .B(n__736),
        .C(n__985),
        .D_N(n__1034),
        .X(n__2085)
    );

    sky130_fd_sc_hd__or4b_2 inst_89 (
        .A(n__20),
        .B(n__832),
        .C(n__380),
        .D_N(n__319),
        .X(n__3145)
    );

    sky130_fd_sc_hd__nor4_2 inst_93 (
        .A(n__20),
        .B(n__319),
        .C(n__832),
        .D(n__380),
        .Y(n__2985)
    );

    sky130_fd_sc_hd__nand4_2 inst_150 (
        .A(I),
        .B(next_EN),
        .C(n__4028),
        .D(n__3968),
        .Y(n__4054)
    );

    sky130_fd_sc_hd__nand4_2 inst_151 (
        .A(I),
        .B(next_EN),
        .C(n__2923),
        .D(n__2985),
        .Y(n__2821)
    );

    sky130_fd_sc_hd__nand4_2 inst_156 (
        .A(I),
        .B(next_EN),
        .C(n__1672),
        .D(n__1719),
        .Y(n__1750)
    );

    sky130_fd_sc_hd__nand4_2 inst_157 (
        .A(I),
        .B(next_EN),
        .C(n__2204),
        .D(n__2145),
        .Y(n__2274)
    );

    sky130_fd_sc_hd__nand4_2 inst_159 (
        .A(I),
        .B(next_EN),
        .C(n__3902),
        .D(n__3970),
        .Y(n__3863)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_178 (
        .CLK(clk),
        .D(n__1700),
        .Q(n__377),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_179 (
        .CLK(clk),
        .D(n__683),
        .Q(n__684),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__nor4b_2 inst_180 (
        .A(n__684),
        .B(n__686),
        .C(n__612),
        .D_N(n__716),
        .Y(n__791)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_181 (
        .CLK(clk),
        .D(n__1770),
        .Q(n__1672),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_182 (
        .CLK(clk),
        .D(n__2142),
        .Q(n__2018),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_184 (
        .CLK(clk),
        .D(n__3370),
        .Q(n__3320),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_186 (
        .CLK(clk),
        .D(n__1554),
        .Q(n__322),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_187 (
        .CLK(clk),
        .D(n__3173),
        .Q(n__3136),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_189 (
        .CLK(clk),
        .D(n__2491),
        .Q(n__2422),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_190 (
        .CLK(clk),
        .D(n__2073),
        .Q(n__2109),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_195 (
        .CLK(clk),
        .D(n__2709),
        .Q(n__2676),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_196 (
        .CLK(clk),
        .D(n__4240),
        .Q(success),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_206 (
        .CLK(clk),
        .D(n__2439),
        .Q(n__319),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_209 (
        .CLK(clk),
        .D(n__2819),
        .Q(n__2818),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_212 (
        .CLK(clk),
        .D(n__2243),
        .Q(n__2221),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_214 (
        .CLK(clk),
        .D(n__1908),
        .Q(n__1748),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_217 (
        .CLK(clk),
        .D(n__3753),
        .Q(n__3751),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_218 (
        .CLK(clk),
        .D(n__4304),
        .Q(n__4300),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_220 (
        .CLK(clk),
        .D(n__2065),
        .Q(n__1964),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_223 (
        .CLK(clk),
        .D(n__2235),
        .Q(n__380),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_224 (
        .CLK(clk),
        .D(n__2112),
        .Q(n__2072),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_225 (
        .CLK(clk),
        .D(n__4193),
        .Q(n__4160),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_226 (
        .CLK(clk),
        .D(n__3223),
        .Q(n__3148),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_228 (
        .CLK(clk),
        .D(n__718),
        .Q(n__769),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_229 (
        .CLK(clk),
        .D(n__2197),
        .Q(n__2037),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_235 (
        .CLK(clk),
        .D(n__4298),
        .Q(n__3771),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_237 (
        .CLK(clk),
        .D(n__2276),
        .Q(n__2204),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_239 (
        .CLK(clk),
        .D(n__2302),
        .Q(n__20),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_241 (
        .CLK(clk),
        .D(n__923),
        .Q(n__802),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_250 (
        .CLK(clk),
        .D(n__2501),
        .Q(n__832),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__a221oi_2 inst_251 (
        .A1(next_EN),
        .A2(n__1526),
        .B1(n__2296),
        .B2(n__832),
        .C1(n__2521),
        .Y(n__2501)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_252 (
        .CLK(clk),
        .D(n__1581),
        .Q(n__378),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_255 (
        .CLK(clk),
        .D(n__4027),
        .Q(n__4028),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_258 (
        .CLK(clk),
        .D(n__4176),
        .Q(n__3919),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_259 (
        .CLK(clk),
        .D(n__2555),
        .Q(n__2507),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_260 (
        .CLK(clk),
        .D(n__842),
        .Q(n__686),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_262 (
        .CLK(clk),
        .D(n__1799),
        .Q(n__436),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__dfrtp_2 inst_263 (
        .CLK(clk),
        .D(n__2880),
        .Q(n__2923),
        .RESET_B(rst_n)
    );

    sky130_fd_sc_hd__o311a_2 inst_265 (
        .A1(n__322),
        .A2(n__1510),
        .A3(n__1531),
        .B1(n__1825),
        .C1(n__1527),
        .X(n__1581)
    );

    sky130_fd_sc_hd__a211o_2 inst_267 (
        .A1(n__1363),
        .A2(n__1926),
        .B1(n__1827),
        .C1(n__1881),
        .X(n__1938)
    );

    sky130_fd_sc_hd__a21o_2 inst_273 (
        .A1(n__3139),
        .A2(n__3141),
        .B1(n__3148),
        .X(n__3223)
    );

    sky130_fd_sc_hd__a21o_2 inst_278 (
        .A1(n__436),
        .A2(n__1688),
        .B1(n__378),
        .X(n__1527)
    );

    sky130_fd_sc_hd__nand3_2 inst_279 (
        .A(n__436),
        .B(n__378),
        .C(n__1688),
        .Y(n__1825)
    );

    sky130_fd_sc_hd__a21o_2 inst_287 (
        .A1(n__684),
        .A2(n__803),
        .B1(n__686),
        .X(n__519)
    );

    sky130_fd_sc_hd__a211oi_2 inst_295 (
        .A1(n__1351),
        .A2(n__1363),
        .B1(n__1365),
        .C1(n__1505),
        .Y(n__1926)
    );

    sky130_fd_sc_hd__and4bb_2 inst_297 (
        .A_N(n__686),
        .B_N(n__982),
        .C(n__919),
        .D(n__802),
        .X(n__1029)
    );

    sky130_fd_sc_hd__and4bb_2 inst_299 (
        .A_N(n__319),
        .B_N(n__832),
        .C(n__380),
        .D(n__20),
        .X(n__3970)
    );

    sky130_fd_sc_hd__and4bb_2 inst_301 (
        .A_N(n__319),
        .B_N(n__380),
        .C(n__832),
        .D(n__20),
        .X(n__1526)
    );

    sky130_fd_sc_hd__a41oi_2 inst_302 (
        .A1(n__20),
        .A2(n__319),
        .A3(n__380),
        .A4(next_EN),
        .B1(n__832),
        .Y(n__2521)
    );

    sky130_fd_sc_hd__and4bb_2 inst_305 (
        .A_N(n__319),
        .B_N(n__380),
        .C(n__832),
        .D(n__20),
        .X(n__4325)
    );

    sky130_fd_sc_hd__and4_2 inst_309 (
        .A(n__1526),
        .B(next_EN),
        .C(n__377),
        .D(n__322),
        .X(n__1688)
    );

    sky130_fd_sc_hd__nand3b_2 inst_310 (
        .A_N(n__436),
        .B(n__378),
        .C(n__377),
        .Y(n__1510)
    );

    sky130_fd_sc_hd__and4_2 inst_312 (
        .A(n__226),
        .B(n__294),
        .C(n__204),
        .D(n__203),
        .X(n__289)
    );

    sky130_fd_sc_hd__and4_2 inst_314 (
        .A(n__20),
        .B(n__319),
        .C(n__380),
        .D(next_EN),
        .X(n__2296)
    );

    sky130_fd_sc_hd__nand2b_2 inst_319 (
        .A_N(n__840),
        .B(n__895),
        .Y(n__881)
    );

    sky130_fd_sc_hd__nand2b_2 inst_321 (
        .A_N(n__2818),
        .B(n__2821),
        .Y(n__2819)
    );

    sky130_fd_sc_hd__nand2b_2 inst_325 (
        .A_N(n__2221),
        .B(n__2274),
        .Y(n__2243)
    );

    sky130_fd_sc_hd__nand2b_2 inst_329 (
        .A_N(n__2037),
        .B(n__2061),
        .Y(n__2197)
    );

    sky130_fd_sc_hd__nand2b_2 inst_333 (
        .A_N(n__3771),
        .B(n__3136),
        .Y(n__4236)
    );

    sky130_fd_sc_hd__a22o_2 inst_354 (
        .A1(n__1720),
        .A2(n__2422),
        .B1(n__1723),
        .B2(n__2421),
        .X(n__2268)
    );

    sky130_fd_sc_hd__and2b_2 inst_375 (
        .A_N(n__1028),
        .B(n__1138),
        .X(n__979)
    );

    sky130_fd_sc_hd__and2b_2 inst_378 (
        .A_N(n__3136),
        .B(enable),
        .X(next_EN)
    );

    sky130_fd_sc_hd__and2b_2 inst_379 (
        .A_N(n__4199),
        .B(n__4163),
        .X(n__2463)
    );

    sky130_fd_sc_hd__and2b_2 inst_382 (
        .A_N(n__2923),
        .B(n__2818),
        .X(n__2416)
    );

    sky130_fd_sc_hd__and2b_2 inst_384 (
        .A_N(n__2204),
        .B(n__2221),
        .X(n__545)
    );

    sky130_fd_sc_hd__and2b_2 inst_391 (
        .A_N(n__1365),
        .B(n__1363),
        .X(n__2301)
    );

    sky130_fd_sc_hd__and2b_2 inst_392 (
        .A_N(n__548),
        .B(n__519),
        .X(n__842)
    );

    sky130_fd_sc_hd__a32o_2 inst_397 (
        .A1(n__2258),
        .A2(n__4166),
        .A3(n__4201),
        .B1(success),
        .B2(n__4236),
        .X(n__4240)
    );

    sky130_fd_sc_hd__a32o_2 inst_398 (
        .A1(n__4209),
        .A2(n__4166),
        .A3(n__4201),
        .B1(n__3919),
        .B2(n__4236),
        .X(n__4176)
    );

    sky130_fd_sc_hd__a32o_2 inst_399 (
        .A1(I),
        .A2(next_EN),
        .A3(n__1075),
        .B1(n__887),
        .B2(n__684),
        .X(n__683)
    );

    sky130_fd_sc_hd__xnor2_2 inst_401 (
        .A(n__2676),
        .B(n__2944),
        .Y(n__2810)
    );

    sky130_fd_sc_hd__xnor2_2 inst_404 (
        .A(n__319),
        .B(next_EN),
        .Y(n__2409)
    );

    sky130_fd_sc_hd__xnor2_2 inst_426 (
        .A(n__2674),
        .B(n__3049),
        .Y(n__2610)
    );

    sky130_fd_sc_hd__or4_2 inst_435 (
        .A(n__3675),
        .B(n__3685),
        .C(n__3686),
        .D(n__3759),
        .X(n__3682)
    );

    sky130_fd_sc_hd__or4_2 inst_440 (
        .A(n__3148),
        .B(n__3207),
        .C(n__3145),
        .D(n__3144),
        .X(n__3142)
    );

    sky130_fd_sc_hd__or4_2 inst_441 (
        .A(n__3325),
        .B(n__3414),
        .C(n__3249),
        .D(n__3326),
        .X(n__3369)
    );

    sky130_fd_sc_hd__xor2_2 inst_471 (
        .A(n__2674),
        .B(n__2834),
        .X(n__2678)
    );

    sky130_fd_sc_hd__xor2_2 inst_481 (
        .A(n__436),
        .B(n__1688),
        .X(n__1799)
    );

    sky130_fd_sc_hd__xor2_2 inst_483 (
        .A(n__380),
        .B(n__2164),
        .X(n__2235)
    );

    sky130_fd_sc_hd__a31o_2 inst_495 (
        .A1(n__1526),
        .A2(next_EN),
        .A3(n__322),
        .B1(n__377),
        .X(n__1663)
    );

    sky130_fd_sc_hd__a31o_2 inst_498 (
        .A1(I),
        .A2(next_EN),
        .A3(n__3756),
        .B1(n__3755),
        .X(n__3808)
    );

    sky130_fd_sc_hd__a31o_2 inst_499 (
        .A1(n__888),
        .A2(n__803),
        .A3(n__971),
        .B1(n__919),
        .X(n__1138)
    );

    sky130_fd_sc_hd__a31o_2 inst_501 (
        .A1(n__1526),
        .A2(n__1508),
        .A3(next_EN),
        .B1(n__3136),
        .X(n__3173)
    );

    sky130_fd_sc_hd__a31o_2 inst_502 (
        .A1(I),
        .A2(next_EN),
        .A3(n__4229),
        .B1(n__4199),
        .X(n__4250)
    );

    sky130_fd_sc_hd__a31o_2 inst_503 (
        .A1(I),
        .A2(next_EN),
        .A3(n__4325),
        .B1(n__4274),
        .X(n__4322)
    );

    sky130_fd_sc_hd__a31o_2 inst_511 (
        .A1(I),
        .A2(next_EN),
        .A3(n__2985),
        .B1(n__2923),
        .X(n__2924)
    );

    sky130_fd_sc_hd__a21oi_2 inst_525 (
        .A1(n__319),
        .A2(next_EN),
        .B1(n__20),
        .Y(n__2374)
    );

    sky130_fd_sc_hd__o211a_2 inst_535 (
        .A1(n__2283),
        .A2(n__1365),
        .B1(n__2223),
        .C1(n__1363),
        .X(n__2313)
    );

    sky130_fd_sc_hd__o211a_2 inst_536 (
        .A1(n__1510),
        .A2(n__1531),
        .B1(n__1663),
        .C1(n__1773),
        .X(n__1700)
    );

    sky130_fd_sc_hd__o211a_2 inst_543 (
        .A1(n__1363),
        .A2(n__1992),
        .B1(n__2102),
        .C1(n__2158),
        .X(n__2190)
    );

    sky130_fd_sc_hd__and3_2 inst_547 (
        .A(n__684),
        .B(n__686),
        .C(n__802),
        .X(n__971)
    );

    sky130_fd_sc_hd__and3_2 inst_550 (
        .A(n__1351),
        .B(n__2223),
        .C(n__2301),
        .X(n__2298)
    );

    sky130_fd_sc_hd__and3_2 inst_551 (
        .A(n__20),
        .B(n__319),
        .C(next_EN),
        .X(n__2164)
    );

    sky130_fd_sc_hd__and3_2 inst_552 (
        .A(n__1526),
        .B(next_EN),
        .C(n__1510),
        .X(n__1528)
    );

    sky130_fd_sc_hd__and3_2 inst_559 (
        .A(n__1185),
        .B(n__341),
        .C(n__545),
        .X(n__397)
    );

    sky130_fd_sc_hd__and3_2 inst_560 (
        .A(n__289),
        .B(n__342),
        .C(n__397),
        .X(n__343)
    );

    sky130_fd_sc_hd__and4_2 inst_561 (
        .A(n__349),
        .B(n__404),
        .C(n__401),
        .D(n__399),
        .X(n__342)
    );

    sky130_fd_sc_hd__mux2_1 inst_574 (
        .A0(n__2109),
        .A1(n__2072),
        .S(next_EN),
        .X(n__2073)
    );

    sky130_fd_sc_hd__mux2_1 inst_582 (
        .A0(n__2507),
        .A1(n__2419),
        .S(next_EN),
        .X(n__2555)
    );

    sky130_fd_sc_hd__mux2_1 inst_588 (
        .A0(n__2418),
        .A1(n__2507),
        .S(next_EN),
        .X(n__2407)
    );

    sky130_fd_sc_hd__mux2_1 inst_589 (
        .A0(n__1528),
        .A1(n__1531),
        .S(n__322),
        .X(n__1554)
    );

    sky130_fd_sc_hd__mux2_1 inst_591 (
        .A0(n__2422),
        .A1(I),
        .S(next_EN),
        .X(n__2491)
    );

    sky130_fd_sc_hd__o21a_2 inst_1722 (
        .A1(n__1363),
        .A2(n__2102),
        .B1(n__2158),
        .X(n__2155)
    );

    sky130_fd_sc_hd__o21a_2 inst_1723 (
        .A1(n__3139),
        .A2(n__3141),
        .B1(n__3142),
        .X(n__3146)
    );

    sky130_fd_sc_hd__o21a_2 inst_1734 (
        .A1(n__2818),
        .A2(n__2821),
        .B1(n__2924),
        .X(n__2880)
    );

    sky130_fd_sc_hd__o21a_2 inst_1737 (
        .A1(n__4300),
        .A2(n__4331),
        .B1(n__4322),
        .X(n__4276)
    );

    sky130_fd_sc_hd__o21a_2 inst_1745 (
        .A1(n__2221),
        .A2(n__2274),
        .B1(n__2200),
        .X(n__2276)
    );

    sky130_fd_sc_hd__o21a_2 inst_1748 (
        .A1(n__4023),
        .A2(n__4054),
        .B1(n__4100),
        .X(n__4027)
    );

    sky130_fd_sc_hd__inv_2 inst_1759 (
        .A(n__1688),
        .Y(n__1773)
    );

    sky130_fd_sc_hd__inv_2 inst_1760 (
        .A(n__2258),
        .Y(n__4209)
    );

    sky130_fd_sc_hd__inv_2 inst_1772 (
        .A(n__1505),
        .Y(n__2223)
    );

        sky130_fd_sc_hd__and2b_2 inst_1789 (
        .A_N(n__1495),
        .B(n__719),
        .X(n__4166)
    );

    sky130_fd_sc_hd__nand2_2 inst_2492 (
        .A(I),
        .B(next_EN),
        .Y(n__3759)
    );

    sky130_fd_sc_hd__nand2_2 inst_2494 (
        .A(n__1526),
        .B(next_EN),
        .Y(n__1531)
    );

    sky130_fd_sc_hd__nand2_2 inst_2510 (
        .A(I),
        .B(next_EN),
        .Y(n__3144)
    );

    sky130_fd_sc_hd__nand2_2 inst_2515 (
        .A(I),
        .B(next_EN),
        .Y(n__3326)
    );

    sky130_fd_sc_hd__or2_2 inst_2538 (
        .A(n__3136),
        .B(n__3771),
        .X(n__4298)
    );

    sky130_fd_sc_hd__or2_2 inst_2539 (
        .A(n__1735),
        .B(I),
        .X(n__1718)
    );

    sky130_fd_sc_hd__nor2_2 inst_2548 (
        .A(n__3686),
        .B(n__3759),
        .Y(n__3677)
    );

    sky130_fd_sc_hd__nor2_2 inst_2560 (
        .A(n__1526),
        .B(n__2409),
        .Y(n__2439)
    );

    sky130_fd_sc_hd__nor2_2 inst_2564 (
        .A(n__3145),
        .B(n__3144),
        .Y(n__3141)
    );

    sky130_fd_sc_hd__nor2_2 inst_2580 (
        .A(n__2085),
        .B(n__2038),
        .Y(n__2081)
    );

    sky130_fd_sc_hd__nor2_2 inst_2583 (
        .A(n__322),
        .B(n__1510),
        .Y(n__1508)
    );

endmodule
