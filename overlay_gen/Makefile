PROJECT_NAME	?= overlay_8x16
HANDOFF_PATH	?= ../vivado_script_dev/bitstream_testing/handoff/${PROJECT_NAME}_handoff/${PROJECT_NAME}.xsa
all:
	python3 gen_pl_overlay.py -c config.json -f ${HANDOFF_PATH}
# ./gen_pl_overlay.sh ${HANDOFF_PATH} addone_8x16

clean:
	rm -rf work
