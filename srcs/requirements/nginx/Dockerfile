FROM	debian:buster

RUN		apt-get update \
	&& apt-get install -y nginx
#	&& echo "daemon off;" >> /etc/nginx/nginx.conf

COPY ./conf/nginx.conf /etc/nginx/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
