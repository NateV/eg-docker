

FROM php:7.2.2-apache-stretch

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN cd /var/www && \
    git clone https://github.com/NateV/Expungement-Generator html

COPY ./docker-config.php /var/www/html/config.php
