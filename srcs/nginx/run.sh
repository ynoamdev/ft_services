#!/bin/sh
service nginx start &
telegraf --config telegraf.conf