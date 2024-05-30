# Gunakan image nimmis/alpine-apache sebagai basis
FROM nimmis/alpine-apache

# Instal apache2-proxy
RUN apk update && apk add apache2 apache2-proxy apache2-proxy-html && apk upgrade apache2

RUN sed -i "s/^#LoadModule rewrite_module/LoadModule rewrite_module/" /etc/apache2/httpd.conf

