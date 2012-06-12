maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures smbclient"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libcap", ">= 0.0.1"
depends          "libcomerr", ">= 0.0.1"
depends          "libgssapi-krb5", ">= 0.0.1"
depends          "libk5crypto", ">= 0.0.1"
depends          "libkrb5", ">= 0.0.1"
depends          "libldap", ">= 0.0.1"
depends          "libncurses", ">= 0.0.1"
depends          "libpopt", ">= 0.0.1"
depends          "libreadline", ">= 0.0.1"
depends          "libtalloc", ">= 0.0.1"
depends          "libtdb", ">= 0.0.1"
depends          "libwbclient", ">= 0.0.1"
depends          "samba-common", ">= 0.0.1"
