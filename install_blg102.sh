#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='g++ cppcheck astyle clang-format make gdb valgrind'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/share/man/man3/printf.3.gz || $INSTALL manpages-dev

PACKAGES='libyaml-dev fakechroot python3 python3-dev python3-setuptools python3-pip'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

pip3 install -U pip
pip3 install -U calico
