#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='nasm build-essential strace ltrace libfuse-dev'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
