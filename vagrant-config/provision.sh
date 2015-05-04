#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-add-repository -y ppa:chris-lea/node.js

apt-get update
apt-get install -y mongodb-org nginx nodejs git linux-headers-$(uname -r) build-essential

ln -sf /vagrant/vagrant-config/upstart-scripts/nexrad.io.conf /etc/init/nexrad.io.conf

rm -Rf /vagrant/project/node_modules
initctl reload-configuration
sudo chown -R vagrant:vagrant /home/vagrant/


