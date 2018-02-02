#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='ghc'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/share/lintian/overrides/libghc-quickcheck2-dev || $INSTALL libghc-quickcheck2-dev
