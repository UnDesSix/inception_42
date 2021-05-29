#!bin/bash/

#	Download wordpress compressed file, decompress it,
#	move the dir to the right emplacement and delete .tar file
mv wordpress/ /var/www/
rm latest.tar.gz

mv /tmp/wp-config.php /var/www/wordpress

#	Set up daemonize to 'no' in the php-fpm.conf so i can run it properly after
sed -i -e "s|;daemonize = yes|daemonize = no|g" /etc/php/7.3/fpm/php-fpm.conf
mkdir -p /run/php/
/usr/sbin/php-fpm7.3
