#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'
REMOVE='apt-get purge -y'
CLEAN='apt-get autoremove -y'

$CHECK /usr/bin/lxsession || $INSTALL lubuntu-desktop
$CHECK /usr/bin/abiword && $REMOVE abiword* && $CLEAN || true
$CHECK /usr/bin/gnumeric && $REMOVE gnumeric* && $CLEAN || true
