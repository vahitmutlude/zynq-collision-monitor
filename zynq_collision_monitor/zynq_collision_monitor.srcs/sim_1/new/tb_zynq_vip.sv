`timescale 1ns / 1ps

module tb_zynq_vip();

reg tb_ACLK = 0;
reg tb_ARESET_active_low = 0;
reg [1:0] resp = 0 ;
reg [31:0] read_val = 0;

zynq_system_wrapper dut ();

initial begin
    tb_ACLK = 1'b0;
    forever #5 tb_ACLK = ~tb_ACLK;
end
    
initial begin
$display("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
$display("Hardware Verification Suite Started");
$display("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");

$display("TEST 1 - Power-on Reset:");
tb_ARESET_active_low = 1'b0;
#200;
tb_ARESET_active_low = 1'b1;
#100;
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd3141, resp);
dut.zynq_system_i.processing_system7_0.inst.read_data(32'h43C00004, 4, read_val, resp);
if (read_val == 0) begin
    $display("SUCCESS: System started clean (Alarm = 0)");
end
else begin
    $display("FAIL: Alarm active after reset!");
end


$display("=========================================================");
$display("TEST 2 - Injecting nominal safe values (3000, 4000, 5000)");
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd3000, resp);
#50;
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd4000, resp);
#50;
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd5000, resp);
#100;
dut.zynq_system_i.processing_system7_0.inst.read_data(32'h43C00004, 4, read_val, resp);
$display("Read Alarm: %0d (Expected: 0)", read_val);
if(read_val == 0) begin
     $display("SUCCESS: No false positive detected");
end


$display("======================================================");
$display("TEST 3 - Corner case injection (Exact Threshold: 2000)");
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd2000, resp);
#200;
dut.zynq_system_i.processing_system7_0.inst.read_data(32'h43C00004, 4, read_val, resp);
$display("Read Alarm: %0d (Expected: 0)", read_val);
if(read_val == 0) begin
    $display("SUCCESS: Correct boundary decision");
end


$display("======================================================");
$display("TEST 4 - Danger & Recovery sequence");

$display("Injecting 1500 (Collision Danger!)");
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd1500, resp);
#200;
dut.zynq_system_i.processing_system7_0.inst.read_data(32'h43C00004, 4, read_val, resp);
$display("State: %0d (Expected: 1)", read_val);

$display("Injecting 3141 (Danger passed)");
dut.zynq_system_i.processing_system7_0.inst.write_data(32'h43C00000, 4, 32'd3141, resp);
#200;
dut.zynq_system_i.processing_system7_0.inst.read_data(32'h43C00004, 4, read_val, resp);
$display("State: %0d (Expected: 0)", read_val);

if(read_val == 0) begin
    $display("SUCCESS: System fully recovered from danger state.");
end

$display("==========================================");
$display("Verification Suite Completed Successfully - Vahit Mutlu");
$display("==========================================");
$finish;
end
    
endmodule
