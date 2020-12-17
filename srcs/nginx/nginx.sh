#!/bin/bash
apk add vim 
apk add nginx
apk add openrc
apk add top
rc-status
touch /run/openrc/softlevel
