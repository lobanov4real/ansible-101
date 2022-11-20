# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/ubuntu2004"

  config.ssh.insert_key = false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 512
    vb.cpus = "1"
    vb.linked_clone = true
  end

  # app server
  config.vm.define "app" do |app|
    app.vm.hostname = "app.test"
    app.vm.network "private_network", ip: "192.168.40.2"
    app.vm.network "forwarded_port", guest: 8983, host: 8983
  end

  # ansible runner
  config.vm.define "runner" do |runner|
    runner.vm.hostname = "runner.test"
    runner.vm.network "private_network", ip: "192.168.40.3"
    runner.vm.provision "shell", path: "bootstrap.sh"
  end
end
