// Independent behavioral models for sky130_fd_sc_hd cells, written from
// scratch based on the public (Apache-2.0) SkyWater functional reference
// models -- NOT a copy of SkyWater's files. No power pins (VPWR/VGND/VPB/
// VNB) are modeled; matches netlist_no_power.v / netlist_grouped.v.
// Drive-strength suffix (_1, _2, _4, ...) has no effect on logic function,
// so e.g. sky130_fd_sc_hd__nand2_2 and a hypothetical _4 variant would be
// functionally identical modules -- only the exact names actually used in
// the netlist are generated below.

module sky130_fd_sc_hd__a2111oi_2 (A1, A2, B1, C1, D1, Y);
    input A1, A2, B1, C1, D1;
    output Y;
    assign Y = ~((A1 & A2) | B1 | C1 | D1);
endmodule

module sky130_fd_sc_hd__a211o_2 (A1, A2, B1, C1, X);
    input A1, A2, B1, C1;
    output X;
    assign X = (A1 & A2) | B1 | C1;
endmodule

module sky130_fd_sc_hd__a211oi_2 (A1, A2, B1, C1, Y);
    input A1, A2, B1, C1;
    output Y;
    assign Y = ~((A1 & A2) | B1 | C1);
endmodule

module sky130_fd_sc_hd__a21bo_2 (A1, A2, B1_N, X);
    input A1, A2, B1_N;
    output X;
    assign X = (A1 & A2) | (~B1_N);
endmodule

module sky130_fd_sc_hd__a21boi_2 (A1, A2, B1_N, Y);
    input A1, A2, B1_N;
    output Y;
    assign Y = ~((A1 & A2) | (~B1_N));
endmodule

module sky130_fd_sc_hd__a21o_2 (A1, A2, B1, X);
    input A1, A2, B1;
    output X;
    assign X = (A1 & A2) | B1;
endmodule

module sky130_fd_sc_hd__a21oi_2 (A1, A2, B1, Y);
    input A1, A2, B1;
    output Y;
    assign Y = ~((A1 & A2) | B1);
endmodule

module sky130_fd_sc_hd__a221o_2 (A1, A2, B1, B2, C1, X);
    input A1, A2, B1, B2, C1;
    output X;
    assign X = (A1 & A2) | (B1 & B2) | C1;
endmodule

module sky130_fd_sc_hd__a221oi_2 (A1, A2, B1, B2, C1, Y);
    input A1, A2, B1, B2, C1;
    output Y;
    assign Y = ~((A1 & A2) | (B1 & B2) | C1);
endmodule

module sky130_fd_sc_hd__a22o_2 (A1, A2, B1, B2, X);
    input A1, A2, B1, B2;
    output X;
    assign X = (A1 & A2) | (B1 & B2);
endmodule

module sky130_fd_sc_hd__a22oi_2 (A1, A2, B1, B2, Y);
    input A1, A2, B1, B2;
    output Y;
    assign Y = ~((A1 & A2) | (B1 & B2));
endmodule

module sky130_fd_sc_hd__a311o_2 (A1, A2, A3, B1, C1, X);
    input A1, A2, A3, B1, C1;
    output X;
    assign X = (A1 & A2 & A3) | B1 | C1;
endmodule

module sky130_fd_sc_hd__a31o_2 (A1, A2, A3, B1, X);
    input A1, A2, A3, B1;
    output X;
    assign X = (A1 & A2 & A3) | B1;
endmodule

module sky130_fd_sc_hd__a31oi_2 (A1, A2, A3, B1, Y);
    input A1, A2, A3, B1;
    output Y;
    assign Y = ~((A1 & A2 & A3) | B1);
endmodule

module sky130_fd_sc_hd__a32o_2 (A1, A2, A3, B1, B2, X);
    input A1, A2, A3, B1, B2;
    output X;
    assign X = (A1 & A2 & A3) | (B1 & B2);
endmodule

module sky130_fd_sc_hd__a41oi_2 (A1, A2, A3, A4, B1, Y);
    input A1, A2, A3, A4, B1;
    output Y;
    assign Y = ~((A1 & A2 & A3 & A4) | B1);
endmodule

module sky130_fd_sc_hd__and2_2 (A, B, X);
    input A, B;
    output X;
    assign X = A & B;
endmodule

module sky130_fd_sc_hd__and2b_2 (A_N, B, X);
    input A_N, B;
    output X;
    assign X = (~A_N) & B;
endmodule

