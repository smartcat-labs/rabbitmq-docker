# RabbitMQ Docker

This is a RabbitMQ Docker image based on DockerHub [official RabbitMQ image](https://hub.docker.com/_/rabbitmq/) that has additional support for externally provided RabbitMQ config files via environment variables.

It supports the following RabbitMQ config files:

- RabbitMQ configuration
- RabbitMQ enabled plugins configuration
- RabbitMQ Management plugin configuration

All other configuration mechanisms from the original Docker image are retained.

## RabbitMQ configuration

Environment variable `RABBITMQ_CONFIGURATION`, if defined, is used to override `/etc/rabbitmq/rabbitmq.config` file in Docker container.

## RabbitMQ enabled plugins configuration

Environment variable `RABBITMQ_PLUGINS_CONFIGURAION`, if defined, is used to override `/etc/rabbitmq/enabled_plugins` file in Docker container.

## RabbitMQ Management plugin configuration

Environment variable `RABBITMQ_MANAGEMENT_CONFIGURAION`, if defined, is used to override `/etc/rabbitmq/rabbitmq.json` file in Docker container.
