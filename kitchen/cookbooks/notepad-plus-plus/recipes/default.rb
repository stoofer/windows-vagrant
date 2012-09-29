#
# Cookbook Name:: notepad-plus-plus
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

windows_package "Notepad++" do
  source "http://download.tuxfamily.org/notepadplus/6.1.8/npp.6.1.8.Installer.exe"
  action :install
end
