# Ubuntu 16.04 install LAMP Server

### ubuntu server 16.04.1 amd64


1. install mysql5.7

`sudo apt install mysql-server mysql-client`

2. install apache2.4

`sudo apt install apache2`

3. remove original php and install php5.6

```shell
sudo aptitude purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php5.6
```
