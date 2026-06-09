
.PHONY: all
all: map

.PHONY: map
map: rom_cross_map.ods
	libreoffice --convert-to csv $<
