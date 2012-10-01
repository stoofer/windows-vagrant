remote_file "c:\\utils\\baretail.exe" do
  source "http://www.baremetalsoft.com/baretail/download.php?p=m"
  action :create_if_missing
end
