# $ANDREW/lecture8/Makefile7.make

FC = gfortran
FFLAGS = -O3
LFLAGS =
OBJECTS = main.o sub1.o sub2.o
.PHONY: clean help

output.txt: main.exe
	./main.exe > output.txt

main.exe: $(OBJECTS)
	$(FC) $(LFLAGS) $(OBJECTS) -o main.exe

%.o: %.f90
	$(FC) $(FFLAGS) -c $<

clean:
	rm -f $(OBJECTS) main.exe

help:
	@echo "Valid targets:"
	@echo " main.exe"
	@echo " main.o"
	@echo " sub1.o"
	@echo " sub2.o"
	@echo " clean: removes .o and .exe files"
