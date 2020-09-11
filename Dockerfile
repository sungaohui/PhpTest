FROM yiisoftware/yii2-php:7.3-fpm

RUN apt-get update && apt-get -y install nginx cron && apt-get clean
RUN rm /etc/nginx/sites-enabled/default
COPY basic.shiyou.com.conf /etc/nginx/conf.d/

WORKDIR /app/basic
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime &&\
    echo 'Asia/Shanghai' >/etc/timezone

COPY . .
RUN composer install && composer clear-cache

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["nginx"]