module sky130_fd_sc_hd__and3_2 (A, B, C, X);
    input A, B, C;
    output X;
    assign X = A & B & C;
endmodule

module sky130_fd_sc_hd__and3b_2 (A_N, B, C, X);
    input A_N, B, C;
    output X;
    assign X = (~A_N) & B & C;
endmodule

module sky130_fd_sc_hd__and4_2 (A, B, C, D, X);
    input A, B, C, D;
    output X;
    assign X = A & B & C & D;
endmodule

module sky130_fd_sc_hd__and4b_2 (A_N, B, C, D, X);
    input A_N, B, C, D;
    output X;
    assign X = (~A_N) & B & C & D;
endmodule

module sky130_fd_sc_hd__and4bb_2 (A_N, B_N, C, D, X);
    input A_N, B_N, C, D;
    output X;
    assign X = (~A_N) & (~B_N) & C & D;
endmodule

module sky130_fd_sc_hd__buf_2 (A, X);
    input A;
    output X;
    assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_16 (A, X);
    input A;
    output X;
    assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_4 (A, X);
    input A;
    output X;
    assign X = A;
endmodule

module sky130_fd_sc_hd__clkbuf_8 (A, X);
    input A;
    output X;
    assign X = A;
endmodule

module sky130_fd_sc_hd__conb_1 (HI, LO);
    output HI, LO;
    assign HI = 1'b1;
    assign LO = 1'b0;
endmodule

module sky130_fd_sc_hd__dfrtp_2 (D, CLK, RESET_B, Q);
    input D, CLK, RESET_B;
    output reg Q;
    always @(posedge CLK or negedge RESET_B)
        if (!RESET_B) Q <= 1'b0;
        else          Q <= D;
endmodule

module sky130_fd_sc_hd__dfstp_2 (D, CLK, SET_B, Q);
    input D, CLK, SET_B;
    output reg Q;
    always @(posedge CLK or negedge SET_B)
        if (!SET_B) Q <= 1'b1;
        else        Q <= D;
endmodule

module sky130_fd_sc_hd__dfxtp_2 (D, CLK, Q);
    input D, CLK;
    output reg Q;
    always @(posedge CLK) Q <= D;
endmodule

module sky130_fd_sc_hd__inv_2 (A, Y);
    input A;
    output Y;
    assign Y = ~A;
endmodule

module sky130_fd_sc_hd__mux2_1 (A0, A1, S, X);
    input A0, A1, S;
    output X;
    assign X = S ? A1 : A0;
endmodule

module sky130_fd_sc_hd__nand2_2 (A, B, Y);
    input A, B;
    output Y;
    assign Y = ~(A & B);
endmodule

module sky130_fd_sc_hd__nand2b_2 (A_N, B, Y);
    input A_N, B;
    output Y;
    assign Y = A_N | (~B);
endmodule

module sky130_fd_sc_hd__nand3_2 (A, B, C, Y);
    input A, B, C;
    output Y;
    assign Y = ~(A & B & C);
endmodule

module sky130_fd_sc_hd__nand3b_2 (A_N, B, C, Y);
    input A_N, B, C;
    output Y;
    assign Y = A_N | (~B) | (~C);
endmodule

module sky130_fd_sc_hd__nand4_2 (A, B, C, D, Y);
    input A, B, C, D;
    output Y;
    assign Y = ~(A & B & C & D);
endmodule

module sky130_fd_sc_hd__nor2_2 (A, B, Y);
    input A, B;
    output Y;
    assign Y = ~(A | B);
endmodule

module sky130_fd_sc_hd__nor3_2 (A, B, C, Y);
    input A, B, C;
    output Y;
    assign Y = ~(A | B | C);
endmodule

module sky130_fd_sc_hd__nor3b_2 (A, B, C_N, Y);
    input A, B, C_N;
    output Y;
    assign Y = C_N & ~(A | B);
endmodule

module sky130_fd_sc_hd__nor4_2 (A, B, C, D, Y);
    input A, B, C, D;
    output Y;
    assign Y = ~(A | B | C | D);
endmodule

module sky130_fd_sc_hd__nor4b_2 (A, B, C, D_N, Y);
    input A, B, C, D_N;
    output Y;
    assign Y = D_N & ~(A | B | C);
endmodule

module sky130_fd_sc_hd__o211a_2 (A1, A2, B1, C1, X);
    input A1, A2, B1, C1;
    output X;
    assign X = (A1 | A2) & B1 & C1;
