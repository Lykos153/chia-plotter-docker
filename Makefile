export CHIA_VERSION=1.1.5

.PHONY: all
all: plotter harvester farmer full-node

.PHONY: base
base:
	make -C base-image image

.PHONY: plotter
plotter: base
	make -C plotter image

.PHONY: harvester
harvester: base
	make -C harvester image

.PHONY: farmer
farmer: base
	make -C farmer image

.PHONY: full-node
full-node: base
	make -C full-node image

push:
	make -C base-image push
	make -C plotter push
	make -C harvester push
	make -C farmer push
	make -C full-node push
