#!/bin/bash
# Install tor on debian jessie
echo 'Adding sources...'

echo 'deb http://deb.torproject.org/torproject.org jessie main' >>/etc/apt/sources.list
echo 'deb-src http://deb.torproject.org/torproject.org jessie main' >>/etc/apt/sources.list

echo 'Getting keys...'

gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -


echo 'Updating system and installing tor...'

apt -y update
apt -y install tor deb.torproject.org-keyring
