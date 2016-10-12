# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"


  # fix "stdin: is not a tty" error
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.define "support" do |support|
    support.vm.provider "virtualbox" do |vb|
      # Customize the amount of memory on the VM:
      vb.memory = "1024"
      vb.cpus = 1
    end

    support.vm.network "private_network", ip: "192.168.33.11"

    support.vm.synced_folder File.expand_path("~/.m2"), "/home/vagrant/.m2"
    support.vm.synced_folder File.expand_path("./"), "/home/vagrant/"

    support.vm.provision :shell, path: "vagrant/provision.sh"

    support.vm.provision :shell, path: "vagrant/build.sh", privileged: false

    support.vm.provision :docker
    support.vm.provision :docker_compose, yml: "/vagrant/docker.yml", rebuild: true



  end



end
