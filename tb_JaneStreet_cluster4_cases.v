`timescale 1ps/1ps

// ============================================================
// tb_JaneStreet_cluster4_cases
//
// Runs the JaneStreet module normally (121-cycle alternating I,
// enable held high, then dropped) for THREE cases, and observes
// ALL of cluster_4's inputs every clock -- not its outputs. That's
// clk plus these 13 signals:
//   n__1084, n__3435, n__3516, n__3518, n__3543, n__3553,
//   n__3613, n__3616, n__3771, n__3818, n__3919, n__791, success
//
// cluster_4's "success" pin is an internal signal (it's a
// sub-module of JaneStreet), so we reach it with a hierarchical
// path and force/release it directly on the wire.
//
// cluster_4 is instantiated inside JaneStreet as "u_cluster_4"
// (see: cluster_4 u_cluster_4 (...) in JaneStreet.v), so it's
// reached hierarchically as dut.u_cluster_4.<signal>. All 13 of
// these input signals are also plain internal nets of JaneStreet
// itself (declared once, driven elsewhere, consumed by cluster_4),
// so they're reached directly as dut.<name> too.
//
// Note: cluster_4's "success" input is wired directly to
// JaneStreet's internal "success" net (driven by inst_196, a
// dfrtp_2 flop). Forcing dut.u_cluster_4.success therefore forces
// that whole net, which is fine here since cluster_4 is its only
// fanout in this netlist.
//
// Case 1: enable=1 for 121 cycles, then enable=0. cluster_4's
//         success signal is left completely alone (whatever
//         JaneStreet normally drives it to).
// Case 2: same run, but on the 121st clock cycle we force
//         cluster_4.success = 1 and hold it there.
// Case 3: same run, but on the 121st cycle we force
//         cluster_4.success = 1, then on the very next cycle we
//         force it back to 0.
// ============================================================

module tb_JaneStreet_cluster4_cases;

    parameter CLK_PERIOD    = 10000;
    parameter ENABLE_CYCLES = 121;
    parameter SETTLE        = 20;

    reg  clk, rst_n, enable, I;
    wire O_0_, O_1_, O_2_, O_3_, O_4_, O_5_, O_6_, O_7_, success;
    wire [7:0] O = {O_7_, O_6_, O_5_, O_4_, O_3_, O_2_, O_1_, O_0_};

    // Alternating pattern: index 0 = 0, 1 = 1, 2 = 0, ...
    reg candidate [0:120];
    integer i;

    initial begin
        for (i = 0; i <= 120; i = i + 1)
            candidate[i] = i[0];
    end

    JaneStreet dut (
        .I      (I),
        .clk    (clk),
        .enable (enable),
        .rst_n  (rst_n),
        .O_0_   (O_0_),
        .O_1_   (O_1_),
        .O_2_   (O_2_),
        .O_3_   (O_3_),
        .O_4_   (O_4_),
        .O_5_   (O_5_),
        .O_6_   (O_6_),
        .O_7_   (O_7_),
        .success(success)
    );

    // All 12 data inputs + success feeding into cluster_4, packed
    // into one bus for a compact hex display. Bit order (MSB->LSB):
    //   n__791 n__3919 n__3818 n__3771 n__3616 n__3613
    //   n__3553 n__3543 n__3518 n__3516 n__3435 n__1084 success
    wire [12:0] c4_inputs = {dut.n__791, dut.n__3919, dut.n__3818, dut.n__3771,
                              dut.n__3616, dut.n__3613, dut.n__3553, dut.n__3543,
                              dut.n__3518, dut.n__3516, dut.n__3435, dut.n__1084,
                              dut.u_cluster_4.success};

    initial clk = 0;
    always #(CLK_PERIOD/2) clk = ~clk;

    always @(posedge clk) begin
        $display("t=%0t rst_n=%b enable=%b I=%b | JS: O=0x%02h success=%b | cluster4 inputs: n__1084=%b n__3435=%b n__3516=%b n__3518=%b n__3543=%b n__3553=%b n__3613=%b n__3616=%b n__3771=%b n__3818=%b n__3919=%b n__791=%b success=%b | packed=0x%04h",
                  $time, rst_n, enable, I, O, success,
                  dut.n__1084, dut.n__3435, dut.n__3516, dut.n__3518,
                  dut.n__3543, dut.n__3553, dut.n__3613, dut.n__3616,
                  dut.n__3771, dut.n__3818, dut.n__3919, dut.n__791,
                  dut.u_cluster_4.success, c4_inputs);
    end

    // ------------------------------------------------------------
    // Runs one full 121-cycle JaneStreet pass, resetting first.
    // case_num selects what happens to cluster_4.success on/after
    // the 121st enabled clock cycle.
    // ------------------------------------------------------------
    task run_case(input integer case_num);
        begin
            $display("");
            $display("================ CASE %0d START ================", case_num);

            // Make sure any previous force is cleared before we start
            force dut.u_cluster_4.success = 1'b0;
            @(negedge clk);
            release dut.u_cluster_4.success;

            rst_n  = 0;
            enable = 0;
            I      = 0;
            repeat (3) @(negedge clk);
            rst_n = 1;
            @(negedge clk);

            enable = 1;
            for (i = 0; i < ENABLE_CYCLES; i = i + 1) begin
                @(negedge clk);
                I = candidate[i];

                // i == ENABLE_CYCLES-1 is the 121st enabled clock cycle
                if (i == ENABLE_CYCLES - 1) begin
                    if (case_num == 2) begin
                        force dut.u_cluster_4.success = 1'b1;
                        $display(">>> CASE 2: forcing cluster_4.success = 1 at t=%0t (cycle %0d) <<<", $time, i);
                    end
                    else if (case_num == 3) begin
                        force dut.u_cluster_4.success = 1'b1;
                        $display(">>> CASE 3: forcing cluster_4.success = 1 at t=%0t (cycle %0d) <<<", $time, i);
                    end
                end
                else if (case_num == 3 && i == ENABLE_CYCLES) begin
                    // unreachable inside this loop (i only goes to
                    // ENABLE_CYCLES-1); the case-3 drop to 0 is
                    // handled right after the loop below instead.
                end
            end

            // Case 3: drop success back to 0 on the very next cycle
            if (case_num == 3) begin
                @(negedge clk);
                force dut.u_cluster_4.success = 1'b0;
                $display(">>> CASE 3: forcing cluster_4.success = 0 at t=%0t <<<", $time);
            end

            // enable stays high through the settle window
            repeat (SETTLE) @(negedge clk);
            enable = 0;
            repeat (10) @(negedge clk);

            // Release any force so it doesn't leak into the next case
            if (case_num == 2 || case_num == 3) begin
                release dut.u_cluster_4.success;
            end

            // Reset immediately after the output/settle window so no
            // state carries over into the next case's run
            rst_n = 0;
            @(negedge clk);

            $display("=== CASE %0d complete. Final JS O=0x%02h  cluster4 inputs packed=0x%04h ===",
                      case_num, O, c4_inputs);
            $display("================= CASE %0d END =================", case_num);
        end
    endtask

    initial begin
        $display("==============================================");
        $display("  JaneStreet + embedded cluster_4 : 3-case run");
        $display("==============================================");

        run_case(1);
        run_case(2);
        run_case(3);

        $display("");
        $display("===== All cases finished =====");
        $finish;
    end

    initial begin
        #(3 * (ENABLE_CYCLES + SETTLE + 40) * CLK_PERIOD);
        $display("TIMEOUT");
        $finish;
    end

endmodule
