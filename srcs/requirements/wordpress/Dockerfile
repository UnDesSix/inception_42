FROM		debian:buster

COPY		./tools/setup.sh /tmp
COPY		./conf/wp-config.php /tmp

RUN			apt-get update \
		&& apt-get install php-fpm php-mysql curl tar -y \
		&& echo "listen = 9000" >> /etc/php/7.3/fpm/pool.d/www.conf \
		&& curl -LO https://wordpress.org/latest.tar.gz \
		&& tar xzvf latest.tar.gz

EXPOSE		9000

ENTRYPOINT	["bash", "/tmp/setup.sh"]
