#
# Cookbook Name:: notepad-plus-plus
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

file 'hello.log' do
  action :create_if_missing
end
