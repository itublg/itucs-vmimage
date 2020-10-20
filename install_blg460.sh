#!/bin/bash

CHECK='dpkg-query --show'
INSTALL='apt-get install -y --no-install-recommends'

PACKAGES='terminator libcurl g++ gdb make splint'
# 'default-mysql-client default-mysql-server mysql-workbench apache2 php-mysql php libapache2-mod-auth-mysql libapache2-mod-php php-mcrypt apache2-utils'

for p in $PACKAGES; do
	$CHECK $p || $INSTALL $p
done
