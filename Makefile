#!make
include .env

build:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build

up:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d

down:
	docker compose down

bash:
	docker compose exec app bash

phpcs:
	docker compose exec app bash -c "./vendor/bin/phpcs"

phpcbf:
	docker compose exec app bash -c "./vendor/bin/phpcbf"

wp:
	docker compose exec app bash -c "wp $(WP_CLI_ACTION)"

generate-ssl-keys:
	docker compose exec app bash -c "openssl req -newkey rsa:4096 \
		-x509 \
		-sha256 \
		-days 3650 \
		-nodes \
		-out docker/ssl/ssl.crt \
		-keyout docker/ssl/ssl.key \
		-subj \"/C=RU/ST=Khabarovskiy Kray/L=Khabarovsk/O=WordPress/OU=IT Department/CN=${LOCAL_HOSTNAME}\""

composer-install:
	docker compose exec app bash -c "composer install"

composer-update:
	docker compose exec app bash -c "composer update"