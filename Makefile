ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

BUILD_DIR=$(ROOT_DIR)/build
WASM_BUILD_DIR=$(ROOT_DIR)/build/wasm
BIN_PATH=$(ROOT_DIR)/build/bin
MAN_PATH=$(ROOT_DIR)/build/man

PATH:=$(PATH):$(BIN_PATH)

INSTALLS=--prefix=$(BUILD_DIR) --libdir=$(BUILD_DIR)/lib --includedir=$(BUILD_DIR)/include --bindir=$(BUILD_DIR)/bin
WASM_INSTALLS=--prefix=$(WASM_BUILD_DIR) --libdir=$(WASM_BUILD_DIR)/lib --includedir=$(WASM_BUILD_DIR)/include --bindir=$(WASM_BUILD_DIR)/bin 

LIBX_SETTINGS = \
		--prefix="$(BUILD_PATH)" \
		--disable-cli \
		--enable-static \
		--disable-opencl \
		--disable-interlaced \
		--bit-depth=8 \
		--chroma-format=420 \
		--disable-avs \
		--disable-swscale \
		--disable-lavf \
		--disable-ffms \
		--disable-gpac \
		--disable-lsmash \
		--disable-bashcompletion \
		

WASM_LIBX_SETTINGS=$(LIBX_SETTINGS) --disable-asm --host=x86-none-linux

example:
	gcc -I./build/include x264example.c $(BUILD_DIR)/lib/libx264.a -msse4 -O3 -pthread -Wall -lm -o main

wasm-example:
	emcc -I$(WASM_BUILD_DIR)/include x264example.c $(WASM_BUILD_DIR)/lib/libx264.a -O3 -s PROXY_TO_PTHREAD -s PTHREAD_POOL_SIZE=10 -s ALLOW_MEMORY_GROWTH=1 -pthread  -Wall -lm -o index.html

# nasm build
build-nasm: 
	wget https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2 && \
	tar xjvf nasm-2.14.02.tar.bz2 && \
	cd nasm-2.14.02 && \
	./configure --bindir="$(BIN_PATH)" --mandir="$(MAN_PATH)" && \
	make && \
	make install

# Wasm build for x264 without threads and simd
wasm-libx264:
	cd ./x264 && \
	emconfigure ./configure $(WASM_INSTALLS) \
		--extra-cflags="-pthread -c" \
		$(WASM_LIBX_SETTINGS) && \
	emmake make -j8 && \
	emmake make install

# Wasm build for x264 with threads and simd
wasm-libx264-simd:
	cd ./x264 && \
	emconfigure ./configure $(WASM_INSTALLS) \
		--extra-cflags="-pthread -c -msse4.1 -msimd128" \
		$(WASM_LIBX_SETTINGS) && \
	emmake make -j8 && \
	emmake make install

# Build native libx264 for testing/comparisons
libx264:
	cd x264 && \
	COMPILER_FLAGS=-msse4  && \
	./configure $(INSTALLS) $(LIBX_SETTINGS) --extra-cflags="-c -Wno-unknown-warning-option -fno-tree-vectorize -msse4" && \
	make -j8 && \
	make install
