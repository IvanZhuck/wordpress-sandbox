# WordPress Sandbox
A modern site boilerplate based on [roots/bedrock](https://roots.io/bedrock/) with docker and some code magic

## How to install and run:

1 Clone the repository

```bash
git clone git@github.com:IvanZhuck/wordpress-sandbox.git
```

2 Go to the project directory

```bash
cd wordpress-sandbox
```

3 Copy file `.env.example` to `.env` and fill the environment variables

```bash
cp .env.example .env
```

4 Build the project

```bash
make build
```

5 Generate a self-signed SSL certificate and key

```bash
make generate-ssl-keys
```

6 Install composer dependencies

```bash
make composer-install
```

7 Open the site: https://localhost:44301/ or http://localhost:8081/ (http redirects to https by default)

You can change the http(s) local ports with the `.env` file:

```
LOCAL_DEV_PORT_HTTP=8081
LOCAL_DEV_PORT_HTTPS=44301
```

## Commands
- `make build` - build and run the project Docker containers
- `make up` - run the project Docker containers
- `make down` - stop the project Docker containers
- `make bash` - open app bash command line
- `make phpcs` / `make phpcbf` - run PHP Code Sniffer
- `make wp WP_CLI_ACTION="<wp_cli_action>"` - execute WP CLI action
- `make wp-cron-run"` - run all scheduled cron events due right now
- `make wp-cron-list"` - list scheduled cron events
- `make generate-ssl-keys` - generate a self-signed SSL certificate and key
- `make composer-install` - install composer dependencies