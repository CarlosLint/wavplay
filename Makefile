CC=gcc
CFLAGS=-O2
ALSAFLAGS=`pkg-config --libs --cflags alsa`

.SUFFIXES: .c
.c.o:
	$(CC) $(CFLAGS) -c $<


SRC = wavplay.c
OBJ = wavplay.o
BIN = wavplay

all:	wavplay

wavplay:
	$(CC) $(CFLAGS) -o $(BIN) $(SRC) $(ALSAFLAGS)

clean:
	rm -f $(OBJ) $(BIN)
