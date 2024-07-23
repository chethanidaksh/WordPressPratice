#!/bin/bash

# Start MySQL service
service mysql start

# Create a database for WordPress
mysql -e "CREATE DATABASE wordpress;"

# Download WordPress
wp core download --path=/var/www/html --allow-root

# Create a wp-config.php file
wp config create --dbname=wordpress --dbuser=root --dbhost=localhost --path=/var/www/html --allow-root

# Install WordPress
wp core install --url="http://localhost" --title="WordPress Pratice" --admin_user="chethanspoojary" --admin_password="Idaksh@123?" --admin_email="chethan.s@idaksh.in" --path=/var/www/html --allow-root

# Set permissions
chown -R www-data:www-data /var/www/html

# Restart Apache
service apache2 restart
