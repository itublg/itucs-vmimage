#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='vim patch git firefox owncloud-client'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
