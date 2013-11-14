include_recipe "php"
include_recipe "php::module_curl"
include_recipe "php::module_gd"
include_recipe "php::module_mysql"
include_recipe "drush"

# Change the ownership of the docroot so the vagrant user can write to it
directory "#{node[:apache][:docroot_dir]}" do
  owner "vagrant"
  group "www-data"
  mode "0755"
end

# Delete the default index.html
file "#{node[:apache][:docroot_dir]}/index.html" do
  action :delete
end


# Copy the template make file 
template "#{node[:apache][:docroot_dir]}/wo_drupal_test.make" do
  source "wo_drupal_test.make.erb"
  owner "vagrant"
  group "www-data"
  mode "0664"
end
