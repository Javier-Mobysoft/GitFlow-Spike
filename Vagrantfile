# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "phusion/ubuntu-14.04-amd64"


  # fix "stdin: is not a tty" error
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.define "dev" do |dev|
    dev.vm.provider "virtualbox" do |vb|
      # Customize the amount of memory on the VM:
      vb.memory = "512"
      vb.cpus = 1
    end

    dev.vm.network "private_network", ip: "192.168.33.200"

    #dev.vm.synced_folder File.expand_path("~/.m2"), "/home/vagrant/.m2"
    #dev.vm.synced_folder File.expand_path("./"), "/home/vagrant/"

    #dev.vm.provision :shell, path: "vagrant/provision.sh"

    #dev.vm.provision :shell, path: "vagrant/build.sh", privileged: false

    dev.vm.provision :docker
    dev.vm.provision :docker_compose, yml: "/vagrant/docker.yml", rebuild: true



  end

    config.vm.define "stage" do |stage|
      stage.vm.provider "virtualbox" do |vb|
        # Customize the amount of memory on the VM:
        vb.memory = "512"
        vb.cpus = 1
      end

      stage.vm.network "private_network", ip: "192.168.33.201"

      #stage.vm.synced_folder File.expand_path("~/.m2"), "/home/vagrant/.m2"
      #stage.vm.synced_folder File.expand_path("./"), "/home/vagrant/"

      #stage.vm.provision :shell, path: "vagrant/provision.sh"

      #stage.vm.provision :shell, path: "vagrant/build.sh", privileged: false

      stage.vm.provision :docker
      stage.vm.provision :docker_compose, yml: "/vagrant/docker.yml", rebuild: true



    end

     config.vm.define "prod" do |prod|
          prod.vm.provider "virtualbox" do |vb|
            # Customize the amount of memory on the VM:
            vb.memory = "512"
            vb.cpus = 1
          end

          prod.vm.network "private_network", ip: "192.168.33.202"

          #prod.vm.synced_folder File.expand_path("~/.m2"), "/home/vagrant/.m2"
          #prod.vm.synced_folder File.expand_path("./"), "/home/vagrant/"

          #prod.vm.provision :shell, path: "vagrant/provision.sh"

          #prod.vm.provision :shell, path: "vagrant/build.sh", privileged: false

          prod.vm.provision :docker
          prod.vm.provision :docker_compose, yml: "/vagrant/docker.yml", rebuild: true



        end



end
