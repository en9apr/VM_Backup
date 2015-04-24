# $ANDREW/lecture8/Makefile8.make

FC = gfortran
FFLAGS = -O3
LFLAGS =
SOURCES = $(wildcard *.f90)
OBJECTS = $(subst .f90,.o,$(SOURCES))
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
	@echo " main.exe" $(OBJECTS)
	@echo " clean: removes .o and .exe files"
