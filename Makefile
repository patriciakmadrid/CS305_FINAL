CC=gcc

all: main.out

main.out: main.o get_student_id.o
	$(CC) -o main main.o get_student_id.o
	./main | tee main.out

main.o: main.c
	$(CC) -c main.c

get_student_id.o: get_student_id.c get_student_id.h
	$(CC) -c get_student_id.c get_student_id.h

clean:
	rm -f *.o main main.out
