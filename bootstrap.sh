#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
    
    apt-get install python-software-properties build-essential -y > /dev/null
    add-apt-repository ppa:ondrej/php5 -y > /dev/null
    apt-get update > /dev/null
     apt-get install php5-common php5-dev php5-cli php5-fpm -y > /dev/null
    
    apt-get install curl php5-curl php5-gd php5-mcrypt php5-mysql -y > /dev/null