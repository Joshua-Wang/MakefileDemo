
all:main

main:main.o add_int.o add_float.o
	g++ -o main main.o add_int.o add_float.o

main.o:main.cpp add.h
	g++ -c main.cpp -o main.o	

add_int.o:add_int.cpp add.h
	g++ -c add_int.cpp -o add_int.o	

add_float.o:add_float.cpp add.h
	g++ -c add_float.cpp -o add_float.o	

clean:
	rm -f *.o main
