FROM	debian:buster

COPY	./tools/setup_db.sh /tmp/
COPY	./conf/my.cnf /tmp/
COPY	./conf/wp-saved.sql /tmp/

RUN		apt-get update \
		&& apt-get install mariadb-server mariadb-client dumb-init -y \
		&& chmod 111 /tmp/setup_db.sh \
		&& mv ./tmp/my.cnf /etc/mysql/my.cnf \
		&& chmod 0444 /etc/mysql/my.cnf

ENTRYPOINT ["/usr/bin/dumb-init"]

EXPOSE		3306

CMD	["/tmp/setup_db.sh"]
