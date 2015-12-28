# -*- mode: ruby -*-
Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-6.7"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.define 'base' do |v|
    v.vm.network "private_network", ip: "192.168.33.20"
    v.vm.synced_folder "./work", "/home/vagrant/work"
  end

  config.ssh.forward_agent = true
end
