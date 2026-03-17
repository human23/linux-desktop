include build/wm.mk

.PHONY: _init build install test clean

_init:
	mkdir -p $(OUT_DIR)

build: _init wm_build

install: build
	sudo ./install.sh

test: build
	Xephyr -ac -screen 1280x720 -br -reset :100 &
	sleep 1
	DISPLAY=:100 $(OUT_DIR)/$(WM)

clean: clean_wm