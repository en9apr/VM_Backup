# $ANDREW/lecture8/Makefile5.make

FC = gfortran
FFLAGS = -O3
LFLAGS =
OBJECTS = main.o sub1.o sub2.o
.PHONY: clean

output.txt: main.exe
	./main.exe > output.txt

main.exe: $(OBJECTS)
	$(FC) $(LFLAGS) $(OBJECTS) -o main.exe

%.o: %.f90
	$(FC) $(FFLAGS) -c $<

clean:
	rm -f $(OBJECTS) main.exe
