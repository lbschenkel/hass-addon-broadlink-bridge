#!/usr/bin/env bashio
CONFIG_FILE="$(bashio::config 'config_file')"
broadlink-bridge "${CONFIG_FILE}"
