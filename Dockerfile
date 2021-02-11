FROM php:7.4.5-alpine

LABEL Maintainer M.S.H <sholichul.huda@kly.id>

RUN apk add --no-cache openssh-client\
    && curl -O "https://getcomposer.org/download/1.10.17/composer.phar" && chmod a+x composer.phar && mv composer.phar /usr/local/bin/composer \
    && composer global require hirak/prestissimo --no-suggest --no-progress \
    && curl -LO https://deployer.org/deployer.phar \
    && mv deployer.phar /usr/local/bin/dep \
    && chmod +x /usr/local/bin/dep \
    && composer clear-cache
