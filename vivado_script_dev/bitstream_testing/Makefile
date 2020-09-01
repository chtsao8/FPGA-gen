PROJECT_NAME	?= overlay_8x16

all:
# 	mkdir -p logs
# 	mkdir -p handoff
	python3 bitstream_generator.py -c ../../config.json -o output.tcl -m batch

clean:
	rm -rf ${PROJECT_NAME} logs handoff output.tcl vivado*
