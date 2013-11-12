# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box       = "wheezy64"
  config.vm.box_url   = "https://dl.dropboxusercontent.com/u/5496222/Vagrant/wheezy64.box"
  config.vm.host_name = "dev"

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :private_network, ip: "192.168.33.10"
  config.ssh.forward_agent = true

  config.vm.synced_folder "./apps", "/home/vagrant/apps", nfs: true

  config.berkshelf.enabled        = true
  config.berkshelf.berksfile_path = "chef/Berksfile"

  config.vm.provision :chef_solo do |chef|
    chef.roles_path     = ["chef/roles"]
    chef.data_bags_path = ["chef/data_bags"]
    chef.add_role "rails-dev"
  end
end
