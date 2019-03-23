//                              -*- Mode: Verilog -*-
// Filename        : tb_axis_s.v
// Description     : Testbench for AXI Streaming Master/Slave
// Author          : Philip Tracton
// Created On      : Sat Mar 23 12:42:27 2019
// Last Modified By: Philip Tracton
// Last Modified On: Sat Mar 23 12:42:27 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!

`include "timescale.v"

`include "setup.v"
`include "test_axi_include.v"


module tb_axis_s (/*AUTOARG*/ ) ;


   reg aclk;
   initial begin
      aclk = 0;
      forever begin
         #2 aclk = ~aclk;
      end
   end

   reg areset_n;
   initial begin
      areset_n = 0;
      repeat(5) @(posedge aclk);
      #1 areset_n = 1;
   end


   reg send;
   wire finish;

   wire tready;
   wire tvalid, tlast;
   wire [31:0] tdata;
   reg [31:0]  data;
   reg         slave_ready;
   wire [31:0] slave_data;


   axis_m inst_axis_m (.areset_n(areset_n),
                       .aclk(aclk),
					   .data(data),
					   .send(send),
					   .tready(tready),
                       .tvalid(tvalid),
                       .tlast(tlast),
                       .tdata(tdata),
					   .finish (finish)
					   );

   axis_s inst_axis_s ( .areset_n(areset_n),
                        .aclk(aclk),
					    .data(slave_data),
					    .ready (slave_ready),
					    .tready (tready),
					    .tvalid(tvalid),
                        .tlast(tlast),
                        .tdata(tdata),
					    .finish(slave_finish)
					    );

   //
   // TASK: stream_data
   // This task will transfer 1 word into the AXI Streaming Master
   //
   task stream_data;
      input [31:0] sdata;
      begin

         // This starts asych
         send = 1;
         data = sdata;
         slave_ready = 1;

         // synch clock
         @(posedge aclk);
         //send = 1;
         slave_ready = 0;
         // hold clock
         @(posedge aclk);
         send = 0;
         slave_ready = 1;
         data = $random;

         if (slave_finish ==0) begin
            @(posedge slave_finish);
         end

         `TEST_COMPARE("STREAM DATA", sdata, slave_data);
         @(negedge slave_finish);

      end
   endtask

   //
   // Test Case:
   //
   initial begin
      send = 0;
      slave_ready = 1;
      data = 0;

      // Wait for reset to release
      @(posedge areset_n);
      repeat(5) @(posedge aclk);
      #1 stream_data(32'haaaa_bbbb);
      #2 stream_data(32'hcccc_dddd);
      repeat(2) @(posedge aclk);
      `TEST_COMPLETE();
   end

   //
   // test_tasks is our generic set of tools for handling test cases
   //
   test_tasks test_tasks();

   //
   // dump to wveform viewer
   //
`ifndef MODELSIM_GUI
   dump dump();
`endif

endmodule // tb_axis_m
