# ベースイメージとしてPHPのバージョン8.1を使用
FROM php:8.1-fpm

# Composerのインストール
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 必要なPHP拡張をインストール
RUN docker-php-ext-install pdo_mysql

# 作業ディレクトリを設定
WORKDIR /var/www