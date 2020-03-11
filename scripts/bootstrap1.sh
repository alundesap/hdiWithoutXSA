#!/bin/sh
echo "Boostrap HDI Infrastructure"
hdbsql -d HXE -u SYSTEM -n hxe.local.com:30015 -i 00 -p $1 -A -m -j -V $1 -I bootstrap1.sql
