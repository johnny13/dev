FROM php:fpm

# RUN docker-php-ext-install pdo pdo_mysql
RUN curl -sSLf \
        -o /usr/local/bin/install-php-extensions \
        https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions gd xdebug pdo_mysql bz2 exif gettext mcrypt bcmath memcache yaml