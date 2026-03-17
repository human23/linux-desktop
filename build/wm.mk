# This file is part of "mira"
# Under the MIT License
# Copyright (c) 2022 Antonin Hérault

# Build file for the wm

include build/config.mk

CC_FLAGS = $(CC_DEBUG_FLAGS) -I include/wm/ -I include/
LDFLAGS = -lX11            # link X11

OUT_DIR = build/out/wm

# Find all C source files
SRC = $(shell find src/wm -name '*.c')
OBJ = $(patsubst src/wm/%.c,$(OUT_DIR)/%.o,$(SRC)) $(OUT_DIR)/x11.o

BIN = build/out/mirawm

# Create output folder
_wm_init : 
	mkdir -p $(OUT_DIR)

# Build target
wm_build : _wm_init $(BIN)

# Link
$(BIN) : $(OBJ)
	$(CC) $(CC_FLAGS) -o $@ $^ $(LDFLAGS)

# Compile WM sources
$(OUT_DIR)/%.o : src/wm/%.c
	mkdir -p $(dir $@)
	$(CC) $(CC_FLAGS) -c -o $@ $<

# Compile x11.c
$(OUT_DIR)/x11.o : src/x11.c
	mkdir -p $(dir $@)
	$(CC) $(CC_FLAGS) -c -o $@ $<