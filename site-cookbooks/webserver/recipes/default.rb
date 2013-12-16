#
# Cookbook Name:: webserver
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2::default'

web_app "00default" do
  server_name '192.168.33.10'
  docroot "/vagrant/htdocs"
end

node['webserver']['web_apps'].each do |key, app|
  web_app key do
    server_name app['server_name']
    docroot app['docroot']
  end
end