# .devcontainer/Dockerfile
FROM mcr.microsoft.com/devcontainers/php:latest

# Install additional packages
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install apache2 libapache2-mod-php php-mysql mysql-server \
    && a2enmod php

# Enable apache mods
RUN a2enmod rewrite

# Install WP-CLI
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

# Setup Apache
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf
