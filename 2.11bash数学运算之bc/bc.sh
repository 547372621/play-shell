#!/bin/bash
#

read -p "num1: " num1
read -p "num2: " num2

num3=`echo "scale=4;$num1/$num2" | bc`


echo "$num1 / $num2 = $num3"
