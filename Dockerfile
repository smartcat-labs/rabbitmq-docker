FROM rabbitmq:3.7

COPY docker-entrypoint-ext.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint-ext.sh"]
EXPOSE 4369 5671 5672 25672
CMD ["rabbitmq-server"]
