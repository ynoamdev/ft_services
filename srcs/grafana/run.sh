#!/bin/sh
telegraf --config telegraf.conf &
grafana-server -homepath grafana