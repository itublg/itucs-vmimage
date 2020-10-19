#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='elinks pcmanfm gucharmap galculator geany gimp inkscape libreoffice-writer libreoffice-calc xfonts-75dpi imagemagick'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done

while [[ $(dpkg --dry-run -r madedit-mod 2>&1 | grep -c "warning") == "1" ]]; do ( wget -q https://www.sandikkaya.name.tr/uf/madedit-mod_0.4.17-1_amd64_ubuntu-18.04.deb.anyFileType -O /dev/shm/madedit-mod.deb && $INSTALL /dev/shm/madedit-mod.deb && rm -f /dev/shm/madedit-mod.deb ); done

#PACKAGES='python3 python3-pip python3-bottle python3-tz'

#  for p in $PACKAGES; do
#    $CHECK $p || $INSTALL $p
#  done
