#!/bin/bash -x

# install rbenv
if [ ! -d /home/vagrant/.rbenv ]; then
	vagrant git clone https://github.com/sstephenson/rbenv.git /home/vagrant/.rbenv
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/vagrant/.bashrc
	echo 'eval "$(rbenv init -)"' >> /home/vagrant/.bashrc
else
	pushd /home/vagrant/.rbenv
	git pull
	popd
fi

source /home/vagrant/.bashrc

rbenv install 2.1.2
rbenv global 2.1.2

#goto synced folder
pushd /ruby-stuff/
	rbenv local 2.1.2
popd