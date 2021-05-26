FROM		debian:buster

COPY		./tools/setup.sh /tmp/setup.sh

RUN			apt-get update \
		&& apt-get install php-fpm php-mysql curl tar -y \
		&& echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf \
		&& mkdir -p /var/www/my_domain \
		&& curl -LO https://wordpress.org/latest.tar.gz \
		&& tar xzvf latest.tar.gz \
		&& mv wordpress/ var/www/ \
		&& rm latest.tar.gz

EXPOSE		9000

ENTRYPOINT	["bash", "/tmp/setup.sh"]
