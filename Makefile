CC = gcc
CFLAGS = -g
TARGETS = main
OBJECTS = main.c foods.o
.SUFFIXES = .c .o

main_debug : $(TARGETS)
main_debug : DEBUGOPTION = -DDEBUG

$(TARGETS) : $(OBJECTS)
	$(CC) $(CFLAGS) $(DEBUGOPTION) -o $(TARGETS) $(OBJECTS)

.c.o :
	$(CC) $(CFLAGS) $(DEBUGOPTION) -c $<

clean :
	rm *.o $(TARGETS)
