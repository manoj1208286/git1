#cookbook_name lab1
#receipe aiisnment1 for useradd and permission
####
user 'first' do
  comment 'A random user'
  uid '1236'
  gid '1234'
  home '/home/first'
  shell '/bin/bash'
  password 'redhat'
end
###

directory '/etc/best' do
 owner 'root'
 group 'root'
 mode '0755'
 action :create
 not_if { ::File.exist?("/etc/best") }
end
####
remote_file '/etc/best/index.html' do
  source 'https://docs.chef.io/resource_remote_file.html'
  owner 'root'
  group 'root'
  mode '0755'
 # action :create
end


output = shell_out("date").stdout
#chef::Log.info "#{output}"
puts "#{output}"
