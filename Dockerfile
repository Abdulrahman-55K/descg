# Stage 1: Build React frontend
FROM node:20 AS frontend
WORKDIR /app/frontend
COPY ./frontend/package*.json ./
RUN npm install
COPY ./frontend .
RUN npm run build

# Stage 2: Setup Laravel backend
FROM php:8.2-fpm-alpine as backend

# Install system deps + PHP extensions correctly
RUN apk add --no-cache \
    nginx \
    bash \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    libzip-dev \
    zip \
    curl \
    oniguruma-dev \
    icu-dev \
    zlib-dev \
    libxml2-dev \
    sqlite-dev \
    git \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install pdo pdo_mysql mysqli zip intl gd xml opcache bcmath

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY ./backend /var/www/html

RUN composer install --no-dev --optimize-autoloader

# Copy built React to Laravel public directory
COPY --from=frontend /app/frontend/dist /var/www/html/public

COPY ./docker/nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

# Cache Laravel config at runtime to use Railway's env variables
CMD ["sh", "-c", "php artisan config:cache && php artisan route:cache && php artisan view:cache && php-fpm -D && nginx -g 'daemon off;'"]
