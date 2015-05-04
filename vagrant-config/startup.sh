#!/usr/bin/env bash

while true
do
  [ -f /vagrant/Vagrantfile ] && break
  sleep 0.1
done
rm -f /etc/nginx/nginx.conf
cp -f /vagrant/vagrant-config/nginx.conf /etc/nginx/nginx.conf
initctl reload-configuration

su vagrant -c "(cd /vagrant/project && npm install)"
service nginx restart
stop nexrad.io
start nexrad.io
