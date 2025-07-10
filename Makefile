# Makefile
all: sum-test

sum-test: main.o sum.o
	g++ -o sum-test main.o sum.o

main.o: sum.h main.cc
	g++ -c -o main.o main.cc

sum.o: sum.h sum.cc
	 g++ -c -o sum.o sum.cc

clean:
	 rm -f sum-test
	 rm -f *.o
