CFLAGS+= -fprofile-arcs -ftest-coverage

CC=gcc

target=main

.PHONE: all
all: $(target)

$(target): test.o
	${CC} ${CFLAGS} $^ -o $@

%.o : %.c
	$(CC) -g -c $^ -o $@  $(CFLAGS)

.PHONY: get
get : 
	gcov *.c

.PHONY: html
html :
	lcov -c -d . -o $(target).info
	genhtml -o result $(target).info 

.PHONY: clean

clean :
	rm -rf *.o *.info
	rm -rf $(target)
	rm -rf  *.gcov *.gcda *.gcno


