#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='xorg xfce4 xfce4-goodies vim patch git firefox-esr owncloud-client'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
