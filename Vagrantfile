# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"

  config.ssh.insert_key = false
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 256
    vb.cpus = "1"
    vb.linked_clone = true
  end

  # app server 1
  config.vm.define "app1" do |app|
    app.vm.hostname = "orc-app1.test"
    app.vm.network "private_network", ip: "192.168.50.2"
  end

  # app server 2
  config.vm.define "app2" do |app|
    app.vm.hostname = "orc-app2.test"
    app.vm.network "private_network", ip: "192.168.50.3"
  end

  # db server
  config.vm.define "db" do |db|
    db.vm.hostname = "orc-db.test"
    db.vm.network "private_network", ip: "192.168.50.4"
  end

  # ansible runner
  config.vm.define "runner" do |runner|
    runner.vm.box = "geerlingguy/ubuntu2004"
    runner.vm.provider "virtualbox" do |vb|
      vb.cpus = "1"
      vb.memory = "512"
    end
    runner.vm.hostname = "orc-runner.test"
    runner.vm.network "private_network", ip: "192.168.50.5"
  end
end
