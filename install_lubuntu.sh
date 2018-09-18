#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'
REMOVE='apt-get purge --auto-remove -y'
GREP='grep -q'

$CHECK lubuntu-desktop || $INSTALL lubuntu-desktop

$CHECK abiword && $REMOVE abiword* || true
$CHECK gnumeric && $REMOVE gnumeric* || true

DM_CONF_DIR=/etc/lightdm
if ! $GREP -r "autologin-user=" $DM_CONF_DIR; then
    DM_CONF_FILE=$DM_CONF_DIR/lightdm.conf.d/12-autologin.conf
    echo "[SeatDefaults]" > $DM_CONF_FILE
    echo "autologin-user=vagrant" >> $DM_CONF_FILE
fi
