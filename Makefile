BUILD_PATH = ./bin
BUILD_PATH = $$(pwd)/../bin
MAN_PATH = $$(pwd)/../man
PATH := $(PATH):$(PWD)/bin


build-example:
	cd x264 && make -j8 && make install && cd .. && \
	gcc -I./bin/include x264example.c ./bin/lib/libx264.a -msse4 -O3 -fno-tree-vectorize -lpthread -Wall -lm -o main

example:
	gcc -I./bin/include x264example.c ./bin/lib/libx264.a -O3 -fno-tree-vectorize -lpthread -msse4 -Wall -lm -o main

test:
	nasm -f elf64 -DARCH_X86_64=1 -DSTACK_ALIGNMENT=64 hadamard_a.asm -o had.o && \
	gcc smol_satd.c had.o -msse4 -O3 -no-pie -fno-tree-vectorize -lm -o main

wasm-test:
	emcc test.c -msse4.1 -msimd128 -Wall -lm -o main.html

wasm-example:
	emcc -I./bin/include x264example.c ./bin/lib/libx264.a -O3  -s ALLOW_MEMORY_GROWTH=1 -lpthread  -Wall -lm -o main.html

nasm: 
	wget https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2 && \
	tar xjvf nasm-2.14.02.tar.bz2 && \
	cd nasm-2.14.02 && \
	./configure --bindir="$(BUILD_PATH)" --mandir="$(MAN_PATH)" && \
	make && \
	make install

LIBX_SETTINGS = \
		--prefix="$(BUILD_PATH)" \
		--disable-gpl \
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
		--disable-asm \

wasm-libx264:
	cd ./x264 && \
	emconfigure ./configure \
		--extra-cflags="-c -Wno-unknown-warning-option" \
		--host=x86-none-linux \
		$(LIBX_SETTINGS) && \
	emmake make -j8 && \
	emmake make install

wasm-libx264-simd:
	cd ./x264 && \
	emconfigure ./configure \
		--extra-cflags="-s USE_PTHREADS=1 -c -Wno-unknown-warning-option -msse4.1 -msimd128" \
		--host=x86-none-linux \
		$(LIBX_SETTINGS) && \
	emmake make -j8 && \
	emmake make install


libx264:
	cd ./x264 && \
	COMPILER_FLAGS=-msse4 && \
	./configure \
		$(LIBX_SETTINGS) \
		--extra-cflags="-c -Wno-unknown-warning-option -fno-tree-vectorize -msse4" && \
	make -j8 && \
	make install
