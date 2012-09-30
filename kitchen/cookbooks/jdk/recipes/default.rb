#
# Cookbook Name:: jdk
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

java_home_dir = "C:\\java\\jdk7-64bit"

if
  begin 
    !File.exists?("#{java_home_dir}\\bin\\javac.exe")
  end
  
  env "JAVA_HOME" do
    value "#{java_home_dir}\\bin"
    action :create
  end
  
  windows_path "%JAVA_HOME%" do
    action :add
  end
  
  cookbook_file "c:\\temp\\jdk-7u7-windows-x64.exe" do
    action :create_if_missing
    backup false
  end

  execute "c:\\temp\\jdk-7u7-windows-x64.exe" do
    action :run
    command "c:\\temp\\jdk-7u7-windows-x64.exe /l log.txt /INSTALLDIR=#{java_home_dir} /s ADDLOCAL=\"ToolsFeature,SourceFeature,PublicjreFeature\""
  end
end
