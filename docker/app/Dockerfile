FROM php:5.4-apache

# Dev tools
RUN apt-get update && apt-get install -y mc nano git vim bash-completion telnet libssl-dev && rm -r /var/lib/apt/lists/*

#
# PHP
#

# Extensions
RUN docker-php-ext-install mbstring bcmath pcntl calendar dba exif gettext mysqli sockets pdo_mysql shmop sysvmsg ftp

# Common extension dependencies
RUN apt-get update && apt-get install -y libssl-dev libc-client2007e-dev \
    && rm -r /var/lib/apt/lists/*

# Apache
RUN rm /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/default-ssl.conf

# Virtual host
COPY conf/000-default.conf /etc/apache2/sites-available/
RUN a2ensite 000-default

WORKDIR /var/www/app
