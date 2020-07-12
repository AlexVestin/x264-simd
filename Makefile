







BUILD_PATH = ./bin
build: libx264

example:
	gcc -I./x264/bin/include x264example.c ./x264/bin/lib/libx264.a -g -Wall -no-pie -p -pg -lm -o main

test:
	gcc -I./x264/bin/include test.c ./x264/bin/lib/libx264.a -Wall -pg -lm -o main

libx264:
	cd ./x264 && \
	./configure \
		--prefix="$(BUILD_PATH)" \
		--extra-cflags="-c -Wno-unknown-warning-option -no-pie" \
		--enable-gprof \
		--extra-ldflags="-lpthread" \
		--host=x86-none-linux \
		--disable-cli \
		--disable-thread \
		--enable-static \
		--disable-shared \
		--disable-opencl \
		--disable-interlaced \
		--bit-depth=8 \
		--chroma-format=420 \
		--disable-asm \
		\
		--disable-avs \
		--disable-swscale \
		--disable-lavf \
		--disable-ffms \
		--disable-gpac \
		--disable-lsmash \
		&& \
	make -j8 && \
	make install
