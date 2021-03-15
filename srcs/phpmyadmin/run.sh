#!/bin/sh
service php-fpm7 start
service nginx start &
telegraf --config telegraf.conf