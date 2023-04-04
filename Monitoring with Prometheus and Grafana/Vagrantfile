# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    
  config.ssh.insert_key = false

  config.vm.define "docker" do |docker|
    docker.vm.box="shekeriev/centos-stream-9"
    docker.vm.hostname = "docker.martin.bg"
    docker.vm.network "private_network", ip: "192.168.34.101"
    docker.vm.synced_folder "vagrant/", "/vagrant"
    docker.vm.provision "shell", path: "setup-update.sh"
    docker.vm.provision "shell", path: "setup-hosts.sh"
    docker.vm.provision "shell", path: "setup-firewall.sh"
    docker.vm.provision "shell", path: "setup-docker.sh"
    docker.vm.provision "shell", path: "setup-stack.sh"
    docker.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "3072"]
    end
  end
end
