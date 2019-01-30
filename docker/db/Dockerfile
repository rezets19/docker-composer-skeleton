FROM mysql:5.7.15

MAINTAINER me

ENV MYSQL_DATABASE=test_db \
    MYSQL_ROOT_PASSWORD=123456

ADD schema.sql /docker-entrypoint-initdb.d

EXPOSE 3306