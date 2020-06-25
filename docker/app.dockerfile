FROM php:7.3.4-fpm

#RUN apt-get update && apt-get install -y libmcrypt-dev \
#    && docker-php-ext-install mcrypt pdo_mysql

RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/bin/ --filename=composer

# RUN apt-get update && apt-get install -y \
#        libfreetype6-dev \
#        libjpeg62-turbo-dev \
#        libmcrypt-dev \
#        libpng-dev \
#    && docker-php-ext-install -j$(nproc) iconv mcrypt \
#    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
#    && docker-php-ext-install -j$(nproc) gd

RUN apt-get update
RUN apt-get install -y git

RUN apt-get update && apt-get install -y libzip-dev && rm -rf /var/lib/apt/lists/* && docker-php-ext-install zip

RUN docker-php-ext-install mysqli