packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    smbclient
  /
when "precise"
  packages |= %w/
    smbclient
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
