#!/usr/bin/with-contenv sh

echo "Starting PHP-FPM"

# Make unix socket for nginx/php
mkdir -p /var/run/php-fpm
touch /var/run/php-fpm/www.sock
chown -R www-data:www-data /var/run/php-fpm

# Start PHP-FPM
"/usr/sbin/php-fpm8.0" -R -F
