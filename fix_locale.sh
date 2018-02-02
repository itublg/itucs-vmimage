#!/bin/bash

GREP='grep -q'
LOCALE_FILE='/etc/default/locale'

if ! $GREP 'LC_ALL=' $LOCALE_FILE; then
	locale-gen --purge en_US.UTF-8
	echo LC_ALL=en_US.UTF-8 >> $LOCALE_FILE
fi

$GREP 'LANG=' $LOCALE_FILE || echo LANG=en_US.UTF-8 >> $LOCALE_FILE
$GREP 'LANGUAGE=' $LOCALE_FILE || echo LANGUAGE=en_US.UTF-8 >> $LOCALE_FILE
