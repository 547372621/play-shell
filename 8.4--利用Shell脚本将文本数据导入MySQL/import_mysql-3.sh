#!/bin/bash
#


user="dbuser"
password="123456"
host="192.168.184.132"

mysql_conn="mysql -u'$user' -p'$password' -h'$host'"

IFS="|"

cat data-2.txt | while read id name birth sex
do
	mysql -u"$user" -p"$password" -h"$host" -e "INSERT INTO school.student2 values('$id','$name','$birth','$sex')"
done
