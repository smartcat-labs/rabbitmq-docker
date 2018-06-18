#!/bin/bash
set -eu

var="RABBITMQ_CONFIGURATION"
val="${!var:-}"
if [ "$val" ]; then
	echo "$val" > /etc/rabbitmq/rabbitmq.config
fi

var="RABBITMQ_PLUGINS_CONFIGURATION"
val="${!var:-}"
if [ "$val" ]; then
	echo "$val" > /etc/rabbitmq/enabled_plugins
fi

var="RABBITMQ_MANAGEMENT_CONFIGURATION"
val="${!var:-}"
if [ "$val" ]; then
	echo "$val" > /etc/rabbitmq/rabbitmq.json
fi

exec /usr/local/bin/docker-entrypoint.sh "$@"
