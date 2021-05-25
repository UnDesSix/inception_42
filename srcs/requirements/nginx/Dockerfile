FROM	debian:buster

RUN		apt-get update \
	&& apt-get install -y nginx \
	&& echo "daemon off;" >> /etc/nginx/nginx.conf \
	&& mkdir -p /var/www/html_test/

COPY	./conf/default /etc/nginx/sites-enabled/

EXPOSE 80
CMD ["nginx"]
