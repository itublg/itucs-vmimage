#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'
REMOVE='apt-get purge -y'
CLEAN='apt-get autoremove -y'
GREP='grep -q'

$CHECK /usr/bin/lxsession || $INSTALL lubuntu-desktop

$CHECK /usr/bin/abiword && $REMOVE abiword* && $CLEAN || true
$CHECK /usr/bin/gnumeric && $REMOVE gnumeric* && $CLEAN || true

DM_CONF_DIR=/etc/lightdm
if ! $GREP -r "autologin-user=" $DM_CONF_DIR; then
    DM_CONF_FILE=$DM_CONF_DIR/lightdm.conf.d/12-autologin.conf
    echo "[SeatDefaults]" > $DM_CONF_FILE
    echo "autologin-user=vagrant" >> $DM_CONF_FILE
fi
