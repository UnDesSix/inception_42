FROM	debian:buster

RUN		apt-get update \
	&& mkdir -p /var/www/html_test/

COPY	./conf/test.html /var/www/html_test/

EXPOSE 9000

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
