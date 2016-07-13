#!/bin/bash
set -e

map=${DOMAIN_PORT_MAP:-default 8080;}

#For static file on Mac
sed  -i -e "s|sendfile\s\+on|sendfile off|" /etc/nginx/nginx.conf 

# For debug uncomment following line
echo sed -i -e "s/%DOMAIN_PORT_MAP%/${map/$'\n'/}/" /etc/nginx/conf.d/default.conf

sed -i -e "s/%DOMAIN_PORT_MAP%/${map/$'\n'/}/" /etc/nginx/conf.d/default.conf

exec "$@"
