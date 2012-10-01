
if node[:platform] == "windows"
  windows_package "Git Hub Client" do
    source "http://github-windows.s3.amazonaws.com/GitHubSetup.exe"
    action :install
    installer_type :custom
  end
end

