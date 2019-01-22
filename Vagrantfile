# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

	config.vm.synced_folder ".", "/vagrant"

	config.vm.define "cd" do |d|
		d.vm.box = "ubuntu/bionic64"
		d.vm.hostname = "cd"
		d.vm.network "private_network", ip: "10.100.198.200"
		d.vm.provision :shell, path: "/home/wrath/maze/scripts/bootstrap_ansible.sh"
		d.vm.provision :shell, inline: "PYTHONUNBUFFERED=1 ansible-playbook /vagrant/ansible/cd.yml -c local"
	  d.vm.provision :shell, path: "/home/wrath/maze/scripts/bootstrap.sh"
		d.vm.provider "virtualbox" do |v|
			v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
			v.memory = 2048
		end
	end

	config.vm.define "node01" do |d|
  	d.vm.box = "ubuntu/bionic64"
  	d.vm.hostname = "node01"
  	d.vm.network "private_network", ip: "10.100.198.201"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
   	d.vm.provision :shell, path: "scripts/bootstrap.sh"
  	d.vm.provider "virtualbox" do |v|
    	v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    	v.memory = 2048
  	end
  end

	config.vm.define "node02" do |d|
  	d.vm.box = "ubuntu/bionic64"
  	d.vm.hostname = "node02"
  	d.vm.network "private_network", ip: "10.100.198.202"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
   	d.vm.provision :shell, path: "scripts/bootstrap.sh"
  	d.vm.provider "virtualbox" do |v|
    	v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    	v.memory = 2048
  	end
  end

  config.vm.define "node03" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "node03"
    d.vm.network "private_network", ip: "10.100.198.203"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 2048
    end
  end

  config.vm.define "rp" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "rp"
    d.vm.network "private_network", ip: "10.100.198.204"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 2048 
    end
  end

  config.vm.define "monit" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "monit"
    d.vm.network "private_network", ip: "10.100.198.205"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 2048
    end
  end

  config.vm.define "logger01" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "logger01"
    d.vm.network "private_network", ip: "10.100.198.206"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 4096
    end
  end

  config.vm.define "logger02" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "logger02"
    d.vm.network "private_network", ip: "10.100.198.207"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 4096
    end
  end

  config.vm.define "node01-dev" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "node01-dev"
    d.vm.network "private_network", ip: "10.100.198.208"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 2048 
    end
  end

  config.vm.define "node02-dev" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "node02-dev"
    d.vm.network "private_network", ip: "10.100.198.209"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 2048
    end
  end

  config.vm.define "node03-dev" do |d|
    d.vm.box = "ubuntu/bionic64"
    d.vm.hostname = "node-03-dev"
    d.vm.network "private_network", ip: "10.100.198.210"
#   d.vm.provision :shell, path: "scripts/bootstrap_ansible.sh"
    d.vm.provision :shell, path: "scripts/bootstrap.sh"
    d.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.memory = 2048
    end
  end


	if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end
  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
    config.vbguest.no_install = true
    config.vbguest.no_remote = true
  end
end
	
