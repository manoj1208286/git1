#
# Cookbook:: lab1
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

######################################

#user 'chn' do
# comment 'A random user'
# uid '1237'
# home '/home/chn'
# manage_home true
# shell '/bin/bash'
# password 'mqL2r7gHCwLw6'
#end

#execute 'useradd mk '

########################################

#directory '/etc/test' do
 # owner 'root'
 # group 'root'
 # mode '0755'
 # action :create
 # not_if { ::File.exist?("/etc/test") }  
#end

##########################################

#directory '/etc/mj'
#execute 'cat /etc/passwd >> /etc/mj/out.txt'

###########################################

 #remote_file '/etc/test/idex.html' do
 # source 'https://docs.chef.io/resource_remote_file.html'
 # owner 'root'
 # group 'root'
 # mode '0755'
#end

###########################################

#execute '/usr/bin/date >> 
#bash "echo do something" do 
#code <<-EOH
#echo `/usr/bin/date`
#EOH
#end
#####################
#sshpass -f <(printf '%s\n' redhat) ssh 192.168.122.38

##################################

#output = shell_out("date").stdout
#chef::Log.info "#{output}"   
#puts "#{output}" 
#EOH



#############we use templeate resource to copy file at run time with dynamic values######

#template '/tmp/mj/manoj.txt' do
 # source 'manoj.txt'
 # owner 'root'
 # group 'root'
 # mode '0755'
#end

#########################################################


##file resource ll create this file if not otherwise copy the content we have mentioned in content resource###

 #file '/tmp/mj1.txt' do
 # content 'This is a placeholder for the home page /n'
 # mode '0755'
 # owner 'root'
 # group 'root'
#end


#########################################################

###cookbook_file will copy file to specified place that file availabe in /cookbooks/urcookbook/files location##

#cookbook_file '/tmp/chauhan' do
#source 'chauhan'
#owner 'manoj_chauhan'
#group 'manoj_chauhan'
#mode '744'
#end

#########################################################
package 'httpd' do
action :install
end

#package 'httpd' do
#action :remove
#end

#cookbook_file '/var/www/html/index.html' do
#action :delete
#end

template '/var/www/html/index.html' do
source 'motd.erb'
owner 'root'
mode '777'
end

service 'httpd' do
action [:start,:enable]
end

##########################################################
#user 'cpmibmc'  do
 # action :create
 # comment 'FR/S/*IAMFR/IBM-SO/MRS/S/*CSIAM/CCS/CPM Reconcile User'
 # shell '/bin/sh'
 # password 'cpmibmc'
#               end

##########################################################
















