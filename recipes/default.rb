# Encoding: utf-8
#
# Cookbook Name:: static_routes
# Recipe:: default
#
# Copyright 2015, Yakara Ltd
#

# via - very simple for now in future, we should create a
# table of routes handled by the recipe
# and remove ones no longer defined explicitly
#

node['static_routes']['via'].each do |dest, via|
  Chef::Log.info("Adding route to #{dest} via #{via}")
  route dest do
    gateway via
  end
end
