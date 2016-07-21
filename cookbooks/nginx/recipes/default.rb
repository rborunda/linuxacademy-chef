#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


package "nginx" do
	action :install
end


template "/etc/nginx/default.d/reverseproxy.conf" do
	source "reverseproxy.conf.erb"
	mode = '0644'
	owner = 'root'
	group = 'root'
	notifies :restart, "service[nginx]" 
end

service "nginx" do
	action [ :enable, :start]
end
