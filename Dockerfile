# Usa una imagen oficial de PHP con Apache
FROM php:8.1-apache

# Copia todo el código del proyecto al directorio raíz del servidor web
COPY . /var/www/index.php/

# Habilita el módulo de reescritura de Apache (útil para .htaccess)
RUN a2enmod rewrite

# Expón el puerto HTTP
EXPOSE 80
