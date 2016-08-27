#!/bin/bash

####################################
# Modify yum source to 163
####################################
echo '---------- start modify yum source to 163 ----------'
cd /etc/yum.repos.d
sudo mv CentOS-Base.repo CentOS-Base.repo.backup
sudo wget http://mirrors.163.com/.help/CentOS6-Base-163.repo
sudo mv CentOS6-Base-163.repo CentOS-Base.repo
sudo yum clean all
cd ~

####################################
# Update yum source
####################################
echo '---------- start update ----------'
sudo yum -x kernel* update -y

echo '---------- start install yum-utils ----------'
sudo yum -y install yum-utils

echo '---------- start install mlocate ----------'
sudo yum install -y mlocate

####################################
# Install MySQL
####################################
echo '---------- start install MySQL ----------'
cd ~
wget http://repo.mysql.com/mysql57-community-release-el6-7.noarch.rpm
sudo yum localinstall mysql57-community-release-el6-7.noarch.rpm
sudo yum-config-manager --disable mysql55-community
sudo yum-config-manager --disable mysql56-community
sudo yum-config-manager --enable mysql57-community

sudo yum -x kernel* update

sudo yum install mysql-community-server
sudo service mysqld start
echo ' '
echo '========== MySQL default password =========='
sudo grep 'temporary password' /var/log/mysqld.log
echo '============================================'
echo ' '

####################################
# Install PHP5.6
####################################
echo '---------- start install PHP5.6 ----------'
sudo yum install -y php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common php-memcache php-memcached php-redis

####################################
# Install Nginx
####################################
echo '---------- start install Nginx ----------'
sudo yum install -y nginx

####################################
# Install Git
####################################
echo '---------- start install Git ----------'
sudo yum install -y git

####################################
# Install vsftpd
####################################
echo '---------- start install vsftpd ----------'
sudo yum install -y vsftpd

####################################
# Install Memcached
####################################
sudo yum install -y memcached

####################################
# Install VIM
####################################
echo '---------- start install VIM ----------'
sudo yum install -y vim

####################################
# Start service on boot
####################################
sudo chkconfig nginx on
sudo chkconfig php-fpm on
sudo chkconfig mysqld on
sudo chkconfig vsftpd on
sudo chkconfig memcached on
