# Add Drush channel and install drush and dependencies

case node[:platform]
when "debian", "ubuntu"
  execute "discover a pear channel" do
    command "pear channel-discover pear.drush.org"
  end

  execute "install drush dependencies" do
    command "pear install Console_Table"
  end

  execute "install drush" do
    command "pear install drush/drush"
  end
end
