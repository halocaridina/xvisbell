PREFIX ?= /usr
BINDIR = ${PREFIX}/bin

all: xvisbell

xvisbell: xvisbell.cpp
	c++ -std=c++14 -Wall -Wextra -Werror -o xvisbell xvisbell.cpp -lX11

install: install-bin

install-bin: xvisbell
	install -d ${BINDIR}
	install xvisbell ${BINDIR}
	
clean:
	rm -f xvisbell
