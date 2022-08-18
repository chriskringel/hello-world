CC=cc
CFLAGS=-Os

hello-world.bin: main.c
	$(CC) -o hello-world.bin $(CFLAGS) main.c

clean:
	rm -vi hello-world.bin

