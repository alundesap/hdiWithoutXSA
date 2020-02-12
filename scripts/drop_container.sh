#!/bin/sh
echo "Drop HDI Container"
hdbsql -d HXE -u HDI_ADMIN -n hxesp4.local.com:30015 -i 00 -p $1 -A -m -j -V $1,$2 -I drop_container.sql
