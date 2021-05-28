#!bin/bash/

#	Download wordpress compressed file, decompress it,
#	move the dir to the right emplacement and delete .tar file
curl -LO https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
mv wordpress/ /var/www/
rm latest.tar.gz

#	Set up daemonize to 'no' in the php-fpm.conf so i can run it properly after
sed -i -e "s|;daemonize = yes|daemonize = no|g" /etc/php/7.3/fpm/php-fpm.conf
mkdir -p /run/php/
/usr/sbin/php-fpm7.3
