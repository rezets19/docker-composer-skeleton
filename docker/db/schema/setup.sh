#!/bin/bash

while ! mysqladmin ping --silent; do
    sleep 1
done

#TODO: Secure root user!

mysql < /schema/a_schema.sql
mysql < /schema/b_tables.sql
