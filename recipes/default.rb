include_recipe "libcap"
include_recipe "libcomerr"
include_recipe "libgssapi-krb5"
include_recipe "libk5crypto"
include_recipe "libkrb5"
include_recipe "libldap"
include_recipe "libncurses"
include_recipe "libpopt"
include_recipe "libreadline"
include_recipe "libtalloc"
include_recipe "libtdb"
include_recipe "libwbclient"
include_recipe "samba-common"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libncurses"

  packages |= %w/
    smbclient
  /
when "precise"
  include_recipe "libtdb"

  packages |= %w/
    smbclient
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
