CLEANFILES=*.a *.list *.o common.c
PROC=proc
GCC=gcc

BINDIR=$(HOME)/bin

ORAIFLAG=-l$(ORACLE_HOME)/rdbms/public \
         -l$(ORACLE_HOME)/rdbms/demo \
         -l$(ORACLE_HOME)/precomp/public \
         -l$(ORACLE_HOME)/plsql/public

ORALFLAG=-L$(ORACLE_HOME)/lib \
         -L$(ORACLE_HOME)/precomp/lib \
         -L$(ORACLE_HOME)/rdbms/lib \
         -L$(ORACLE_HOME)/sqlplus/lib \
         -L$(ORACLE_HOME)/network/lib \
         -L$(ORACLE_HOME)/plsql/lib

IFLAG=-l$(HOME)/include $(ORAIFLAG)

LFLAG=-L$(HOME)/lib $(ORALFLAG) -lclntsh

PROCFLAGS=char_map=string

.SUFFIXES:.pc .c .o
.pc.c:
	$(PROC) $(PROCFLAGS) iname=$*
	rm *.lis
.pc.o:
	$(PROC) $(PROCFLAGS) iname=$*
	rm *.lis
	$(GCC) $(IFLAG) -c $*.c
.c.o:
	$(GCC) $(IFLAG) -c $*.c

all:test

test:test.o common.o
	$(GCC) $? -o $@ $(LFLAG)
	@echo "##### $@ make success #####"

clean:
	rm -f $(CLEANFILES)
