docker exec -it laravel_appTest php artisan migrateFROM php:8.2-fpm

# Instalar extensiones necesarias para PostgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo_pgsql
