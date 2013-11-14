# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :hostonly, "33.33.33.3"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "apt"
    chef.add_recipe "git"
    chef.add_recipe "build-essential"
    chef.add_recipe "openssl"
    chef.add_recipe "mysql::server"
    chef.add_recipe "apache2::default"
    chef.add_recipe "apache2::mod_php5"
    chef.add_recipe "apache2::mod_alias"
    chef.add_recipe "php"
    chef.add_recipe "php::module_curl"
    chef.add_recipe "php::module_gd"
    chef.add_recipe "php::module_mysql"
    chef.add_recipe "drush"
    chef.add_recipe "drupal_setup"
    chef.json = {
      "mysql" => {
        "server_root_password" => "notapassword",
        "server_repl_password" => "notapassword",
        "server_debian_password" => "notapassword"
      }
    }
  end
end
