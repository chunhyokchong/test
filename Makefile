CC=gcc
CFLAGS=-g -Wall
TARGET=main.out
OBJS=a.o b.o main.o

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS)

a.o : a.c
	$(CC) -c -o a.o a.c

b.o : b.c
	$(CC) -c -o b.o b.c

main.o : main.c
	$(CC) -c -o main.o main.c

	g++ main.o foo.o bar.o -o main

clean:
	rm $(OBJECT) $(TARGET)