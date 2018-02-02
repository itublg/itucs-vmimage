#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'
PKGINSTALL='dpkg -i --skip-same-version'

PACKAGES='elinks pcmanfm gucharmap galculator geany gimp inkscape'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$CHECK /usr/bin/lowriter || $INSTALL libreoffice-writer
$CHECK /usr/bin/localc || $INSTALL libreoffice-calc
$CHECK /usr/bin/display || $INSTALL xfonts-75dpi imagemagick

if ! $CHECK /usr/bin/wxmedit; then
	cd /dev/shm
	wget https://sourceforge.net/projects/wxmedit/files/3.1/wxmedit_3.1-1_amd64-wx3-icu55.deb/download
	$PKGINSTALL download
	apt-get -f install
	cd -
fi

PY3_CHECK='python3 -c '

PACKAGES='python3'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

$PY3_CHECK 'import pip' || $INSTALL python3-pip
$PY3_CHECK 'import bottle' || $INSTALL python3-bottle
$PY3_CHECK 'import pytz' || $INSTALL python3-tz
