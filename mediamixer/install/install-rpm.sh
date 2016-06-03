cd /usr/local/src/

yum install -y wget epel-release.noarch curl-devel gsm-devel git.x86_64 subversion gcc gcc-c++ automake libtool bzip2 wget tar make zlib-devel libjpeg-turbo-devel.x86_64 openssl-devel.x86_64 openssl libgcrypt-devel.x86_64 libpng-devel.x86_64 ImageMagick-c++-devel.x86_64
wget ftp://fr2.rpmfind.net/linux/centos/6.7/os/x86_64/Packages/libcurl-devel-7.19.7-46.el6.x86_64.rpm
wget ftp://fr2.rpmfind.net/linux/centos/6.7/os/x86_64/Packages/libcurl-7.19.7-46.el6.x86_64.rpm
wget ftp://rpmfind.net/linux/centos/6.7/os/x86_64/Packages/libidn-devel-1.18-2.el6.x86_64.rpm
wget ftp://rpmfind.net/linux/centos/6.7/os/x86_64/Packages/libidn-1.18-2.el6.x86_64.rpm

rpm -ivh libcurl-devel-7.19.7-46.el6.x86_64.rpm libcurl-7.19.7-46.el6.x86_64.rpm libidn-devel-1.18-2.el6.x86_64.rpm 

rpm -ivh --force libcurl-devel-7.19.7-46.el6.x86_64.rpm libcurl-7.19.7-46.el6.x86_64.rpm libidn-1.18-2.el6.x86_64.rpm libidn-devel-1.18-2.el6.x86_64.rpm



