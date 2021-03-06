#!/bin/bash
# Adding php wrapper
user="$1"
domain="$2"
ip="$3"
ipv6="$4"
home_dir="$5"
docroot="$6"

wrapper_script='#!/usr/bin/php-cgi -cphp5-cgi.ini'
wrapper_file="$home_dir/$user/web/$domain/cgi-bin/php"

echo "$wrapper_script" > $wrapper_file
chown $user:$user $wrapper_file
chmod -f 751 $wrapper_file

exit 0
