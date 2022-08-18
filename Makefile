# Makefile
#
# BSD Zero Clause License (SPDX: 0BSD)
#
# Copyright (c) 2022 Christian Niemeyer <cniemeyer@niemypicturesltd.com>
#
# Permission to use, copy, modify, and/or distribute this software for any purpose
# with or without fee is hereby granted.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
# FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
# OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
# TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF
# THIS SOFTWARE.

CC=cc
CFLAGS=-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0 -O0 -g2 -Wl,-z,norelro -Wl,--hash-style=both -Wl,-no-pie -fno-pie -no-pie
LDFLAGS=-Wl,-z,norelro -Wl,--hash-style=both

hello-world.bin: main.c
	$(CC) -o hello-world.bin $(CFLAGS) main.c

clean:
	rm -vi hello-world.bin

