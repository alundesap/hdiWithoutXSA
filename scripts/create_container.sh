#!/bin/sh
echo "Create HDI Container"
hdbsql -d HXE -u HDI_ADMIN -n 192.168.132.134:30015 -i 00 -p $1 -A -m -j -V $1,$2 -I create_container.sql
