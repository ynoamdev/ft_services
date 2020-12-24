#!/bin/bash
apk add vim 
apk add openrc
apk add tmux
apk add mysql mysql-client php-mysql php-mysqli
rc-status
touch /run/openrc/softlevel
