CC=gcc
CFLAGS=-Wall -Wextra $(DEBUG)
INC=-ISHGlobal_C -ISHDatetime -ISH_CTools
HEADER_FILES=SHGlobal_C/SHConstants.h  SH_CTools/ErrorHandling.h \
 SH_CTools/SHGenAlgos.h  SHDatetime/DTConstants.h  \
 SHDatetime/SHTimeZone.h SHDatetime/SHDatetime.h \
 cl_datetime.h
SOURCES=SHGlobal_C/SHConstants.c  SH_CTools/ErrorHandling.c \
 SH_CTools/SHGenAlgos.c  SHDatetime/DTConstants.c  \
 SHDatetime/SHTimeZone.c SHDatetime/SHDatetime.c \
 cl_datetime.c
 OBJECTS=$(SOURCES:.c=.o)
 EXECUTABLE=dt_prompt
 DT_SHARED=dt
 DT_SHARED_FULL=lib${DT_SHARED}.so
 OPTIMIZE=-O3
 DEBUG?=$(OPTIMIZE)


all: $(HEADER_FILES) $(SOURCES) $(EXECUTABLE) COPY

$(EXECUTABLE): $(DT_SHARED_FULL) dt_prompt.c
	$(CC) $(INC) $(CFLAGS) -L./ -l$(DT_SHARED) dt_prompt.c -o $@

COPY: $(DT_SHARED_FULL) $(EXECUTABLE)
	@if [ ${DEBUG} = ${OPTIMIZE} ]; then\
		cp $(EXECUTABLE) $(DT_SHARED_FULL) ~/bin;\
	fi

COPY_CODE:
	-@cp *c *h *py Makefile ../copy_up

$(DT_SHARED_FULL): $(OBJECTS)
	$(CC) $(INC) $(CFLAGS) $(OBJECTS) -shared -o $(DT_SHARED_FULL)

.c.o:
	$(CC) $(CFLAGS) $(INC) -fPIC -c $< -o $@

clean:
	-@find . -type f -name '*.o' -exec rm {} + 2>/dev/null || true
	-@rm *.o dt_prompt *.so 2>/dev/null || true


