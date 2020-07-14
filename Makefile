







BUILD_PATH = ./bin
build: libx264
BUILD_PATH = $$(pwd)/../bin
MAN_PATH = $$(pwd)/../man
PATH := $(PATH):$(PWD)/bin


example:
	gcc -I./bin/include x264example.c ./bin/lib/libx264.a -msse4 -pg -rdynamic -Wall -lm -o main

test:
	gcc -I./bin/include test.c ./bin/lib/libx264.a -msse4 -Wall -lm -rdynamic -o main 

nasm: 
	wget https://www.nasm.us/pub/nasm/releasebuilds/2.14.02/nasm-2.14.02.tar.bz2 && \
	tar xjvf nasm-2.14.02.tar.bz2 && \
	cd nasm-2.14.02 && \
	./configure --bindir="$(BUILD_PATH)" --mandir="$(MAN_PATH)" && \
	make && \
	make install

libx264:
	cd ./x264 && \
	./configure \
		--prefix="$(BUILD_PATH)" \
		--disable-gpl \
		--extra-cflags="-c -Wno-unknown-warning-option" \
		--extra-ldflags="-rdynamic" \
		--disable-cli \
		--enable-gprof \
		--disable-thread \
		--enable-static \
		--disable-opencl \
		--disable-interlaced \
		--bit-depth=8 \
		--chroma-format=420 \
		--disable-asm \
		--disable-avs \
		--disable-swscale \
		--disable-lavf \
		--disable-ffms \
		--disable-gpac \
		--disable-lsmash \
		&& \
	make -j8 && \
	make install
