#!/bin/bash

if [ "$1" = "crontab" ]; then
    /etc/init.d/cron restart && \
    (echo '*/1 * * * * echo "test crond is running $(date)" >> /tmp/crond.log 2>&1'; crontab -l)| crontab && \
    sleep 120 && tail -f /tmp/crond.log
elif [ "$1" = "nginx" ]; then
    php-fpm -D && nginx -g 'daemon off;'
fi

exec "$@"
