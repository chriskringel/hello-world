CC=cc
CFLAGS=-U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=0 -O0 -g2 -Wl,-z,norelro -Wl,--hash-style=both -Wl,-no-pie -fno-pie -no-pie
LDFLAGS=-Wl,-z,norelro -Wl,--hash-style=both

hello-world.bin: main.c
	$(CC) -o hello-world.bin $(CFLAGS) main.c

clean:
	rm -vi hello-world.bin

