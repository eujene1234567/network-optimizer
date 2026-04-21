# Makefile for building C project with optional libsystemd and libcurl support

CC=gcc
CFLAGS=-Wall -g
LDFLAGS=-lsystemd -lcurl

SRC=src/main.c src/config.c src/network.c src/optimizer.c src/security.c src/profiles.c src/utils.c

all: network-optimizer

network-optimizer: $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f network-optimizer