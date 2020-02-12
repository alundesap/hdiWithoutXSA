#!/bin/sh
echo "Boostrap HDI Infrastructure"
hdbsql -d SYSTEM -u SYSTEM -n hxesp4.local.com:30015 -i 00 -p $1 -A -m -j -V $1 -I bootstrap.sql
