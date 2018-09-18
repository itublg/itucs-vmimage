#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='g++ manpages-dev cppcheck clang-format make gdb valgrind nemiver'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done

PACKAGES='libyaml-dev fakechroot python3 python3-dev python3-setuptools python3-pip'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done

python3 -m pip install -U calico
