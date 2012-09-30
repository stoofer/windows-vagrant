
directory "c:\\Utils\\wget" do
  recursive true
  rights :full_control, "Everyone"
  inherits false
  action :create
end

remote_file "c:\\Utils\\wget\\wget.exe" do
  source "http://users.ugent.be/~bpuype/wget/wget.exe"
  action :create_if_missing
end

windows_path "c:\\Utils\\wget" do
  action :add
end

