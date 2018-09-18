#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='elinks pcmanfm gucharmap galculator geany gimp inkscape libreoffice-writer libreoffice-calc xfonts-75dpi imagemagick'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done

$CHECK madedit || ( wget -q https://sourceforge.net/projects/madedit/files/MadEdit/MadEdit-0.2.9/madedit_0.2.9-1_amd64.deb/download -O /dev/shm/madedit.deb && $INSTALL /dev/shm/madedit.deb && rm -f /dev/shm/madedit.deb )

PACKAGES='python3 python3-pip python3-bottle python3-tz'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
