#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='vim patch git firefox'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/bin/owncloud || $INSTALL owncloud-client
