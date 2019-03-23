//                              -*- Mode: Verilog -*-
// Filename        : dump.v<common_tools>
// Description     : dump to waveform viewer
// Author          : Philip Tracton
// Created On      : Sat Mar 23 14:26:58 2019
// Last Modified By: Philip Tracton
// Last Modified On: Sat Mar 23 14:26:58 2019
// Update Count    : 0
// Status          : Unknown, Use with caution!

module dump (/*AUTOARG*/ ) ;
   //
   // Store results in waveform viewer format
   //
   initial
     begin
`ifdef NCVERILOG
	    $shm_open("dump.shm");
	    $shm_probe(tb_fifo, "MAC");
`else
	    $dumpfile("dump.vcd");
	    $dumpvars(0, `TB);
`endif
     end // initial begin

endmodule // dump
