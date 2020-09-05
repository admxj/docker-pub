
rm -rf /etc/yum.repos.d/CentOS-CR.repo /etc/yum.repos.d/CentOS-Debuginfo.repo /etc/yum.repos.d/CentOS-Media.repo /etc/yum.repos.d/CentOS-Sources.repo /etc/yum.repos.d/CentOS-Vault.repo /etc/yum.repos.d/CentOS-fasttrack.repo

sed -e 's!mirrorlist=http://mirrorlist.centos.org!#mirrorlist=http://mirrorlist.centos.org!g' -e 's!#baseurl=http://mirror.centos.org!baseurl=https://mirrors.tuna.tsinghua.edu.cn!g' -i /etc/yum.repos.d/CentOS-Base.repo

yum clean all && yum makecache && yum update

yum install -y libtool perl-core zlib-devel gcc wget pcre* unzip make wget unzip net-tools vim git bzip2 centos-release-scl openssl openssl-devel
yum install -y devtoolset-7-gcc*
scl enable devtoolset-7 bash

#mv /usr/bin/gcc /usr/bin/gcc-4.8.5
#ln -s /opt/rh/devtoolset-7/root/bin/gcc /usr/bin/gcc
#mv /usr/bin/g++ /usr/bin/g++-4.8.5
#ln -s /opt/rh/devtoolset-7/root/bin/g++ /usr/bin/g++
