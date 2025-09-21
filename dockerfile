FROM php:8.2-fpm-alpine

RUN apk add --no-cache nginx bash curl

# Remove default Nginx config
RUN rm -f /etc/nginx/conf.d/default.conf

# Copy custom Nginx config (make sure you have nginx.conf file locally)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy all project files into web root
COPY . /var/www/html/

WORKDIR /var/www/html

EXPOSE 80
CMD ["sh", "-c", "php-fpm -D && nginx -g 'daemon off;'"]
