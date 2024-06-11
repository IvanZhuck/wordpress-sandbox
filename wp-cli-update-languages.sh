#!/bin/bash

LANG=$1
COLOR_GREEN='\033[1;32m'
COLOR_END='\033[0m'

rm -rf web/app/languages;
printf "${COLOR_GREEN}[The old translation files removed]${COLOR_END}\n"
vendor/wp-cli/wp-cli/bin/wp language core install ${LANG}
vendor/wp-cli/wp-cli/bin/wp language plugin list --all --language=${LANG} --format=csv --fields=plugin | tail -n +2 |
while read -r PLUGIN_NAME; do
    printf "${COLOR_GREEN}[Updating translations for the plugin \"${PLUGIN_NAME}\"]${COLOR_END}\n"
    vendor/wp-cli/wp-cli/bin/wp language plugin install ${PLUGIN_NAME} ${LANG}
done

vendor/wp-cli/wp-cli/bin/wp language theme list --all --language=${LANG} --format=csv --fields=theme | tail -n +2 |
while read -r THEME_NAME; do
    printf "${COLOR_GREEN}[Updating translations for the theme \"${THEME_NAME}\"]${COLOR_END}\n"
    vendor/wp-cli/wp-cli/bin/wp language theme install ${THEME_NAME} ${LANG}
done

vendor/wp-cli/wp-cli/bin/wp site switch-language ${LANG}