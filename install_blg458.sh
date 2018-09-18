#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='ghc libghc-quickcheck2-dev'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
