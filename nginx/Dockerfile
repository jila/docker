FROM nginx:1.9

MAINTAINER Jila Khaghani "jila@mamamia.com.au"

COPY default.conf /etc/nginx/conf.d/default.conf 
COPY docker-entrypoint.sh /docker-entrypoint.sh

# This script replaces %DOCUMENT_ROOT% in nginx's virtual host with
# the value of $DOCUMENT_ROOT environment variable and then executes
# the CMD specifoied below
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
