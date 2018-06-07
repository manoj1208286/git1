#cookbook_name first
#recipe name manoj
package "httpd" do
action :install
end

cookbook_file "/usr/share/httpd/www/index.html" do
 source "index.html"
 mode "0644"
 owner "root"
 group "rooot"
end

service "httpd" do
action [:enable,:start]
end

