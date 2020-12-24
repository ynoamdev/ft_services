#!/bin/bash
apk add vim 
apk add openrc
apk add tmux
sh download-mysql.sh
rc-status
touch /run/openrc/softlevel
