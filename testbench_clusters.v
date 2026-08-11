`timescale 1ps/1ps
// Simple exhaustive-ish test for every hierarchical cluster
// Sweeps a counter over the data inputs; clocks sequential clusters
// Prints cluster name, input vector and output vector

module tb_all_clusters;

    parameter CLK_PERIOD = 10000;
    parameter MAX_VEC   = 64;   // vectors per cluster (raise if you want more)

    reg clk;
    initial clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    integer c, v, i;
    reg [63:0] counter;   // enough bits for the largest port list

    // ---- cluster_1 signals ----
    reg  cluster_1_n__20;
    reg  cluster_1_n__319;
    reg  cluster_1_n__322;
    reg  cluster_1_n__377;
    reg  cluster_1_n__378;
    reg  cluster_1_n__380;
    reg  cluster_1_n__436;
    reg  cluster_1_n__832;
    wire cluster_1_n__1034;
    wire cluster_1_n__736;
    wire cluster_1_n__857;
    wire cluster_1_n__985;

    // ---- cluster_2 signals ----
    reg  cluster_2_I;
    reg  cluster_2_n__1351;
    reg  cluster_2_n__1363;
    reg  cluster_2_n__1365;
    reg  cluster_2_n__1420;
    reg  cluster_2_n__1425;
    reg  cluster_2_n__1475;
    reg  cluster_2_n__1505;
    reg  cluster_2_n__1516;
    reg  cluster_2_n__1559;
    reg  cluster_2_n__1629;
    reg  cluster_2_n__1693;
    reg  cluster_2_n__1694;
    reg  cluster_2_n__1815;
    reg  cluster_2_n__1816;
    reg  cluster_2_n__1822;
    reg  cluster_2_n__1905;
    reg  cluster_2_n__1907;
    reg  cluster_2_n__1926;
    reg  cluster_2_n__1928;
    reg  cluster_2_n__1938;
    reg  cluster_2_n__1976;
    reg  cluster_2_n__2004;
    reg  cluster_2_n__2006;
    reg  cluster_2_n__2088;
    reg  cluster_2_n__2117;
    reg  cluster_2_n__2120;
    reg  cluster_2_n__2155;
    reg  cluster_2_n__2190;
    reg  cluster_2_n__2223;
    reg  cluster_2_n__2231;
    reg  cluster_2_n__2239;
    reg  cluster_2_n__2298;
    reg  cluster_2_n__2301;
    reg  cluster_2_n__2313;
    reg  cluster_2_n__2610;
    reg  cluster_2_n__2676;
    reg  cluster_2_n__2678;
    reg  cluster_2_n__2794;
    reg  cluster_2_n__2810;
    reg  cluster_2_n__3037;
    reg  cluster_2_n__3377;
    reg  cluster_2_n__3419;
    reg  cluster_2_n__3420;
    reg  cluster_2_n__934;
    reg  cluster_2_rst_n;
    wire cluster_2_n__2224;
    wire cluster_2_n__2283;
    wire cluster_2_n__2307;
    wire cluster_2_n__2369;
    wire cluster_2_n__2599;
    wire cluster_2_n__2667;
    wire cluster_2_n__2671;
    wire cluster_2_n__2674;
    wire cluster_2_n__2709;
    wire cluster_2_n__2834;
    wire cluster_2_n__2944;
    wire cluster_2_n__3049;
    wire cluster_2_n__3435;
    wire cluster_2_n__3516;
    wire cluster_2_n__3518;
    wire cluster_2_n__3543;
    wire cluster_2_n__3553;
    wire cluster_2_n__3613;
    wire cluster_2_n__3616;
    wire cluster_2_n__3818;

    // ---- cluster_3 signals ----
    reg  cluster_3_I;
    reg  cluster_3_n__1034;
    reg  cluster_3_n__1288;
    reg  cluster_3_n__736;
    reg  cluster_3_n__857;
    reg  cluster_3_n__881;
    reg  cluster_3_n__934;
    reg  cluster_3_n__985;
    reg  cluster_3_rst_n;
    wire cluster_3_n__1326;
    wire cluster_3_n__349;
    wire cluster_3_n__399;
    wire cluster_3_n__401;
    wire cluster_3_n__404;
    wire cluster_3_n__840;
    wire cluster_3_n__895;

    // ---- cluster_4 signals ----
    reg  cluster_4_n__1084;
    reg  cluster_4_n__3435;
    reg  cluster_4_n__3516;
    reg  cluster_4_n__3518;
    reg  cluster_4_n__3543;
    reg  cluster_4_n__3553;
    reg  cluster_4_n__3613;
    reg  cluster_4_n__3616;
    reg  cluster_4_n__3771;
    reg  cluster_4_n__3818;
    reg  cluster_4_n__3919;
    reg  cluster_4_n__791;
    reg  cluster_4_success;
    wire cluster_4_O_0_;
    wire cluster_4_O_1_;
    wire cluster_4_O_2_;
    wire cluster_4_O_3_;
    wire cluster_4_O_4_;
    wire cluster_4_O_5_;
    wire cluster_4_O_6_;
    wire cluster_4_O_7_;
    wire cluster_4_n__1351;
    wire cluster_4_n__1363;
    wire cluster_4_n__1365;
    wire cluster_4_n__1505;
    wire cluster_4_n__3037;
    wire cluster_4_n__3377;
    wire cluster_4_n__3419;
    wire cluster_4_n__3420;

    // ---- cluster_5 signals ----
    reg  cluster_5_n__1351;
    reg  cluster_5_n__1363;
    reg  cluster_5_n__1365;
    reg  cluster_5_n__1425;
    reg  cluster_5_n__1505;
    wire cluster_5_n__1420;
    wire cluster_5_n__1475;
    wire cluster_5_n__1516;
    wire cluster_5_n__1559;
    wire cluster_5_n__1598;
    wire cluster_5_n__1629;
    wire cluster_5_n__1694;

    // ---- cluster_6 signals ----
    reg  cluster_6_I;
    reg  cluster_6_n__1034;
    reg  cluster_6_n__1326;
    reg  cluster_6_n__1672;
    reg  cluster_6_n__1748;
    reg  cluster_6_n__1750;
    reg  cluster_6_n__736;
    reg  cluster_6_n__857;
    reg  cluster_6_n__934;
    reg  cluster_6_n__985;
    reg  cluster_6_rst_n;
    wire cluster_6_n__1288;
    wire cluster_6_n__1719;
    wire cluster_6_n__1770;
    wire cluster_6_n__226;
    wire cluster_6_n__294;

    // ---- cluster_7 signals ----
    reg  cluster_7_I;
    reg  cluster_7_n__20;
    reg  cluster_7_n__3146;
    reg  cluster_7_n__3148;
    reg  cluster_7_n__319;
    reg  cluster_7_n__3320;
    reg  cluster_7_n__3326;
    reg  cluster_7_n__3369;
    reg  cluster_7_n__3676;
    reg  cluster_7_n__3677;
    reg  cluster_7_n__3682;
    reg  cluster_7_n__3683;
    reg  cluster_7_n__380;
    reg  cluster_7_n__832;
    reg  cluster_7_n__934;
    reg  cluster_7_rst_n;
    wire cluster_7_n__2474;
    wire cluster_7_n__2479;
    wire cluster_7_n__3139;
    wire cluster_7_n__3207;
    wire cluster_7_n__3249;
    wire cluster_7_n__3283;
    wire cluster_7_n__3325;
    wire cluster_7_n__3370;
    wire cluster_7_n__3414;
    wire cluster_7_n__3675;
    wire cluster_7_n__3686;
    wire cluster_7_n__3720;

    // ---- cluster_8 signals ----
    reg  cluster_8_I;
    reg  cluster_8_n__20;
    reg  cluster_8_n__319;
    reg  cluster_8_n__3675;
    reg  cluster_8_n__3677;
    reg  cluster_8_n__3720;
    reg  cluster_8_n__3751;
    reg  cluster_8_n__380;
    reg  cluster_8_n__3808;
    reg  cluster_8_n__3863;
    reg  cluster_8_n__3970;
    reg  cluster_8_n__832;
    reg  cluster_8_n__934;
    reg  cluster_8_rst_n;
    wire cluster_8_n__2393;
    wire cluster_8_n__2472;
    wire cluster_8_n__3676;
    wire cluster_8_n__3683;
    wire cluster_8_n__3685;
    wire cluster_8_n__3753;
    wire cluster_8_n__3755;
    wire cluster_8_n__3756;
    wire cluster_8_n__3830;
    wire cluster_8_n__3902;

    // ---- cluster_9 signals ----
    reg  cluster_9_I;
    reg  cluster_9_n__1526;
    reg  cluster_9_n__1627;
    reg  cluster_9_n__1718;
    reg  cluster_9_n__20;
    reg  cluster_9_n__319;
    reg  cluster_9_n__380;
    reg  cluster_9_n__832;
    reg  cluster_9_n__934;
    reg  cluster_9_rst_n;
    wire cluster_9_n__1557;
    wire cluster_9_n__1720;
    wire cluster_9_n__1723;
    wire cluster_9_n__1735;
    wire cluster_9_n__1738;

    // ---- cluster_10 signals ----
    reg  cluster_10_I;
    reg  cluster_10_n__1627;
    reg  cluster_10_n__1738;
    reg  cluster_10_n__2072;
    reg  cluster_10_n__2109;
    reg  cluster_10_n__2173;
    reg  cluster_10_n__2218;
    reg  cluster_10_n__2255;
    reg  cluster_10_n__2268;
    reg  cluster_10_n__2386;
    reg  cluster_10_n__2393;
    reg  cluster_10_n__2416;
    reg  cluster_10_n__2418;
    reg  cluster_10_n__2422;
    reg  cluster_10_n__2459;
    reg  cluster_10_n__2463;
    reg  cluster_10_n__2472;
    reg  cluster_10_n__2474;
    reg  cluster_10_n__2475;
    reg  cluster_10_n__2479;
    reg  cluster_10_n__3283;
    reg  cluster_10_n__3830;
    reg  cluster_10_n__934;
    reg  cluster_10_rst_n;
    wire cluster_10_n__2112;
    wire cluster_10_n__2140;
    wire cluster_10_n__2253;
    wire cluster_10_n__2403;
    wire cluster_10_n__2419;
    wire cluster_10_n__2505;

    // ---- cluster_11 signals ----
    reg  cluster_11_I;
    reg  cluster_11_n__1034;
    reg  cluster_11_n__1958;
    reg  cluster_11_n__1964;
    reg  cluster_11_n__2018;
    reg  cluster_11_n__2037;
    reg  cluster_11_n__2081;
    reg  cluster_11_n__2085;
    reg  cluster_11_n__2204;
    reg  cluster_11_n__736;
    reg  cluster_11_n__857;
    reg  cluster_11_n__934;
    reg  cluster_11_n__985;
    reg  cluster_11_rst_n;
    wire cluster_11_n__1185;
    wire cluster_11_n__1920;
    wire cluster_11_n__1921;
    wire cluster_11_n__2038;
    wire cluster_11_n__2061;
    wire cluster_11_n__2065;
    wire cluster_11_n__2142;
    wire cluster_11_n__2145;
    wire cluster_11_n__2200;
    wire cluster_11_n__341;

    // ---- cluster_12 signals ----
    reg  cluster_12_n__1062;
    reg  cluster_12_n__1135;
    reg  cluster_12_n__684;
    reg  cluster_12_n__686;
    reg  cluster_12_n__769;
    reg  cluster_12_n__802;
    reg  cluster_12_n__803;
    reg  cluster_12_n__971;
    reg  cluster_12_n__979;
    reg  cluster_12_rst_n;
    wire cluster_12_n__1022;
    wire cluster_12_n__548;
    wire cluster_12_n__612;
    wire cluster_12_n__716;
    wire cluster_12_n__718;
    wire cluster_12_n__719;
    wire cluster_12_n__887;
    wire cluster_12_n__888;
    wire cluster_12_n__919;
    wire cluster_12_n__923;

    // ---- cluster_13 signals ----
    reg  cluster_13_I;
    reg  cluster_13_n__20;
    reg  cluster_13_n__319;
    reg  cluster_13_n__380;
    reg  cluster_13_n__4155;
    reg  cluster_13_n__4159;
    reg  cluster_13_n__4160;
    reg  cluster_13_n__4163;
    reg  cluster_13_n__4250;
    reg  cluster_13_n__4276;
    reg  cluster_13_n__4300;
    reg  cluster_13_n__4325;
    reg  cluster_13_n__832;
    reg  cluster_13_n__934;
    reg  cluster_13_rst_n;
    wire cluster_13_n__2386;
    wire cluster_13_n__2459;
    wire cluster_13_n__4147;
    wire cluster_13_n__4162;
    wire cluster_13_n__4178;
    wire cluster_13_n__4193;
    wire cluster_13_n__4199;
    wire cluster_13_n__4229;
    wire cluster_13_n__4274;
    wire cluster_13_n__4304;
    wire cluster_13_n__4331;

    // ---- cluster_14 signals ----
    reg  cluster_14_n__1351;
    reg  cluster_14_n__1363;
    reg  cluster_14_n__1365;
    reg  cluster_14_n__1505;
    wire cluster_14_n__1976;
    wire cluster_14_n__1992;
    wire cluster_14_n__2006;
    wire cluster_14_n__2088;
    wire cluster_14_n__2102;
    wire cluster_14_n__2117;
    wire cluster_14_n__2120;
    wire cluster_14_n__2158;

    // ---- cluster_15 signals ----
    reg  cluster_15_n__1351;
    reg  cluster_15_n__1363;
    reg  cluster_15_n__1365;
    reg  cluster_15_n__1505;
    reg  cluster_15_n__1598;
    reg  cluster_15_n__1815;
    wire cluster_15_n__1693;
    wire cluster_15_n__1816;
    wire cluster_15_n__1822;
    wire cluster_15_n__1827;
    wire cluster_15_n__1881;
    wire cluster_15_n__1905;
    wire cluster_15_n__1907;
    wire cluster_15_n__1928;

    // ---- cluster_16 signals ----
    reg  cluster_16_I;
    reg  cluster_16_n__20;
    reg  cluster_16_n__319;
    reg  cluster_16_n__380;
    reg  cluster_16_n__3968;
    reg  cluster_16_n__4028;
    reg  cluster_16_n__4054;
    reg  cluster_16_n__4147;
    reg  cluster_16_n__4160;
    reg  cluster_16_n__4162;
    reg  cluster_16_n__4178;
    reg  cluster_16_n__832;
    reg  cluster_16_n__934;
    reg  cluster_16_rst_n;
    wire cluster_16_n__2475;
    wire cluster_16_n__4023;
    wire cluster_16_n__4100;
    wire cluster_16_n__4155;
    wire cluster_16_n__4159;
    wire cluster_16_n__4163;

    // ---- cluster_17 signals ----
    reg  cluster_17_I;
    reg  cluster_17_n__1022;
    reg  cluster_17_n__1029;
    reg  cluster_17_n__684;
    reg  cluster_17_n__802;
    reg  cluster_17_n__888;
    reg  cluster_17_n__919;
    reg  cluster_17_n__934;
    reg  cluster_17_n__971;
    reg  cluster_17_rst_n;
    wire cluster_17_n__1028;
    wire cluster_17_n__1062;
    wire cluster_17_n__1075;
    wire cluster_17_n__1084;
    wire cluster_17_n__1135;
    wire cluster_17_n__803;
    wire cluster_17_n__982;

    // ---- cluster_18 signals ----
    reg  cluster_18_I;
    reg  cluster_18_n__1672;
    reg  cluster_18_n__1748;
    reg  cluster_18_n__1750;
    reg  cluster_18_n__1920;
    reg  cluster_18_n__1921;
    reg  cluster_18_n__934;
    reg  cluster_18_rst_n;
    wire cluster_18_n__1908;
    wire cluster_18_n__1958;
    wire cluster_18_n__203;
    wire cluster_18_n__204;

    // ---- cluster_19 signals ----
    reg  cluster_19_n__2140;
    reg  cluster_19_n__2253;
    reg  cluster_19_n__2403;
    reg  cluster_19_n__2407;
    reg  cluster_19_n__934;
    reg  cluster_19_rst_n;
    wire cluster_19_n__2173;
    wire cluster_19_n__2218;
    wire cluster_19_n__2255;
    wire cluster_19_n__2258;
    wire cluster_19_n__2418;
    wire cluster_19_n__2421;

    cluster_1 u_cluster_1 (
        .n__20(cluster_1_n__20),
        .n__319(cluster_1_n__319),
        .n__322(cluster_1_n__322),
        .n__377(cluster_1_n__377),
        .n__378(cluster_1_n__378),
        .n__380(cluster_1_n__380),
        .n__436(cluster_1_n__436),
        .n__832(cluster_1_n__832),
        .n__1034(cluster_1_n__1034),
        .n__736(cluster_1_n__736),
        .n__857(cluster_1_n__857),
        .n__985(cluster_1_n__985)
    );

    cluster_2 u_cluster_2 (
        .I(cluster_2_I),
        .clk(clk),
        .n__1351(cluster_2_n__1351),
        .n__1363(cluster_2_n__1363),
        .n__1365(cluster_2_n__1365),
        .n__1420(cluster_2_n__1420),
        .n__1425(cluster_2_n__1425),
        .n__1475(cluster_2_n__1475),
        .n__1505(cluster_2_n__1505),
        .n__1516(cluster_2_n__1516),
        .n__1559(cluster_2_n__1559),
        .n__1629(cluster_2_n__1629),
        .n__1693(cluster_2_n__1693),
        .n__1694(cluster_2_n__1694),
        .n__1815(cluster_2_n__1815),
        .n__1816(cluster_2_n__1816),
        .n__1822(cluster_2_n__1822),
        .n__1905(cluster_2_n__1905),
        .n__1907(cluster_2_n__1907),
        .n__1926(cluster_2_n__1926),
        .n__1928(cluster_2_n__1928),
        .n__1938(cluster_2_n__1938),
        .n__1976(cluster_2_n__1976),
        .n__2004(cluster_2_n__2004),
        .n__2006(cluster_2_n__2006),
        .n__2088(cluster_2_n__2088),
        .n__2117(cluster_2_n__2117),
        .n__2120(cluster_2_n__2120),
        .n__2155(cluster_2_n__2155),
        .n__2190(cluster_2_n__2190),
        .n__2223(cluster_2_n__2223),
        .n__2231(cluster_2_n__2231),
        .n__2239(cluster_2_n__2239),
        .n__2298(cluster_2_n__2298),
        .n__2301(cluster_2_n__2301),
        .n__2313(cluster_2_n__2313),
        .n__2610(cluster_2_n__2610),
        .n__2676(cluster_2_n__2676),
        .n__2678(cluster_2_n__2678),
        .n__2794(cluster_2_n__2794),
        .n__2810(cluster_2_n__2810),
        .n__3037(cluster_2_n__3037),
        .n__3377(cluster_2_n__3377),
        .n__3419(cluster_2_n__3419),
        .n__3420(cluster_2_n__3420),
        .n__934(cluster_2_n__934),
        .rst_n(cluster_2_rst_n),
        .n__2224(cluster_2_n__2224),
        .n__2283(cluster_2_n__2283),
        .n__2307(cluster_2_n__2307),
        .n__2369(cluster_2_n__2369),
        .n__2599(cluster_2_n__2599),
        .n__2667(cluster_2_n__2667),
        .n__2671(cluster_2_n__2671),
        .n__2674(cluster_2_n__2674),
        .n__2709(cluster_2_n__2709),
        .n__2834(cluster_2_n__2834),
        .n__2944(cluster_2_n__2944),
        .n__3049(cluster_2_n__3049),
        .n__3435(cluster_2_n__3435),
        .n__3516(cluster_2_n__3516),
        .n__3518(cluster_2_n__3518),
        .n__3543(cluster_2_n__3543),
        .n__3553(cluster_2_n__3553),
        .n__3613(cluster_2_n__3613),
        .n__3616(cluster_2_n__3616),
        .n__3818(cluster_2_n__3818)
    );

    cluster_3 u_cluster_3 (
        .I(cluster_3_I),
        .clk(clk),
        .n__1034(cluster_3_n__1034),
        .n__1288(cluster_3_n__1288),
        .n__736(cluster_3_n__736),
        .n__857(cluster_3_n__857),
        .n__881(cluster_3_n__881),
        .n__934(cluster_3_n__934),
        .n__985(cluster_3_n__985),
        .rst_n(cluster_3_rst_n),
        .n__1326(cluster_3_n__1326),
        .n__349(cluster_3_n__349),
        .n__399(cluster_3_n__399),
        .n__401(cluster_3_n__401),
        .n__404(cluster_3_n__404),
        .n__840(cluster_3_n__840),
        .n__895(cluster_3_n__895)
    );

    cluster_4 u_cluster_4 (
        .clk(clk),
        .n__1084(cluster_4_n__1084),
        .n__3435(cluster_4_n__3435),
        .n__3516(cluster_4_n__3516),
        .n__3518(cluster_4_n__3518),
        .n__3543(cluster_4_n__3543),
        .n__3553(cluster_4_n__3553),
        .n__3613(cluster_4_n__3613),
        .n__3616(cluster_4_n__3616),
        .n__3771(cluster_4_n__3771),
        .n__3818(cluster_4_n__3818),
        .n__3919(cluster_4_n__3919),
        .n__791(cluster_4_n__791),
        .success(cluster_4_success),
        .O_0_(cluster_4_O_0_),
        .O_1_(cluster_4_O_1_),
        .O_2_(cluster_4_O_2_),
        .O_3_(cluster_4_O_3_),
        .O_4_(cluster_4_O_4_),
        .O_5_(cluster_4_O_5_),
        .O_6_(cluster_4_O_6_),
        .O_7_(cluster_4_O_7_),
        .n__1351(cluster_4_n__1351),
        .n__1363(cluster_4_n__1363),
        .n__1365(cluster_4_n__1365),
        .n__1505(cluster_4_n__1505),
        .n__3037(cluster_4_n__3037),
        .n__3377(cluster_4_n__3377),
        .n__3419(cluster_4_n__3419),
        .n__3420(cluster_4_n__3420)
    );

    cluster_5 u_cluster_5 (
        .n__1351(cluster_5_n__1351),
        .n__1363(cluster_5_n__1363),
        .n__1365(cluster_5_n__1365),
        .n__1425(cluster_5_n__1425),
        .n__1505(cluster_5_n__1505),
        .n__1420(cluster_5_n__1420),
        .n__1475(cluster_5_n__1475),
        .n__1516(cluster_5_n__1516),
        .n__1559(cluster_5_n__1559),
        .n__1598(cluster_5_n__1598),
        .n__1629(cluster_5_n__1629),
        .n__1694(cluster_5_n__1694)
    );

    cluster_6 u_cluster_6 (
        .I(cluster_6_I),
        .clk(clk),
        .n__1034(cluster_6_n__1034),
        .n__1326(cluster_6_n__1326),
        .n__1672(cluster_6_n__1672),
        .n__1748(cluster_6_n__1748),
        .n__1750(cluster_6_n__1750),
        .n__736(cluster_6_n__736),
        .n__857(cluster_6_n__857),
        .n__934(cluster_6_n__934),
        .n__985(cluster_6_n__985),
        .rst_n(cluster_6_rst_n),
        .n__1288(cluster_6_n__1288),
        .n__1719(cluster_6_n__1719),
        .n__1770(cluster_6_n__1770),
        .n__226(cluster_6_n__226),
        .n__294(cluster_6_n__294)
    );

    cluster_7 u_cluster_7 (
        .I(cluster_7_I),
        .clk(clk),
        .n__20(cluster_7_n__20),
        .n__3146(cluster_7_n__3146),
        .n__3148(cluster_7_n__3148),
        .n__319(cluster_7_n__319),
        .n__3320(cluster_7_n__3320),
        .n__3326(cluster_7_n__3326),
        .n__3369(cluster_7_n__3369),
        .n__3676(cluster_7_n__3676),
        .n__3677(cluster_7_n__3677),
        .n__3682(cluster_7_n__3682),
        .n__3683(cluster_7_n__3683),
        .n__380(cluster_7_n__380),
        .n__832(cluster_7_n__832),
        .n__934(cluster_7_n__934),
        .rst_n(cluster_7_rst_n),
        .n__2474(cluster_7_n__2474),
        .n__2479(cluster_7_n__2479),
        .n__3139(cluster_7_n__3139),
        .n__3207(cluster_7_n__3207),
        .n__3249(cluster_7_n__3249),
        .n__3283(cluster_7_n__3283),
        .n__3325(cluster_7_n__3325),
        .n__3370(cluster_7_n__3370),
        .n__3414(cluster_7_n__3414),
        .n__3675(cluster_7_n__3675),
        .n__3686(cluster_7_n__3686),
        .n__3720(cluster_7_n__3720)
    );

    cluster_8 u_cluster_8 (
        .I(cluster_8_I),
        .clk(clk),
        .n__20(cluster_8_n__20),
        .n__319(cluster_8_n__319),
        .n__3675(cluster_8_n__3675),
        .n__3677(cluster_8_n__3677),
        .n__3720(cluster_8_n__3720),
        .n__3751(cluster_8_n__3751),
        .n__380(cluster_8_n__380),
        .n__3808(cluster_8_n__3808),
        .n__3863(cluster_8_n__3863),
        .n__3970(cluster_8_n__3970),
        .n__832(cluster_8_n__832),
        .n__934(cluster_8_n__934),
        .rst_n(cluster_8_rst_n),
        .n__2393(cluster_8_n__2393),
        .n__2472(cluster_8_n__2472),
        .n__3676(cluster_8_n__3676),
        .n__3683(cluster_8_n__3683),
        .n__3685(cluster_8_n__3685),
        .n__3753(cluster_8_n__3753),
        .n__3755(cluster_8_n__3755),
        .n__3756(cluster_8_n__3756),
        .n__3830(cluster_8_n__3830),
        .n__3902(cluster_8_n__3902)
    );

    cluster_9 u_cluster_9 (
        .I(cluster_9_I),
        .clk(clk),
        .n__1526(cluster_9_n__1526),
        .n__1627(cluster_9_n__1627),
        .n__1718(cluster_9_n__1718),
        .n__20(cluster_9_n__20),
        .n__319(cluster_9_n__319),
        .n__380(cluster_9_n__380),
        .n__832(cluster_9_n__832),
        .n__934(cluster_9_n__934),
        .rst_n(cluster_9_rst_n),
        .n__1557(cluster_9_n__1557),
        .n__1720(cluster_9_n__1720),
        .n__1723(cluster_9_n__1723),
        .n__1735(cluster_9_n__1735),
        .n__1738(cluster_9_n__1738)
    );

    cluster_10 u_cluster_10 (
        .I(cluster_10_I),
        .clk(clk),
        .n__1627(cluster_10_n__1627),
        .n__1738(cluster_10_n__1738),
        .n__2072(cluster_10_n__2072),
        .n__2109(cluster_10_n__2109),
        .n__2173(cluster_10_n__2173),
        .n__2218(cluster_10_n__2218),
        .n__2255(cluster_10_n__2255),
        .n__2268(cluster_10_n__2268),
        .n__2386(cluster_10_n__2386),
        .n__2393(cluster_10_n__2393),
        .n__2416(cluster_10_n__2416),
        .n__2418(cluster_10_n__2418),
        .n__2422(cluster_10_n__2422),
        .n__2459(cluster_10_n__2459),
        .n__2463(cluster_10_n__2463),
        .n__2472(cluster_10_n__2472),
        .n__2474(cluster_10_n__2474),
        .n__2475(cluster_10_n__2475),
        .n__2479(cluster_10_n__2479),
        .n__3283(cluster_10_n__3283),
        .n__3830(cluster_10_n__3830),
        .n__934(cluster_10_n__934),
        .rst_n(cluster_10_rst_n),
        .n__2112(cluster_10_n__2112),
        .n__2140(cluster_10_n__2140),
        .n__2253(cluster_10_n__2253),
        .n__2403(cluster_10_n__2403),
        .n__2419(cluster_10_n__2419),
        .n__2505(cluster_10_n__2505)
    );

    cluster_11 u_cluster_11 (
        .I(cluster_11_I),
        .clk(clk),
        .n__1034(cluster_11_n__1034),
        .n__1958(cluster_11_n__1958),
        .n__1964(cluster_11_n__1964),
        .n__2018(cluster_11_n__2018),
        .n__2037(cluster_11_n__2037),
        .n__2081(cluster_11_n__2081),
        .n__2085(cluster_11_n__2085),
        .n__2204(cluster_11_n__2204),
        .n__736(cluster_11_n__736),
        .n__857(cluster_11_n__857),
        .n__934(cluster_11_n__934),
        .n__985(cluster_11_n__985),
        .rst_n(cluster_11_rst_n),
        .n__1185(cluster_11_n__1185),
        .n__1920(cluster_11_n__1920),
        .n__1921(cluster_11_n__1921),
        .n__2038(cluster_11_n__2038),
        .n__2061(cluster_11_n__2061),
        .n__2065(cluster_11_n__2065),
        .n__2142(cluster_11_n__2142),
        .n__2145(cluster_11_n__2145),
        .n__2200(cluster_11_n__2200),
        .n__341(cluster_11_n__341)
    );

    cluster_12 u_cluster_12 (
        .clk(clk),
        .n__1062(cluster_12_n__1062),
        .n__1135(cluster_12_n__1135),
        .n__684(cluster_12_n__684),
        .n__686(cluster_12_n__686),
        .n__769(cluster_12_n__769),
        .n__802(cluster_12_n__802),
        .n__803(cluster_12_n__803),
        .n__971(cluster_12_n__971),
        .n__979(cluster_12_n__979),
        .rst_n(cluster_12_rst_n),
        .n__1022(cluster_12_n__1022),
        .n__548(cluster_12_n__548),
        .n__612(cluster_12_n__612),
        .n__716(cluster_12_n__716),
        .n__718(cluster_12_n__718),
        .n__719(cluster_12_n__719),
        .n__887(cluster_12_n__887),
        .n__888(cluster_12_n__888),
        .n__919(cluster_12_n__919),
        .n__923(cluster_12_n__923)
    );

    cluster_13 u_cluster_13 (
        .I(cluster_13_I),
        .clk(clk),
        .n__20(cluster_13_n__20),
        .n__319(cluster_13_n__319),
        .n__380(cluster_13_n__380),
        .n__4155(cluster_13_n__4155),
        .n__4159(cluster_13_n__4159),
        .n__4160(cluster_13_n__4160),
        .n__4163(cluster_13_n__4163),
        .n__4250(cluster_13_n__4250),
        .n__4276(cluster_13_n__4276),
        .n__4300(cluster_13_n__4300),
        .n__4325(cluster_13_n__4325),
        .n__832(cluster_13_n__832),
        .n__934(cluster_13_n__934),
        .rst_n(cluster_13_rst_n),
        .n__2386(cluster_13_n__2386),
        .n__2459(cluster_13_n__2459),
        .n__4147(cluster_13_n__4147),
        .n__4162(cluster_13_n__4162),
        .n__4178(cluster_13_n__4178),
        .n__4193(cluster_13_n__4193),
        .n__4199(cluster_13_n__4199),
        .n__4229(cluster_13_n__4229),
        .n__4274(cluster_13_n__4274),
        .n__4304(cluster_13_n__4304),
        .n__4331(cluster_13_n__4331)
    );

    cluster_14 u_cluster_14 (
        .n__1351(cluster_14_n__1351),
        .n__1363(cluster_14_n__1363),
        .n__1365(cluster_14_n__1365),
        .n__1505(cluster_14_n__1505),
        .n__1976(cluster_14_n__1976),
        .n__1992(cluster_14_n__1992),
        .n__2006(cluster_14_n__2006),
        .n__2088(cluster_14_n__2088),
        .n__2102(cluster_14_n__2102),
        .n__2117(cluster_14_n__2117),
        .n__2120(cluster_14_n__2120),
        .n__2158(cluster_14_n__2158)
    );

    cluster_15 u_cluster_15 (
        .n__1351(cluster_15_n__1351),
        .n__1363(cluster_15_n__1363),
        .n__1365(cluster_15_n__1365),
        .n__1505(cluster_15_n__1505),
        .n__1598(cluster_15_n__1598),
        .n__1815(cluster_15_n__1815),
        .n__1693(cluster_15_n__1693),
        .n__1816(cluster_15_n__1816),
        .n__1822(cluster_15_n__1822),
        .n__1827(cluster_15_n__1827),
        .n__1881(cluster_15_n__1881),
        .n__1905(cluster_15_n__1905),
        .n__1907(cluster_15_n__1907),
        .n__1928(cluster_15_n__1928)
    );

    cluster_16 u_cluster_16 (
        .I(cluster_16_I),
        .clk(clk),
        .n__20(cluster_16_n__20),
        .n__319(cluster_16_n__319),
        .n__380(cluster_16_n__380),
        .n__3968(cluster_16_n__3968),
        .n__4028(cluster_16_n__4028),
        .n__4054(cluster_16_n__4054),
        .n__4147(cluster_16_n__4147),
        .n__4160(cluster_16_n__4160),
        .n__4162(cluster_16_n__4162),
        .n__4178(cluster_16_n__4178),
        .n__832(cluster_16_n__832),
        .n__934(cluster_16_n__934),
        .rst_n(cluster_16_rst_n),
        .n__2475(cluster_16_n__2475),
        .n__4023(cluster_16_n__4023),
        .n__4100(cluster_16_n__4100),
        .n__4155(cluster_16_n__4155),
        .n__4159(cluster_16_n__4159),
        .n__4163(cluster_16_n__4163)
    );

    cluster_17 u_cluster_17 (
        .I(cluster_17_I),
        .clk(clk),
        .n__1022(cluster_17_n__1022),
        .n__1029(cluster_17_n__1029),
        .n__684(cluster_17_n__684),
        .n__802(cluster_17_n__802),
        .n__888(cluster_17_n__888),
        .n__919(cluster_17_n__919),
        .n__934(cluster_17_n__934),
        .n__971(cluster_17_n__971),
        .rst_n(cluster_17_rst_n),
        .n__1028(cluster_17_n__1028),
        .n__1062(cluster_17_n__1062),
        .n__1075(cluster_17_n__1075),
        .n__1084(cluster_17_n__1084),
        .n__1135(cluster_17_n__1135),
        .n__803(cluster_17_n__803),
        .n__982(cluster_17_n__982)
    );

    cluster_18 u_cluster_18 (
        .I(cluster_18_I),
        .clk(clk),
        .n__1672(cluster_18_n__1672),
        .n__1748(cluster_18_n__1748),
        .n__1750(cluster_18_n__1750),
        .n__1920(cluster_18_n__1920),
        .n__1921(cluster_18_n__1921),
        .n__934(cluster_18_n__934),
        .rst_n(cluster_18_rst_n),
        .n__1908(cluster_18_n__1908),
        .n__1958(cluster_18_n__1958),
        .n__203(cluster_18_n__203),
        .n__204(cluster_18_n__204)
    );

    cluster_19 u_cluster_19 (
        .clk(clk),
        .n__2140(cluster_19_n__2140),
        .n__2253(cluster_19_n__2253),
        .n__2403(cluster_19_n__2403),
        .n__2407(cluster_19_n__2407),
        .n__934(cluster_19_n__934),
        .rst_n(cluster_19_rst_n),
        .n__2173(cluster_19_n__2173),
        .n__2218(cluster_19_n__2218),
        .n__2255(cluster_19_n__2255),
        .n__2258(cluster_19_n__2258),
        .n__2418(cluster_19_n__2418),
        .n__2421(cluster_19_n__2421)
    );

    initial begin
        $display("========================================");
        $display("  Cluster-by-cluster functional sweep");
        $display("========================================");

        // ========== cluster_1 ==========
        $display("\n----- Testing cluster_1  (data_inputs=8, outputs=4) -----");
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_1_n__20 = counter[0];
            cluster_1_n__319 = counter[1];
            cluster_1_n__322 = counter[2];
            cluster_1_n__377 = counter[3];
            cluster_1_n__378 = counter[4];
            cluster_1_n__380 = counter[5];
            cluster_1_n__436 = counter[6];
            cluster_1_n__832 = counter[7];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_1  vec=%0d  IN: n__20=%b n__319=%b n__322=%b n__377=%b n__378=%b n__380=%b n__436=%b n__832=%b  |  OUT: n__1034=%b n__736=%b n__857=%b n__985=%b",
                     v, cluster_1_n__20, cluster_1_n__319, cluster_1_n__322, cluster_1_n__377, cluster_1_n__378, cluster_1_n__380, cluster_1_n__436, cluster_1_n__832, cluster_1_n__1034, cluster_1_n__736, cluster_1_n__857, cluster_1_n__985);
        end

        // ========== cluster_2 ==========
        $display("\n----- Testing cluster_2  (data_inputs=46, outputs=20) -----");
        cluster_2_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_2_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_2_I = counter[0];
            cluster_2_n__1351 = counter[1];
            cluster_2_n__1363 = counter[2];
            cluster_2_n__1365 = counter[3];
            cluster_2_n__1420 = counter[4];
            cluster_2_n__1425 = counter[5];
            cluster_2_n__1475 = counter[6];
            cluster_2_n__1505 = counter[7];
            cluster_2_n__1516 = counter[8];
            cluster_2_n__1559 = counter[9];
            cluster_2_n__1629 = counter[10];
            cluster_2_n__1693 = counter[11];
            cluster_2_n__1694 = counter[12];
            cluster_2_n__1815 = counter[13];
            cluster_2_n__1816 = counter[14];
            cluster_2_n__1822 = counter[15];
            cluster_2_n__1905 = counter[16];
            cluster_2_n__1907 = counter[17];
            cluster_2_n__1926 = counter[18];
            cluster_2_n__1928 = counter[19];
            cluster_2_n__1938 = counter[20];
            cluster_2_n__1976 = counter[21];
            cluster_2_n__2004 = counter[22];
            cluster_2_n__2006 = counter[23];
            cluster_2_n__2088 = counter[24];
            cluster_2_n__2117 = counter[25];
            cluster_2_n__2120 = counter[26];
            cluster_2_n__2155 = counter[27];
            cluster_2_n__2190 = counter[28];
            cluster_2_n__2223 = counter[29];
            cluster_2_n__2231 = counter[30];
            cluster_2_n__2239 = counter[31];
            cluster_2_n__2298 = counter[32];
            cluster_2_n__2301 = counter[33];
            cluster_2_n__2313 = counter[34];
            cluster_2_n__2610 = counter[35];
            cluster_2_n__2676 = counter[36];
            cluster_2_n__2678 = counter[37];
            cluster_2_n__2794 = counter[38];
            cluster_2_n__2810 = counter[39];
            cluster_2_n__3037 = counter[40];
            cluster_2_n__3377 = counter[41];
            cluster_2_n__3419 = counter[42];
            cluster_2_n__3420 = counter[43];
            cluster_2_n__934 = counter[44];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_2  vec=%0d  IN: I=%b n__1351=%b n__1363=%b n__1365=%b n__1420=%b n__1425=%b n__1475=%b n__1505=%b n__1516=%b n__1559=%b n__1629=%b n__1693=%b n__1694=%b n__1815=%b n__1816=%b n__1822=%b n__1905=%b n__1907=%b n__1926=%b n__1928=%b n__1938=%b n__1976=%b n__2004=%b n__2006=%b n__2088=%b n__2117=%b n__2120=%b n__2155=%b n__2190=%b n__2223=%b n__2231=%b n__2239=%b n__2298=%b n__2301=%b n__2313=%b n__2610=%b n__2676=%b n__2678=%b n__2794=%b n__2810=%b n__3037=%b n__3377=%b n__3419=%b n__3420=%b n__934=%b rst_n=%b  |  OUT: n__2224=%b n__2283=%b n__2307=%b n__2369=%b n__2599=%b n__2667=%b n__2671=%b n__2674=%b n__2709=%b n__2834=%b n__2944=%b n__3049=%b n__3435=%b n__3516=%b n__3518=%b n__3543=%b n__3553=%b n__3613=%b n__3616=%b n__3818=%b",
                     v, cluster_2_I, cluster_2_n__1351, cluster_2_n__1363, cluster_2_n__1365, cluster_2_n__1420, cluster_2_n__1425, cluster_2_n__1475, cluster_2_n__1505, cluster_2_n__1516, cluster_2_n__1559, cluster_2_n__1629, cluster_2_n__1693, cluster_2_n__1694, cluster_2_n__1815, cluster_2_n__1816, cluster_2_n__1822, cluster_2_n__1905, cluster_2_n__1907, cluster_2_n__1926, cluster_2_n__1928, cluster_2_n__1938, cluster_2_n__1976, cluster_2_n__2004, cluster_2_n__2006, cluster_2_n__2088, cluster_2_n__2117, cluster_2_n__2120, cluster_2_n__2155, cluster_2_n__2190, cluster_2_n__2223, cluster_2_n__2231, cluster_2_n__2239, cluster_2_n__2298, cluster_2_n__2301, cluster_2_n__2313, cluster_2_n__2610, cluster_2_n__2676, cluster_2_n__2678, cluster_2_n__2794, cluster_2_n__2810, cluster_2_n__3037, cluster_2_n__3377, cluster_2_n__3419, cluster_2_n__3420, cluster_2_n__934, cluster_2_rst_n, cluster_2_n__2224, cluster_2_n__2283, cluster_2_n__2307, cluster_2_n__2369, cluster_2_n__2599, cluster_2_n__2667, cluster_2_n__2671, cluster_2_n__2674, cluster_2_n__2709, cluster_2_n__2834, cluster_2_n__2944, cluster_2_n__3049, cluster_2_n__3435, cluster_2_n__3516, cluster_2_n__3518, cluster_2_n__3543, cluster_2_n__3553, cluster_2_n__3613, cluster_2_n__3616, cluster_2_n__3818);
        end

        // ========== cluster_3 ==========
        $display("\n----- Testing cluster_3  (data_inputs=9, outputs=7) -----");
        cluster_3_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_3_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_3_I = counter[0];
            cluster_3_n__1034 = counter[1];
            cluster_3_n__1288 = counter[2];
            cluster_3_n__736 = counter[3];
            cluster_3_n__857 = counter[4];
            cluster_3_n__881 = counter[5];
            cluster_3_n__934 = counter[6];
            cluster_3_n__985 = counter[7];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_3  vec=%0d  IN: I=%b n__1034=%b n__1288=%b n__736=%b n__857=%b n__881=%b n__934=%b n__985=%b rst_n=%b  |  OUT: n__1326=%b n__349=%b n__399=%b n__401=%b n__404=%b n__840=%b n__895=%b",
                     v, cluster_3_I, cluster_3_n__1034, cluster_3_n__1288, cluster_3_n__736, cluster_3_n__857, cluster_3_n__881, cluster_3_n__934, cluster_3_n__985, cluster_3_rst_n, cluster_3_n__1326, cluster_3_n__349, cluster_3_n__399, cluster_3_n__401, cluster_3_n__404, cluster_3_n__840, cluster_3_n__895);
        end

        // ========== cluster_4 ==========
        $display("\n----- Testing cluster_4  (data_inputs=13, outputs=16) -----");
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_4_n__1084 = counter[0];
            cluster_4_n__3435 = counter[1];
            cluster_4_n__3516 = counter[2];
            cluster_4_n__3518 = counter[3];
            cluster_4_n__3543 = counter[4];
            cluster_4_n__3553 = counter[5];
            cluster_4_n__3613 = counter[6];
            cluster_4_n__3616 = counter[7];
            cluster_4_n__3771 = counter[8];
            cluster_4_n__3818 = counter[9];
            cluster_4_n__3919 = counter[10];
            cluster_4_n__791 = counter[11];
            cluster_4_success = counter[12];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_4  vec=%0d  IN: n__1084=%b n__3435=%b n__3516=%b n__3518=%b n__3543=%b n__3553=%b n__3613=%b n__3616=%b n__3771=%b n__3818=%b n__3919=%b n__791=%b success=%b  |  OUT: O_0_=%b O_1_=%b O_2_=%b O_3_=%b O_4_=%b O_5_=%b O_6_=%b O_7_=%b n__1351=%b n__1363=%b n__1365=%b n__1505=%b n__3037=%b n__3377=%b n__3419=%b n__3420=%b",
                     v, cluster_4_n__1084, cluster_4_n__3435, cluster_4_n__3516, cluster_4_n__3518, cluster_4_n__3543, cluster_4_n__3553, cluster_4_n__3613, cluster_4_n__3616, cluster_4_n__3771, cluster_4_n__3818, cluster_4_n__3919, cluster_4_n__791, cluster_4_success, cluster_4_O_0_, cluster_4_O_1_, cluster_4_O_2_, cluster_4_O_3_, cluster_4_O_4_, cluster_4_O_5_, cluster_4_O_6_, cluster_4_O_7_, cluster_4_n__1351, cluster_4_n__1363, cluster_4_n__1365, cluster_4_n__1505, cluster_4_n__3037, cluster_4_n__3377, cluster_4_n__3419, cluster_4_n__3420);
        end

        // ========== cluster_5 ==========
        $display("\n----- Testing cluster_5  (data_inputs=5, outputs=7) -----");
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_5_n__1351 = counter[0];
            cluster_5_n__1363 = counter[1];
            cluster_5_n__1365 = counter[2];
            cluster_5_n__1425 = counter[3];
            cluster_5_n__1505 = counter[4];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_5  vec=%0d  IN: n__1351=%b n__1363=%b n__1365=%b n__1425=%b n__1505=%b  |  OUT: n__1420=%b n__1475=%b n__1516=%b n__1559=%b n__1598=%b n__1629=%b n__1694=%b",
                     v, cluster_5_n__1351, cluster_5_n__1363, cluster_5_n__1365, cluster_5_n__1425, cluster_5_n__1505, cluster_5_n__1420, cluster_5_n__1475, cluster_5_n__1516, cluster_5_n__1559, cluster_5_n__1598, cluster_5_n__1629, cluster_5_n__1694);
        end

        // ========== cluster_6 ==========
        $display("\n----- Testing cluster_6  (data_inputs=11, outputs=5) -----");
        cluster_6_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_6_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_6_I = counter[0];
            cluster_6_n__1034 = counter[1];
            cluster_6_n__1326 = counter[2];
            cluster_6_n__1672 = counter[3];
            cluster_6_n__1748 = counter[4];
            cluster_6_n__1750 = counter[5];
            cluster_6_n__736 = counter[6];
            cluster_6_n__857 = counter[7];
            cluster_6_n__934 = counter[8];
            cluster_6_n__985 = counter[9];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_6  vec=%0d  IN: I=%b n__1034=%b n__1326=%b n__1672=%b n__1748=%b n__1750=%b n__736=%b n__857=%b n__934=%b n__985=%b rst_n=%b  |  OUT: n__1288=%b n__1719=%b n__1770=%b n__226=%b n__294=%b",
                     v, cluster_6_I, cluster_6_n__1034, cluster_6_n__1326, cluster_6_n__1672, cluster_6_n__1748, cluster_6_n__1750, cluster_6_n__736, cluster_6_n__857, cluster_6_n__934, cluster_6_n__985, cluster_6_rst_n, cluster_6_n__1288, cluster_6_n__1719, cluster_6_n__1770, cluster_6_n__226, cluster_6_n__294);
        end

        // ========== cluster_7 ==========
        $display("\n----- Testing cluster_7  (data_inputs=16, outputs=12) -----");
        cluster_7_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_7_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_7_I = counter[0];
            cluster_7_n__20 = counter[1];
            cluster_7_n__3146 = counter[2];
            cluster_7_n__3148 = counter[3];
            cluster_7_n__319 = counter[4];
            cluster_7_n__3320 = counter[5];
            cluster_7_n__3326 = counter[6];
            cluster_7_n__3369 = counter[7];
            cluster_7_n__3676 = counter[8];
            cluster_7_n__3677 = counter[9];
            cluster_7_n__3682 = counter[10];
            cluster_7_n__3683 = counter[11];
            cluster_7_n__380 = counter[12];
            cluster_7_n__832 = counter[13];
            cluster_7_n__934 = counter[14];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_7  vec=%0d  IN: I=%b n__20=%b n__3146=%b n__3148=%b n__319=%b n__3320=%b n__3326=%b n__3369=%b n__3676=%b n__3677=%b n__3682=%b n__3683=%b n__380=%b n__832=%b n__934=%b rst_n=%b  |  OUT: n__2474=%b n__2479=%b n__3139=%b n__3207=%b n__3249=%b n__3283=%b n__3325=%b n__3370=%b n__3414=%b n__3675=%b n__3686=%b n__3720=%b",
                     v, cluster_7_I, cluster_7_n__20, cluster_7_n__3146, cluster_7_n__3148, cluster_7_n__319, cluster_7_n__3320, cluster_7_n__3326, cluster_7_n__3369, cluster_7_n__3676, cluster_7_n__3677, cluster_7_n__3682, cluster_7_n__3683, cluster_7_n__380, cluster_7_n__832, cluster_7_n__934, cluster_7_rst_n, cluster_7_n__2474, cluster_7_n__2479, cluster_7_n__3139, cluster_7_n__3207, cluster_7_n__3249, cluster_7_n__3283, cluster_7_n__3325, cluster_7_n__3370, cluster_7_n__3414, cluster_7_n__3675, cluster_7_n__3686, cluster_7_n__3720);
        end

        // ========== cluster_8 ==========
        $display("\n----- Testing cluster_8  (data_inputs=14, outputs=10) -----");
        cluster_8_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_8_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_8_I = counter[0];
            cluster_8_n__20 = counter[1];
            cluster_8_n__319 = counter[2];
            cluster_8_n__3675 = counter[3];
            cluster_8_n__3677 = counter[4];
            cluster_8_n__3720 = counter[5];
            cluster_8_n__3751 = counter[6];
            cluster_8_n__380 = counter[7];
            cluster_8_n__3808 = counter[8];
            cluster_8_n__3863 = counter[9];
            cluster_8_n__3970 = counter[10];
            cluster_8_n__832 = counter[11];
            cluster_8_n__934 = counter[12];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_8  vec=%0d  IN: I=%b n__20=%b n__319=%b n__3675=%b n__3677=%b n__3720=%b n__3751=%b n__380=%b n__3808=%b n__3863=%b n__3970=%b n__832=%b n__934=%b rst_n=%b  |  OUT: n__2393=%b n__2472=%b n__3676=%b n__3683=%b n__3685=%b n__3753=%b n__3755=%b n__3756=%b n__3830=%b n__3902=%b",
                     v, cluster_8_I, cluster_8_n__20, cluster_8_n__319, cluster_8_n__3675, cluster_8_n__3677, cluster_8_n__3720, cluster_8_n__3751, cluster_8_n__380, cluster_8_n__3808, cluster_8_n__3863, cluster_8_n__3970, cluster_8_n__832, cluster_8_n__934, cluster_8_rst_n, cluster_8_n__2393, cluster_8_n__2472, cluster_8_n__3676, cluster_8_n__3683, cluster_8_n__3685, cluster_8_n__3753, cluster_8_n__3755, cluster_8_n__3756, cluster_8_n__3830, cluster_8_n__3902);
        end

        // ========== cluster_9 ==========
        $display("\n----- Testing cluster_9  (data_inputs=10, outputs=5) -----");
        cluster_9_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_9_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_9_I = counter[0];
            cluster_9_n__1526 = counter[1];
            cluster_9_n__1627 = counter[2];
            cluster_9_n__1718 = counter[3];
            cluster_9_n__20 = counter[4];
            cluster_9_n__319 = counter[5];
            cluster_9_n__380 = counter[6];
            cluster_9_n__832 = counter[7];
            cluster_9_n__934 = counter[8];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_9  vec=%0d  IN: I=%b n__1526=%b n__1627=%b n__1718=%b n__20=%b n__319=%b n__380=%b n__832=%b n__934=%b rst_n=%b  |  OUT: n__1557=%b n__1720=%b n__1723=%b n__1735=%b n__1738=%b",
                     v, cluster_9_I, cluster_9_n__1526, cluster_9_n__1627, cluster_9_n__1718, cluster_9_n__20, cluster_9_n__319, cluster_9_n__380, cluster_9_n__832, cluster_9_n__934, cluster_9_rst_n, cluster_9_n__1557, cluster_9_n__1720, cluster_9_n__1723, cluster_9_n__1735, cluster_9_n__1738);
        end

        // ========== cluster_10 ==========
        $display("\n----- Testing cluster_10  (data_inputs=24, outputs=6) -----");
        cluster_10_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_10_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_10_I = counter[0];
            cluster_10_n__1627 = counter[1];
            cluster_10_n__1738 = counter[2];
            cluster_10_n__2072 = counter[3];
            cluster_10_n__2109 = counter[4];
            cluster_10_n__2173 = counter[5];
            cluster_10_n__2218 = counter[6];
            cluster_10_n__2255 = counter[7];
            cluster_10_n__2268 = counter[8];
            cluster_10_n__2386 = counter[9];
            cluster_10_n__2393 = counter[10];
            cluster_10_n__2416 = counter[11];
            cluster_10_n__2418 = counter[12];
            cluster_10_n__2422 = counter[13];
            cluster_10_n__2459 = counter[14];
            cluster_10_n__2463 = counter[15];
            cluster_10_n__2472 = counter[16];
            cluster_10_n__2474 = counter[17];
            cluster_10_n__2475 = counter[18];
            cluster_10_n__2479 = counter[19];
            cluster_10_n__3283 = counter[20];
            cluster_10_n__3830 = counter[21];
            cluster_10_n__934 = counter[22];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_10  vec=%0d  IN: I=%b n__1627=%b n__1738=%b n__2072=%b n__2109=%b n__2173=%b n__2218=%b n__2255=%b n__2268=%b n__2386=%b n__2393=%b n__2416=%b n__2418=%b n__2422=%b n__2459=%b n__2463=%b n__2472=%b n__2474=%b n__2475=%b n__2479=%b n__3283=%b n__3830=%b n__934=%b rst_n=%b  |  OUT: n__2112=%b n__2140=%b n__2253=%b n__2403=%b n__2419=%b n__2505=%b",
                     v, cluster_10_I, cluster_10_n__1627, cluster_10_n__1738, cluster_10_n__2072, cluster_10_n__2109, cluster_10_n__2173, cluster_10_n__2218, cluster_10_n__2255, cluster_10_n__2268, cluster_10_n__2386, cluster_10_n__2393, cluster_10_n__2416, cluster_10_n__2418, cluster_10_n__2422, cluster_10_n__2459, cluster_10_n__2463, cluster_10_n__2472, cluster_10_n__2474, cluster_10_n__2475, cluster_10_n__2479, cluster_10_n__3283, cluster_10_n__3830, cluster_10_n__934, cluster_10_rst_n, cluster_10_n__2112, cluster_10_n__2140, cluster_10_n__2253, cluster_10_n__2403, cluster_10_n__2419, cluster_10_n__2505);
        end

        // ========== cluster_11 ==========
        $display("\n----- Testing cluster_11  (data_inputs=14, outputs=10) -----");
        cluster_11_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_11_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_11_I = counter[0];
            cluster_11_n__1034 = counter[1];
            cluster_11_n__1958 = counter[2];
            cluster_11_n__1964 = counter[3];
            cluster_11_n__2018 = counter[4];
            cluster_11_n__2037 = counter[5];
            cluster_11_n__2081 = counter[6];
            cluster_11_n__2085 = counter[7];
            cluster_11_n__2204 = counter[8];
            cluster_11_n__736 = counter[9];
            cluster_11_n__857 = counter[10];
            cluster_11_n__934 = counter[11];
            cluster_11_n__985 = counter[12];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_11  vec=%0d  IN: I=%b n__1034=%b n__1958=%b n__1964=%b n__2018=%b n__2037=%b n__2081=%b n__2085=%b n__2204=%b n__736=%b n__857=%b n__934=%b n__985=%b rst_n=%b  |  OUT: n__1185=%b n__1920=%b n__1921=%b n__2038=%b n__2061=%b n__2065=%b n__2142=%b n__2145=%b n__2200=%b n__341=%b",
                     v, cluster_11_I, cluster_11_n__1034, cluster_11_n__1958, cluster_11_n__1964, cluster_11_n__2018, cluster_11_n__2037, cluster_11_n__2081, cluster_11_n__2085, cluster_11_n__2204, cluster_11_n__736, cluster_11_n__857, cluster_11_n__934, cluster_11_n__985, cluster_11_rst_n, cluster_11_n__1185, cluster_11_n__1920, cluster_11_n__1921, cluster_11_n__2038, cluster_11_n__2061, cluster_11_n__2065, cluster_11_n__2142, cluster_11_n__2145, cluster_11_n__2200, cluster_11_n__341);
        end

        // ========== cluster_12 ==========
        $display("\n----- Testing cluster_12  (data_inputs=10, outputs=10) -----");
        cluster_12_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_12_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_12_n__1062 = counter[0];
            cluster_12_n__1135 = counter[1];
            cluster_12_n__684 = counter[2];
            cluster_12_n__686 = counter[3];
            cluster_12_n__769 = counter[4];
            cluster_12_n__802 = counter[5];
            cluster_12_n__803 = counter[6];
            cluster_12_n__971 = counter[7];
            cluster_12_n__979 = counter[8];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_12  vec=%0d  IN: n__1062=%b n__1135=%b n__684=%b n__686=%b n__769=%b n__802=%b n__803=%b n__971=%b n__979=%b rst_n=%b  |  OUT: n__1022=%b n__548=%b n__612=%b n__716=%b n__718=%b n__719=%b n__887=%b n__888=%b n__919=%b n__923=%b",
                     v, cluster_12_n__1062, cluster_12_n__1135, cluster_12_n__684, cluster_12_n__686, cluster_12_n__769, cluster_12_n__802, cluster_12_n__803, cluster_12_n__971, cluster_12_n__979, cluster_12_rst_n, cluster_12_n__1022, cluster_12_n__548, cluster_12_n__612, cluster_12_n__716, cluster_12_n__718, cluster_12_n__719, cluster_12_n__887, cluster_12_n__888, cluster_12_n__919, cluster_12_n__923);
        end

        // ========== cluster_13 ==========
        $display("\n----- Testing cluster_13  (data_inputs=15, outputs=11) -----");
        cluster_13_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_13_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_13_I = counter[0];
            cluster_13_n__20 = counter[1];
            cluster_13_n__319 = counter[2];
            cluster_13_n__380 = counter[3];
            cluster_13_n__4155 = counter[4];
            cluster_13_n__4159 = counter[5];
            cluster_13_n__4160 = counter[6];
            cluster_13_n__4163 = counter[7];
            cluster_13_n__4250 = counter[8];
            cluster_13_n__4276 = counter[9];
            cluster_13_n__4300 = counter[10];
            cluster_13_n__4325 = counter[11];
            cluster_13_n__832 = counter[12];
            cluster_13_n__934 = counter[13];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_13  vec=%0d  IN: I=%b n__20=%b n__319=%b n__380=%b n__4155=%b n__4159=%b n__4160=%b n__4163=%b n__4250=%b n__4276=%b n__4300=%b n__4325=%b n__832=%b n__934=%b rst_n=%b  |  OUT: n__2386=%b n__2459=%b n__4147=%b n__4162=%b n__4178=%b n__4193=%b n__4199=%b n__4229=%b n__4274=%b n__4304=%b n__4331=%b",
                     v, cluster_13_I, cluster_13_n__20, cluster_13_n__319, cluster_13_n__380, cluster_13_n__4155, cluster_13_n__4159, cluster_13_n__4160, cluster_13_n__4163, cluster_13_n__4250, cluster_13_n__4276, cluster_13_n__4300, cluster_13_n__4325, cluster_13_n__832, cluster_13_n__934, cluster_13_rst_n, cluster_13_n__2386, cluster_13_n__2459, cluster_13_n__4147, cluster_13_n__4162, cluster_13_n__4178, cluster_13_n__4193, cluster_13_n__4199, cluster_13_n__4229, cluster_13_n__4274, cluster_13_n__4304, cluster_13_n__4331);
        end

        // ========== cluster_14 ==========
        $display("\n----- Testing cluster_14  (data_inputs=4, outputs=8) -----");
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_14_n__1351 = counter[0];
            cluster_14_n__1363 = counter[1];
            cluster_14_n__1365 = counter[2];
            cluster_14_n__1505 = counter[3];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_14  vec=%0d  IN: n__1351=%b n__1363=%b n__1365=%b n__1505=%b  |  OUT: n__1976=%b n__1992=%b n__2006=%b n__2088=%b n__2102=%b n__2117=%b n__2120=%b n__2158=%b",
                     v, cluster_14_n__1351, cluster_14_n__1363, cluster_14_n__1365, cluster_14_n__1505, cluster_14_n__1976, cluster_14_n__1992, cluster_14_n__2006, cluster_14_n__2088, cluster_14_n__2102, cluster_14_n__2117, cluster_14_n__2120, cluster_14_n__2158);
        end

        // ========== cluster_15 ==========
        $display("\n----- Testing cluster_15  (data_inputs=6, outputs=8) -----");
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_15_n__1351 = counter[0];
            cluster_15_n__1363 = counter[1];
            cluster_15_n__1365 = counter[2];
            cluster_15_n__1505 = counter[3];
            cluster_15_n__1598 = counter[4];
            cluster_15_n__1815 = counter[5];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_15  vec=%0d  IN: n__1351=%b n__1363=%b n__1365=%b n__1505=%b n__1598=%b n__1815=%b  |  OUT: n__1693=%b n__1816=%b n__1822=%b n__1827=%b n__1881=%b n__1905=%b n__1907=%b n__1928=%b",
                     v, cluster_15_n__1351, cluster_15_n__1363, cluster_15_n__1365, cluster_15_n__1505, cluster_15_n__1598, cluster_15_n__1815, cluster_15_n__1693, cluster_15_n__1816, cluster_15_n__1822, cluster_15_n__1827, cluster_15_n__1881, cluster_15_n__1905, cluster_15_n__1907, cluster_15_n__1928);
        end

        // ========== cluster_16 ==========
        $display("\n----- Testing cluster_16  (data_inputs=14, outputs=6) -----");
        cluster_16_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_16_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_16_I = counter[0];
            cluster_16_n__20 = counter[1];
            cluster_16_n__319 = counter[2];
            cluster_16_n__380 = counter[3];
            cluster_16_n__3968 = counter[4];
            cluster_16_n__4028 = counter[5];
            cluster_16_n__4054 = counter[6];
            cluster_16_n__4147 = counter[7];
            cluster_16_n__4160 = counter[8];
            cluster_16_n__4162 = counter[9];
            cluster_16_n__4178 = counter[10];
            cluster_16_n__832 = counter[11];
            cluster_16_n__934 = counter[12];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_16  vec=%0d  IN: I=%b n__20=%b n__319=%b n__380=%b n__3968=%b n__4028=%b n__4054=%b n__4147=%b n__4160=%b n__4162=%b n__4178=%b n__832=%b n__934=%b rst_n=%b  |  OUT: n__2475=%b n__4023=%b n__4100=%b n__4155=%b n__4159=%b n__4163=%b",
                     v, cluster_16_I, cluster_16_n__20, cluster_16_n__319, cluster_16_n__380, cluster_16_n__3968, cluster_16_n__4028, cluster_16_n__4054, cluster_16_n__4147, cluster_16_n__4160, cluster_16_n__4162, cluster_16_n__4178, cluster_16_n__832, cluster_16_n__934, cluster_16_rst_n, cluster_16_n__2475, cluster_16_n__4023, cluster_16_n__4100, cluster_16_n__4155, cluster_16_n__4159, cluster_16_n__4163);
        end

        // ========== cluster_17 ==========
        $display("\n----- Testing cluster_17  (data_inputs=10, outputs=7) -----");
        cluster_17_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_17_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_17_I = counter[0];
            cluster_17_n__1022 = counter[1];
            cluster_17_n__1029 = counter[2];
            cluster_17_n__684 = counter[3];
            cluster_17_n__802 = counter[4];
            cluster_17_n__888 = counter[5];
            cluster_17_n__919 = counter[6];
            cluster_17_n__934 = counter[7];
            cluster_17_n__971 = counter[8];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_17  vec=%0d  IN: I=%b n__1022=%b n__1029=%b n__684=%b n__802=%b n__888=%b n__919=%b n__934=%b n__971=%b rst_n=%b  |  OUT: n__1028=%b n__1062=%b n__1075=%b n__1084=%b n__1135=%b n__803=%b n__982=%b",
                     v, cluster_17_I, cluster_17_n__1022, cluster_17_n__1029, cluster_17_n__684, cluster_17_n__802, cluster_17_n__888, cluster_17_n__919, cluster_17_n__934, cluster_17_n__971, cluster_17_rst_n, cluster_17_n__1028, cluster_17_n__1062, cluster_17_n__1075, cluster_17_n__1084, cluster_17_n__1135, cluster_17_n__803, cluster_17_n__982);
        end

        // ========== cluster_18 ==========
        $display("\n----- Testing cluster_18  (data_inputs=8, outputs=4) -----");
        cluster_18_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_18_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_18_I = counter[0];
            cluster_18_n__1672 = counter[1];
            cluster_18_n__1748 = counter[2];
            cluster_18_n__1750 = counter[3];
            cluster_18_n__1920 = counter[4];
            cluster_18_n__1921 = counter[5];
            cluster_18_n__934 = counter[6];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_18  vec=%0d  IN: I=%b n__1672=%b n__1748=%b n__1750=%b n__1920=%b n__1921=%b n__934=%b rst_n=%b  |  OUT: n__1908=%b n__1958=%b n__203=%b n__204=%b",
                     v, cluster_18_I, cluster_18_n__1672, cluster_18_n__1748, cluster_18_n__1750, cluster_18_n__1920, cluster_18_n__1921, cluster_18_n__934, cluster_18_rst_n, cluster_18_n__1908, cluster_18_n__1958, cluster_18_n__203, cluster_18_n__204);
        end

        // ========== cluster_19 ==========
        $display("\n----- Testing cluster_19  (data_inputs=6, outputs=6) -----");
        cluster_19_rst_n = 1'b0;
        repeat (2) @(negedge clk);
        cluster_19_rst_n = 1'b1;
        @(negedge clk);
        for (v = 0; v < MAX_VEC; v = v + 1) begin
            counter = v;
            cluster_19_n__2140 = counter[0];
            cluster_19_n__2253 = counter[1];
            cluster_19_n__2403 = counter[2];
            cluster_19_n__2407 = counter[3];
            cluster_19_n__934 = counter[4];
            @(negedge clk);  // let combo settle / capture
            $display("  cluster_19  vec=%0d  IN: n__2140=%b n__2253=%b n__2403=%b n__2407=%b n__934=%b rst_n=%b  |  OUT: n__2173=%b n__2218=%b n__2255=%b n__2258=%b n__2418=%b n__2421=%b",
                     v, cluster_19_n__2140, cluster_19_n__2253, cluster_19_n__2403, cluster_19_n__2407, cluster_19_n__934, cluster_19_rst_n, cluster_19_n__2173, cluster_19_n__2218, cluster_19_n__2255, cluster_19_n__2258, cluster_19_n__2418, cluster_19_n__2421);
        end

        $display("\n===== All clusters finished =====");
        $finish;
    end

    // Safety timeout
    initial begin
        #(MAX_VEC * 20 * CLK_PERIOD * 25);
        $display("TIMEOUT");
        $finish;
    end

endmodule
