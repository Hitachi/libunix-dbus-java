JAVA_HOME=/usr/lib/jvm/java-current

compile: libunix-java.so

help:
	@echo 'Makefile for dbus-java-libunix                                               '
	@echo '                                                                        '
	@echo 'Usage:                                                                  '
	@echo '   make compile                 compile native C code               '
	@echo '   make clean                       remove generated shared library     '
	@echo '                                                                        '

unix-java.h:
	javah -o unix-java.h -cp src/ cx.ath.matthew.unix.UnixServerSocket cx.ath.matthew.unix.UnixSocket cx.ath.matthew.unix.USInputStream cx.ath.matthew.unix.USOutputStream

libunix-java.so:
	gcc -O3 -fPIC -shared -I$(JAVA_HOME)/include/ \
	-I$(JAVA_HOME)/include/linux/ \
	unix-java.c \
	-o libunix-java.so

dist:
	tar -cvf dbus-java-libunix.tar.gz *.c *.h

clean:
	[ ! -f libunix-java.so ] || \
	rm libunix-java.so *.tar.gz

.PHONY: clean compile help
