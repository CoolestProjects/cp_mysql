# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'berkshelf/vagrant'

Vagrant.configure("2") do |config|
  
  config.berkshelf.enabled = true
  config.vm.hostname = "cp-mysql"

  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_centos-6.4_chef-11.4.4.box"
  config.vm.box = "platform-centos"
  config.vm.network :forwarded_port, guest: 3306, host: 3307  # MySQL
  
  config.vm.synced_folder "./sql-scripts", "/vagrant_data"
  config.vm.provision :chef_solo do |chef|
    
    chef.log_level = :debug
    chef.json = {
      :mysql => {
        :server_root_password => 'coolpmysql1',
        :server_debian_password => 'coolpmysql1',
        :server_repl_password => 'coolpmysql1',
        :allow_remote_root => true,
        :bind_address => '0.0.0.0'
      },
    }

    chef.run_list = [
        "recipe[cp_mysql::default]"
    ]
  end
end
