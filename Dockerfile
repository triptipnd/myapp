# Use PHP-FPM Alpine
FROM php:8.2-fpm-alpine

# Install Nginx and bash
RUN apk add --no-cache nginx bash

# Copy website files
COPY . /var/www/html

# Copy custom Nginx config (we'll use nginx.conf)
COPY nginx.conf /etc/nginx/nginx.conf

# Create log directories
RUN mkdir -p /var/log/nginx /run/nginx

# Expose port 80
EXPOSE 80

# Start PHP-FPM and Nginx
CMD ["sh", "-c", "php-fpm & nginx -g 'daemon off;'"]
