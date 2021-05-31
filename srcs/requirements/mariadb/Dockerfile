FROM	debian:buster

COPY	./tools/setup_db.sh /tmp/
COPY	./conf/my.cnf /tmp/
COPY	./conf/wp-saved.sql /tmp/

RUN		apt-get update \
		&& apt-get install mariadb-server mariadb-client -y \
		&& chmod 111 /tmp/setup_db.sh \
		&& mv ./tmp/my.cnf /etc/mysql/my.cnf \
		&& chmod 0444 /etc/mysql/my.cnf

ENTRYPOINT	["/tmp/setup_db.sh"]

EXPOSE		3306