endmodule

module sky130_fd_sc_hd__o211ai_2 (A1, A2, B1, C1, Y);
    input A1, A2, B1, C1;
    output Y;
    assign Y = ~((A1 | A2) & B1 & C1);
endmodule

module sky130_fd_sc_hd__o21a_2 (A1, A2, B1, X);
    input A1, A2, B1;
    output X;
    assign X = (A1 | A2) & B1;
endmodule

module sky130_fd_sc_hd__o21ai_2 (A1, A2, B1, Y);
    input A1, A2, B1;
    output Y;
    assign Y = ~((A1 | A2) & B1);
endmodule

module sky130_fd_sc_hd__o21ba_2 (A1, A2, B1_N, X);
    input A1, A2, B1_N;
    output X;
    assign X = (A1 | A2) & (~B1_N);
endmodule

module sky130_fd_sc_hd__o21bai_2 (A1, A2, B1_N, Y);
    input A1, A2, B1_N;
    output Y;
    assign Y = ~((A1 | A2) & (~B1_N));
endmodule

module sky130_fd_sc_hd__o221a_2 (A1, A2, B1, B2, C1, X);
    input A1, A2, B1, B2, C1;
    output X;
    assign X = (A1 | A2) & (B1 | B2) & C1;
endmodule

module sky130_fd_sc_hd__o22a_2 (A1, A2, B1, B2, X);
    input A1, A2, B1, B2;
    output X;
    assign X = (A1 | A2) & (B1 | B2);
endmodule

module sky130_fd_sc_hd__o22ai_2 (A1, A2, B1, B2, Y);
    input A1, A2, B1, B2;
    output Y;
    assign Y = ~((A1 | A2) & (B1 | B2));
endmodule

module sky130_fd_sc_hd__o2bb2a_2 (A1_N, A2_N, B1, B2, X);
    input A1_N, A2_N, B1, B2;
    output X;
    assign X = (~(A1_N & A2_N)) & (B1 | B2);
endmodule

module sky130_fd_sc_hd__o311a_2 (A1, A2, A3, B1, C1, X);
    input A1, A2, A3, B1, C1;
    output X;
    assign X = (A1 | A2 | A3) & B1 & C1;
endmodule

module sky130_fd_sc_hd__o31a_2 (A1, A2, A3, B1, X);
    input A1, A2, A3, B1;
    output X;
    assign X = (A1 | A2 | A3) & B1;
endmodule

module sky130_fd_sc_hd__o31ai_2 (A1, A2, A3, B1, Y);
    input A1, A2, A3, B1;
    output Y;
    assign Y = ~((A1 | A2 | A3) & B1);
endmodule

module sky130_fd_sc_hd__o32a_2 (A1, A2, A3, B1, B2, X);
    input A1, A2, A3, B1, B2;
    output X;
    assign X = (A1 | A2 | A3) & (B1 | B2);
endmodule

module sky130_fd_sc_hd__o32ai_2 (A1, A2, A3, B1, B2, Y);
    input A1, A2, A3, B1, B2;
    output Y;
    assign Y = ~((A1 | A2 | A3) & (B1 | B2));
endmodule

module sky130_fd_sc_hd__or2_2 (A, B, X);
    input A, B;
    output X;
    assign X = A | B;
endmodule

module sky130_fd_sc_hd__or3_2 (A, B, C, X);
    input A, B, C;
    output X;
    assign X = A | B | C;
endmodule

module sky130_fd_sc_hd__or3b_2 (A, B, C_N, X);
    input A, B, C_N;
    output X;
    assign X = A | B | (~C_N);
endmodule

module sky130_fd_sc_hd__or4_2 (A, B, C, D, X);
    input A, B, C, D;
    output X;
    assign X = A | B | C | D;
endmodule

module sky130_fd_sc_hd__or4b_2 (A, B, C, D_N, X);
    input A, B, C, D_N;
    output X;
    assign X = A | B | C | (~D_N);
endmodule

module sky130_fd_sc_hd__or4bb_2 (A, B, C_N, D_N, X);
    input A, B, C_N, D_N;
    output X;
    assign X = A | B | (~C_N) | (~D_N);
endmodule

module sky130_fd_sc_hd__xnor2_2 (A, B, Y);
    input A, B;
    output Y;
    assign Y = ~(A ^ B);
endmodule

module sky130_fd_sc_hd__xor2_2 (A, B, X);
    input A, B;
    output X;
    assign X = A ^ B;
endmodule
