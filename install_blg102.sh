#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='g++ cppcheck astyle make gdb valgrind'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/share/man/man3/printf.3.gz || $INSTALL manpages-dev
