compile:
	vlib work;
	vlog -sv \
	+acc \
	+cover \
	+fcover \
	alu.sv \
	alu_tb.sv

simulate:
	vsim -vopt work.alu_tb \
	-voptargs=+acc=npr \
	-assertdebug \
	-l alu.log \
	-sva \
	-coverage \
	-c -do "log -r /*; add wave -r /*; coverage save -onexit -assert -directive -cvg -codeAll alu_coverage.ucdb; run -all; exit" \
	-wlf alu_waveform.wlf

all:
	make compile
	make simulate
