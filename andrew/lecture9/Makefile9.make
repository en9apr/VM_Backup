# $ANDREW/lecture8/Makefile9.make

SOURCES = $(wildcard *.f90)
OBJECTS = $(subst .f90, .o, $(SOURCES))
.PHONY: help

help:
	@echo "Sources:"
	@echo $(SOURCES)
	@echo "Objects:"
	@echo $(OBJECTS)

