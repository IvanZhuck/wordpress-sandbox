up:
	docker compose up -d

up-dev:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build

down:
	docker compose down

bash:
	docker compose exec app bash

phpcs:
	docker compose exec app bash -c "./vendor/bin/phpcs"

wp:
	docker compose exec app bash -c "wp $(WP_CLI_ACTION)"