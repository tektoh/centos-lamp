#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "/etc/httpd/conf.d/phpmyadmin.conf" do
  notifies :reload, "service[apache2]", :delayed
end