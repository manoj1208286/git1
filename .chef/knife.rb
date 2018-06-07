current_dir = File.dirname(__FILE__)
log_level		:info
log_location		STDOUT
node_name		"manojchauhan"
client_key		"/home/manoj/chef-repo/.chef/manoj.pem"
validation_client_name 	"chef-validator"
validation_key		"/home/manoj/chef-repo/.chef/chef-validator.pem"
chef_server_url		"https://chef-server.default/organizations/chef"	
cookbook_path		 ["/home/manoj/chef-repo/cookbooks"]
knife[:editor]="/usr/bin/vim"
