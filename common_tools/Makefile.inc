

RM = /bin/rm
IVERILOG = iverilog
MODELSIM = vsim
LINTER = verilator
YOSYS = yosys
XCELIUM = xrun

sim:
	$(RM) -rf a.out dump.vcd
	$(IVERILOG) -f $(MODULE)_sim.f
	./a.out | tee $(MODULE)_iverilog.log

xrun:
	$(RM) -rf xrun.history xrun.log  xcelium.d/ dump.vcd
	$(XCELIUM) -f $(MODULE)_sim.f +access+rwc +define+NCVERILOG

modelsim:
	$(RM) -rf vsim.wlf work/
	$(MODELSIM) -c -do $(MODULE)_modelsim.f

lint:
	$(LINTER) --lint-only  -I../ -I../../common_tools  $(MODULE).v  $(LINT_FILES)


synthesis:
	$(YOSYS) -Q -q -s $(MODULE)_yosys.conf -L $(MODULE)_yosys.log

clean:
	@$(RM) -rf *.vcd *~  a.out vsim.wlf work/ transcript auto *.tex _minted-$(MODULE)/ xrun.history xrun.log  xcelium.d/ $(MODULE).tex $(MODULE).pygmented _minted-$(MODULE)/ auto/ $(MODULE)_yosys.log $(MODULE)_iverilog.log $(MODULE)_xilinx_synth.v *.dot *.pid dump.shm/
