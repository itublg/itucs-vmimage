# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"

    config.vm.provider "virtualbox" do |vb|
        # vb.customize ["modifyvm", :id, "--memory", "1024"]
        vb.customize ["modifyvm", :id, "--name", "itucs" ]
    end

    config.vm.provision :shell do |shell|
        shell.path = "fix_locale.sh"
    end

    config.vm.provision "shell",
        inline: "echo ubuntu:itucs | sudo chpasswd"

    config.vm.provision "shell",
        inline: "apt-get update -y"

    config.vm.provision :shell do |shell|
        shell.path = "install_lubuntu.sh"
    end

    config.vm.provision :shell do |shell|
        shell.path = "install_base.sh"
    end

    config.vm.provision :shell do |shell|
        shell.path = "install_blg101.sh"
    end

    config.vm.provision :shell do |shell|
        shell.path = "install_blg102.sh"
    end

    config.vm.provision :shell do |shell|
        shell.path = "install_calico.sh"
    end

    config.vm.provision :shell do |shell|
        shell.path = "install_blg413.sh"
    end

    config.vm.provision :shell do |shell|
        shell.path = "install_blg458.sh"
    end
end
