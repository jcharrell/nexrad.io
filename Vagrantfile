Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.233.23"
  config.vm.provision "shell", path: "vagrant-config/provision.sh"
  config.vm.provision "shell", run: "always", path: "vagrant-config/startup.sh"
end
