#!/bin/sh
influxd  &
influx -execute "create user ynoam with password 'ynoam' with all privileges" 
telegraf --config telegraf.conf 