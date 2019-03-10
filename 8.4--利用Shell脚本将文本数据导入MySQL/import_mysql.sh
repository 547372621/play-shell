#!/bin/bash
#


user="dbuser"
password="123456"
host="192.168.184.132"

mysql_conn="mysql -u"$user" -p"$password" -h"$host""

cat data.txt | while read id name birth sex
do
	if [ $id -gt 1014 ];then
		$mysql_conn -e "INSERT INTO school.student1 values('$id','$name','$birth','$sex')"
	fi
done
