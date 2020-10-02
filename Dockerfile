FROM php:7.2.17-alpine

LABEL Maintainer M.S.H <sholichul.huda@kly.id>

RUN apk add update

RUN apk add --no-cache openssh-client\
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo --no-suggest --no-progress \
    && curl -LO https://deployer.org/deployer.phar \
    && mv deployer.phar /usr/local/bin/dep \
    && chmod +x /usr/local/bin/dep \
    && composer clear-cache

RUN apk add --no-cache mysql-client \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && docker-php-ext-enable pdo_mysql

RUN apk --update --no-cache add libpng  \
    && libpng-dev \
    && docker-php-ext-install gd 

WORKDIR /app