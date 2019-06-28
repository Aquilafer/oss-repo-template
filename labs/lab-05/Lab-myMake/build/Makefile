all: static_block dynamic_block

# executables
static_block: program.o libstatic.a
	gcc ../bin/program.o ../bin/libs/libstatic.a -o static_block

dynamic_block: program.o libshared.so
	gcc ../bin/program.o ../bin/libs/libshared.so -o dynamic_block

# libraries
libshared.so: shared_block.o
	gcc -shared -o ../bin/libs/libshared.so ../bin/shared_block.o

libstatic.a: block.o
	ar qc ../bin/libs/libstatic.a ../bin/block.o

# objects
program.o: program.c block.h
	gcc -c ../program.c -o ../bin/program.o

shared_block.o: block.c block.h
	gcc -fPIC -c ../source/block.c -o ../bin/shared_block.o

block.o: block.c block.h
	gcc -c ../source/block.c -o ../bin/block.o

# file redirections
program.c: ../program.c

block.c: ../source/block.c

block.h: ../headers/block.h
