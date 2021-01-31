FROM alpine:edge
RUN  echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN  apk update \
        && apk upgrade
RUN  apk add --no-cache \
        git \
        php8 \
        php8-opcache \
        php8-phar \
        php8-xmlreader \
        php8-fileinfo \
        php8-zip \
        php8-gd \
        php8-pdo_sqlite \
        php8-imap \
        php8-gmp \
        php8-bcmath \
        php8-enchant \
        php8-mysqli \
        php8-pear \
        php8-session \
        php8-xsl \
        php8-dom \
        php8-curl \
        php8-iconv \
        php8-gettext \
        php8-pdo_pgsql \
        php8-common \
        php8-json \
        php8-sysvsem \
        php8-calendar \
        php8-posix \
        php8-pdo \
        php8-tidy \
        php8-ldap \
        php8-pgsql \
        php8-mbstring \
        php8-ctype \
        php8-pdo_dblib \
        php8-pcntl \
        php8-fpm \
        php8-bz2 \
        php8-openssl \
        php8-sysvshm \
        php8-pecl-mcrypt \
        php8-intl \
        php8-zlib \
        php8-xml \
        php8-sysvmsg \
        php8-opcache \
        php8-dba \
        php8-shmop \
        php8-sockets \
        php8-exif \
        php8-redis \
        php8-pecl-inotify \
        php8-pecl-uuid \
        php8-pecl-oauth \
        php8-pecl-memcached \
        php8-pecl-timezonedb \
        php8-pecl-lzf \
        php8-pecl-msgpack \
        php8-pecl-mailparse \
        php8-pecl-apcu
RUN  pear8 install Net_LDAP2
RUN  apk add --no-cache busybox-suid \
        nano \
        bash \
        sudo
RUN  rm -rf \
      /usr/share/doc \
      /usr/share/man \
      /tmp/* \
      /var/cache/apk/*
WORKDIR /srv
CMD   crond -d 2 && php-fpm8
