#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

#sudo apt update
#sudo apt upgrade -y

#pip install --upgrade pip
#pip install shadowsocks

#sudo sed -i 's/cleanup/reset/g' /usr/local/lib/python2.7/dist-packages/shadowsocks/crypto/openssl.py
#sed -in 's/cleanup/reset/gp' /usr/local/lib/python2.7/dist-packages/shadowsocks/crypto/openssl.py

#sudo sslocal -s server -k jiandanai -d restart

sudo sed -in '/try_files/i\\t\tif (!-f $request_filename) {\n\t\trewrite ^(.*)$ /index.php?_rp_=$1 last;\n\t\tbreak;\n\t\t}' /etc/nginx/sites-enabled/www.in.app

sed -in '/proxy/'d ~/.bashrc
#sed -in '$a\export all_proxy=http://127.0.0.1:1080' ~/.bashrc

composer config -g repo.packagist composer https://packagist.laravel-china.org 
# composer global require laravel/installer
