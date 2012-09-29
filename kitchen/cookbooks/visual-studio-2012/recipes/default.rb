#
# Cookbook Name:: visual-studio-2012
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

begin
  require 'win32/registry'
rescue LoadError
end

log("VS 2012 Product Key is: #{node.vs2012.product_key}")

unless
  begin
    Registry.key_exists?('HKLM\SOFTWARE\Microsoft\VisualStudio\11.0')
  end
 
  directory node.vs2012.temp_dir do
    action :create
    recursive true
  end

  cookbook_file "#{node.vs2012.temp_dir}\\#{node.vs2012.iso_file}" do
    backup false
    action :create_if_missing
    not_if {File.exists?("#{node.vs2012.temp_dir}\\#{node.vs2012.installer}")}
  end
    
  execute node.vs2012.zip_exe do
    action :run
    command "\"#{node.vs2012.zip_exe}\" x #{node.vs2012.temp_dir}\\#{node.vs2012.iso_file} -o#{node.vs2012.temp_dir}"
    not_if { File.exists?("#{node.vs2012.temp_dir}\\#{node.vs2012.installer}")}
  end
 
  template "#{node.vs2012.temp_dir}\\AdminDeployment.xml" do
    action :create
  end

  #Command line install of VS2012 
  #http://msdn.microsoft.com/en-us/library/ee225237.aspx
  #\\server1\IDEinstall\vs_ultimate.exe /adminfile \\server1\ IDEinstall\AdminDeployment.xml /quiet /norestart
  execute "#{node.vs2012.temp_dir}\\#{node.vs2012.installer}" do
    action :run
    command "#{node.vs2012.temp_dir}\\#{node.vs2012.installer} /adminfile AdminDeployment.xml /quiet /norestart /ProductKey #{node.vs2012.product_key} /L c:\\temp\\vs2012-install.log"
  end
#c:\temp\vs2012\vs_professional.exe /adminfile AdminDeployment.xml /quiet /norestart /ProductKey 4D9749QX429Y43GYJ7JGJDYBP
end




