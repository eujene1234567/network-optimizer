# Makefile for network optimizer

CC=gcc
CFLAGS=-I.

all: main

main: src/main.o src/config.o src/network.o src/optimizer.o src/security.o src/profiles.o src/utils.o
	$(CC) -o network-optimizer src/main.o src/config.o src/network.o src/optimizer.o src/security.o src/profiles.o src/utils.o

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f src/*.o network-optimizer
