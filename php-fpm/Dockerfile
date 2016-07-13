FROM debian:jessie

MAINTAINER Jila Khaghani "jila@mamamia.com.au"

# Install PHP 
RUN apt-get update && apt-get install -y --no-install-recommends \ 
		php5-fpm \
		php5-geoip \
		php5-gnupg \
		php5-igbinary \
		php5-imagick \
		php5-json \
		php5-memcached \
		php5-oauth \
		php5-cli \
		php5-common \
		php5-curl \
		php5-enchant \
		php5-gd \
		php5-imap \
		php5-mcrypt \
		php5-mysql \
		php5-phpdbg \
		php5-pspell \
		php5-readline \
		php5-tidy \
		php5-xmlrpc \
		php5-xsl \
		php5-xcache \
		php5-xdebug \ 
	&& rm -rf /var/lib/apt/lists/* \
	&& apt-get clean \
	&& sed -i -e "s/^listen = .*/listen = 0.0.0.0:9000/" /etc/php5/fpm/pool.d/www.conf \
	&& sed -i -e "s/^;daemonize = yes/daemonize = no/" /etc/php5/fpm/php-fpm.conf \
	&& sed -i -e "s/^error_log = .*/error_log = stderr/" /etc/php5/fpm/php-fpm.conf \
	&& sed -i -e "s/^display_errors = Off/display_errors = stderr/" /etc/php5/fpm/php.ini

EXPOSE 9000
CMD ["php5-fpm"]
