#!/bin/bash
#

user="dbuser"
password="123456"
host="192.168.184.132"
db_name="$1"

SQL="$2"

mysql -u"$user" -p"$password" -h"$host" -D"$1" -B -e "$SQL"
