# Makefile for CoSP2 serial and parallel versions
#

SHELL = /bin/bash

# double precision (ON/OFF)
DOUBLE_PRECISION = ON
# MPI for parallel (ON/OFF)
DO_MPI = ON
#DO_MPI = OFF

# Contiguous arrays
CONTIG_MATRIX = ON
#CONTIG_MATRIX = OFF

# Column position for diagonal elements in row
DIAGPOS = POS1
#DIAGPOS = POSJ

#CC = gcc
CC = mpicc
CFLAGS = -std=c99 -fopenmp -D$(DIAGPOS)
OPTFLAGS = -O5
INCLUDES =
C_LIB = -lm

MPI_LIB =
MPI_INCLUDE =

OTHER_LIB =
OTHER_INCLUDE =

# clear all suffixes
.SUFFIXES:
# list only those that we use
.SUFFIXES: .c .o

.PHONY: DEFAULT clean distclean depend

BIN_DIR=../bin

# Add contiguous arrays
ifeq ($(CONTIG_MATRIX), ON)
CFLAGS += -DCONTIG_MATRIX
endif

# Check for double precision
ifeq ($(DOUBLE_PRECISION), ON)
CFLAGS += -DDOUBLE
else
CFLAGS += -DSINGLE
endif

# Set executable name and add includes & libraries for MPI if needed.
CoSP2_VARIANT = CoSP2-serial
ifeq ($(DO_MPI), ON)
CoSP2_VARIANT = CoSP2-parallel
INCLUDES += ${MPI_INCLUDE}
CFLAGS += -DDO_MPI
LDFLAGS += ${MPI_LIB}
endif
CoSP2_EXE = ${BIN_DIR}/${CoSP2_VARIANT}

LDFLAGS += ${C_LIB} ${OTHER_LIB}
CFLAGS  += ${OPTFLAGS} ${INCLUDES} ${OTHER_INCLUDE}

SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)

DEFAULT: ${CoSP2_EXE}

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

${CoSP2_EXE}: ${BIN_DIR} ${OBJECTS}
	${CC} ${CFLAGS} -o ${CoSP2_EXE} ${OBJECTS} ${LDFLAGS}

${BIN_DIR}:
	@if [ ! -d ${BIN_DIR} ]; then mkdir -p ${BIN_DIR} ; fi

clean:
	rm -f *.o .depend

distclean:
	rm -f ${CoSP2_EXE} .depend.bak
	rm -rf html latex

.depend: ${SOURCES}
	@touch .depend
	@$(MAKE) --no-print-directory depend

depend:
	@echo "Rebuilding dependencies..."
	@makedepend -f .depend -Y. --${CFLAGS}-- ${SOURCES} 2> /dev/null

-include .depend
