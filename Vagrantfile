# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    config.vm.box = "bento/centos-7.3"
    config.vm.network "private_network", ip: "192.168.33.13"
    config.vm.network "forwarded_port", guest: 35729, host: 35729
    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.network "public_network"

    config.vm.provision "ansible" do |ansible|
       ansible.playbook = "provisioning/site.yml"
    end
    config.vbguest.auto_update = false
    config.vm.synced_folder ".", "/vagrant", nfs: true
    config.vm.provider "virtualbox" do |vm|
      vm.memory = 2048
      vm.cpus = 2
      vm.customize ["modifyvm", :id, "--ioapic", "on"]
    end
end
