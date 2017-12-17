template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Rakesh'
)
end

user 'user1' do
  comment 'user1'
  uid '123'
  home '/home/user1'
  shell '/bin/bash'
end

group 'admins' do
  members 'user1'
  append true
end

package 'tree' do
  action :install
end

package 'ntp' do 
  action :install
end

package 'git' do
  action :install
end

package 'emacs'

