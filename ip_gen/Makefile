CLOCKWORK_SRC_DIR ?= ../../clockwork

all:
	python3 gen_ip.py -c ../config.json -o generator.tcl -i ${CLOCKWORK_SRC_DIR}

clean:
	rm -rf generator.tcl overlay_8x16 vivado_hls.log