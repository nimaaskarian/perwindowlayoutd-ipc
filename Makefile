CC := g++
FLAGS := $(shell pkg-config --cflags x11) $(shell pkg-config --libs x11)
SRC := perwindowlayoutd.cpp
OBJ := ${SRC:.cpp=.o}
PREFIX := /usr/local

all: perwindowlayoutd

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f perwindowlayoutd ${DESTDIR}${PREFIX}/bin

perwindowlayoutd: ${OBJ}
	${CC} ${OBJ} -o $@ ${FLAGS}

.cpp.o:
	${CC} -c ${FLAGS} $<

clean:
	rm -f perwindowlayoutd
	rm -f *.o
