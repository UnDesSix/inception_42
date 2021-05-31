FROM	debian:buster


RUN			apt-get update \
			&& apt-get install dumb-init -y nginx

COPY		./conf/nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT ["/usr/bin/dumb-init"]

EXPOSE		80 443

CMD			["nginx", "-g", "daemon off;"]
