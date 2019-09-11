myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -cmyfunc.cpp
clean:
	rm -f *.o myexe.exe
