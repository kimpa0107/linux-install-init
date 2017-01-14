#!/bin/bash

echo '---------- start update ----------'
sudo yum update -y

echo '---------- start install mlocate ----------'
sudo yum install -y mlocate

echo '---------- start install yum-utils ----------'
sudo yum install -y yum-utils

####################################
# Install MySQL
####################################
echo '---------- start install MySQL ----------'
cd /home/vagrant
wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum-config-manager --disable mysql56-community
yum-config-manager --enable mysql57-community-dmr
sudo yum install -y mysql-community-server

####################################
# Install Nginx
####################################
echo '---------- start install Nginx ----------'
sudo yum install -y nginx

####################################
# Install PHP5.6
####################################
echo '---------- start install PHP5.6 ----------'
rpm -Uvh http://ftp.iij.ad.jp/pub/linux/fedora/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum install -y --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common php-redis php-memcached

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
# Install Redis
####################################
sudo yum install -y redis

####################################
# Install VIM
####################################
echo '---------- start install VIM ----------'
sudo yum install -y vim

####################################
# Start service on boot
####################################
sudo systemctl enable nginx
sudo systemctl enable php-fpm
sudo systemctl enable mysqld
sudo systemctl enable vsftpd
sudo systemctl enable memcached
sudo systemctl enable redis
