CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB_BASIC_MATH=basicMath.o
OBJECTS_LIB_POWER=power.o
FLAGS= -Wall -g

all: basicMath.so power.so basicMath.a power.a mains maind
mains: $(OBJECTS_MAIN) power.a basicMath.a 
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) power.a basicMath.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./power.so ./basicMath.so
basicMath.so: $(OBJECTS_LIB_BASIC_MATH)
	$(CC) -shared -o basicMath.so $(OBJECTS_LIB_BASIC_MATH)
power.so: $(OBJECTS_LIB_POWER)
	$(CC) -shared -o power.so $(OBJECTS_LIB_POWER)
basicMath.a: $(OBJECTS_LIB_BASIC_MATH)
	$(AR) -rcs basicMath.a $(OBJECTS_LIB_BASIC_MATH)
power.a: $(OBJECTS_LIB_POWER)
	$(AR) -rcs power.a $(OBJECTS_LIB_POWER)	
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind
