#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='nasm strace ltrace'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/share/build-essential/list || $INSTALL build-essential
$CHECK /usr/include/fuse.h || $INSTALL libfuse-dev
