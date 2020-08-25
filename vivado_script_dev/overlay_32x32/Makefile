PROJECT_NAME	?= overlay_32x32

all:
	mkdir -p logs
	vivado -mode gui -source ${PROJECT_NAME}.tcl -journal logs/${PROJECT_NAME}.jou -log logs/${PROJECT_NAME}.log

clean:
	rm -rf ${PROJECT_NAME} logs
