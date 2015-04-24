# $ANDREW/lecture10/Makefile

OBJECTS = circle_mod.o \
		  main.o \
          initialize.o

MODULES = circle_mod.mod

.PHONY: clean

output.txt: main.exe
	./main.exe > output.txt

main.exe: $(MODULES) $(OBJECTS)
	gfortran $(OBJECTS) -o main.exe

%.o: %.f90
	gfortran -c $<

%.mod: %.f90
	gfortran -c $<

clean:
	rm -f $(MODULES) $(OBJECTS) main.exe


