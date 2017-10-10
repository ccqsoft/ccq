include ../makebss/Make.defines
MAKEFILE = ./Makefile

TARGET=../bin/getauditdate

all: $(TARGET)
CLEANFILES=*.a *.list *.o auditdate.c core


OBJ_MAIN=getauditdate.o auditdate.o 


$(TARGET): $(OBJ_MAIN)
	$(MAKE) -f $(MAKEFILE) OBJS="$(OBJ_MAIN)" EXE=$@ build_libpd

clean:
	$(RM) -f $(CLEANFILES) $(TARGET)



