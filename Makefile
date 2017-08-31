CC=gcc
CFLAGS=-I.
DEPS = hello.h
OBJ = main.o hello.o
BIN = hello 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hello: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:
	rm -f *.o $(BIN)
