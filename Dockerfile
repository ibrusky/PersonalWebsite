# Use official PHP image with Apache
FROM php:8.3-apache

# Enable common PHP extensions (optional)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy all files into Apache's web root
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for web traffic
EXPOSE 80

# Apache will start automatically when the container runs
