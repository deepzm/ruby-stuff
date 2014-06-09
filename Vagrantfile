# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "precise64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box" 

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  config.vm.synced_folder ".", "/ruby-stuff"

  config.vm.provider :virtualbox do |vb|
      vb.name = "ruby-stuff-ubuntu"
      vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "2"]
  end

  config.vm.provision :shell, :path => "setupdevbox.sh"
  
end
