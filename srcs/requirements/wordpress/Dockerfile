FROM		debian:buster

COPY		./tools/setup_wp.sh /tmp
COPY		./conf/wp-config.php /tmp

RUN			apt-get update \
		&& apt-get install php-fpm php-mysql curl tar -y \
		&& echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf \
		&& curl -LO https://wordpress.org/latest.tar.gz \
		&& tar xzvf latest.tar.gz

ENTRYPOINT	["bash", "/tmp/setup_wp.sh"]

EXPOSE		9000
