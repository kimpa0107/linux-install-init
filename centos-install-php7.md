# CentOS install php7

### 1. Delete old version php

```
rpm -qa | grep php | xargs rpm -e
```

### 2. Install epel-release

```
rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
```

### 3. Install remi-release

```
rpm -Uvh https://rpms.remirepo.net/enterprise/remi-release-7.rpm
```

### 4. Install php and php extensions

```
yum install -y --enablerepo=remi --enablerepo=remi-php72 php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common php-redis php-memcache php-memcached
```
