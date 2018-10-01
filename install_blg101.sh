#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='elinks pcmanfm gucharmap galculator geany gimp inkscape libreoffice-writer libreoffice-calc xfonts-75dpi imagemagick'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done

$CHECK madedit-mod || ( wget -q https://sourceforge.net/projects/madedit-mod/files/0.4.14/madedit-mod_0.4.14-1_amd64_Ubuntu18.04.deb/download -O /dev/shm/madedit-mod.deb && $INSTALL /dev/shm/madedit-mod.deb && rm -f /dev/shm/madedit-mod.deb )

PACKAGES='python3 python3-pip python3-bottle python3-tz'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
