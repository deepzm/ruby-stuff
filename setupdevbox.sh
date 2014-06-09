#!/bin/bash

apt-get update
apt-get -y install git

su -c "source /home/vagrant/myapp/vagrant/user-config.sh" vagrant