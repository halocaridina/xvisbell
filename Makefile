xvisbell: xvisbell.cpp
	c++ -std=c++14 -Wall -Wextra -Werror -o xvisbell xvisbell.cpp -lX11
	
PREFIX ?= /usr

BINDIR = ${PREFIX}/bin

install: install-bin

install-bin: xvisbell
	install -d ${BINDIR}
	install xvisbell ${BINDIR}
