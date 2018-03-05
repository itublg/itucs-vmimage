#!/bin/bash

CHECK='test -f'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='g++ libyaml-dev fakechroot python3 python3-dev python3-setuptools python3-pip'

for p in $PACKAGES; do
	$CHECK /usr/bin/$p || $INSTALL $p
done

pip3 install -U pip
pip3 install -U calico
