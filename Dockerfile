FROM php:8.1-apache

# Abilita mod_rewrite
RUN a2enmod rewrite

# Installa alcuni pacchetti necessari per le estensioni PHP
RUN apt-get update && apt-get install -y \
  libcurl4-openssl-dev \
  libonig-dev \
  libzip-dev \
  unzip \
  zip \
  libpng-dev \
  libjpeg-dev \
  libfreetype6-dev \
  libxml2-dev \
  default-mysql-client \
  && docker-php-ext-install mysqli pdo pdo_mysql mbstring curl \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
