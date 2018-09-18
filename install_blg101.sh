#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='elinks pcmanfm gucharmap galculator geany gimp inkscape'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/bin/lowriter || $INSTALL libreoffice-writer
$CHECK /usr/bin/localc || $INSTALL libreoffice-calc
$CHECK /usr/bin/display || $INSTALL xfonts-75dpi imagemagick

if ! $CHECK /usr/bin/madedit; then
	wget -q https://sourceforge.net/projects/madedit/files/MadEdit/MadEdit-0.2.9/madedit_0.2.9-1_amd64.deb/download -O /dev/shm/madedit.deb && $INSTALL /dev/shm/madedit.deb || rm -f /dev/shm/madedit.deb
fi

PY3_CHECK='python3 -c '

PACKAGES='python3'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$PY3_CHECK 'import pip' || $INSTALL python3-pip
$PY3_CHECK 'import bottle' || $INSTALL python3-bottle
$PY3_CHECK 'import pytz' || $INSTALL python3-tz
