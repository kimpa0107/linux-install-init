#!/bin/bash

echo '---------- start update ----------'
sudo apt-get update

echo '---------- start install mlocate ----------'
sudo apt-get install -y mlocate

####################################
# Install MySQL
####################################
echo '---------- start install MySQL ----------'
sudo apt-get install -y mysql-server mysql-client

####################################
# Install PHP5.6
####################################
sudo apt-get install php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-memcached php5-redis php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl

####################################
# Install Nginx
####################################
echo '---------- start install Nginx ----------'
sudo apt-get install -y nginx

####################################
# Install Git
####################################
echo '---------- start install Git ----------'
sudo apt-get install -y git

####################################
# Install vsftpd
####################################
echo '---------- start install vsftpd ----------'
sudo apt-get install -y vsftpd

####################################
# Install Memcached
####################################
sudo apt-get install -y memcached

####################################
# Install Redis
####################################
sudo apt-get install -y redis

####################################
# Install VIM
####################################
echo '---------- start install VIM ----------'
sudo apt-get install -y vim

