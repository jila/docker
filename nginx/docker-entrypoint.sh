#!/bin/bash
set -e

#For static file on Mac
sed  -i -e "s|sendfile\s\+on|sendfile off|" /etc/nginx/nginx.conf

sed -i -e "s|%DOCUMENT_ROOT%|${DOCUMENT_ROOT:-/var/www}|" /etc/nginx/conf.d/default.conf
sed -i -e "s|%PHP_FPM%|${PHP_FPM:-php:9000}|" /etc/nginx/conf.d/default.conf

exec "$@"
