FROM php:fpm-alpine

# install prerequisites
RUN apk update \
 && apk upgrade \
 && apk add postgresql-dev \
 && docker-php-ext-install pgsql \
 && docker-php-ext-enable pgsql \
 && apk add autoconf g++ make \
 && pecl install xdebug \
 && docker-php-ext-enable xdebug

