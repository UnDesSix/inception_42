curl -LO https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
mv wordpress/ /var/www/
rm latest.tar.gz
sed -i -e "s|;daemonize = yes|daemonize = no|g" /etc/php/7.3/fpm/php-fpm.conf
mkdir -p /run/php/
/usr/sbin/php-fpm7.3
