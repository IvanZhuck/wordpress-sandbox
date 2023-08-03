<?php

/**
 * Configuration overrides for WP_ENV === 'production'
 */

use Roots\WPConfig\Config;

Config::define('SAVEQUERIES', false);
Config::define('WP_DEBUG', false);
Config::define('WP_DEBUG_DISPLAY', false);
Config::define('WP_DEBUG_LOG', false);
Config::define('WP_DISABLE_FATAL_ERROR_HANDLER', false);
Config::define('SCRIPT_DEBUG', false);
Config::define('DISALLOW_INDEXING', false);

ini_set('display_errors', '0');

// Disable plugin and theme updates and installation from the admin
Config::define('DISALLOW_FILE_MODS', true);
