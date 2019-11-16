CC=gcc
AR=ar
OBJECTS_MAIN=main.o
FLAGS=   -g -Wall 

all:   mains maind mymaths mymathd

mains: main.o libmyMath.a
	$(CC) $(FLAGS) -o mains main.o -L. libmyMath.a

maind: main.o libmyMath.so
	$(CC) $(FLAGS) -o maind main.o -L. ./libmyMath.so

mymaths: libmyMath.a
libmyMath.a :basicMath.o power.o myMath.h
	$(AR) -rcs libmyMath.a basicMath.o power.o

mymathd: libmyMath.so
libmyMath.so: basicMath.o power.o myMath.h
	$(CC) -shared -o libmyMath.so basicMath.o power.o

main.o: main.c myMath.h
	$(CC) $(FLAGS) -c main.c

power.o: power.c myMath.h
	$(CC) $(FLAGS) -fPIC -c power.c

basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c 

clean:
	rm -f *.o *.a *.so mains maind
