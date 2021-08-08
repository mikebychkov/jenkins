#!/bin/bash

counter=0

while read line;
do
((counter++))
name=$(echo $line | cut -f1 -d,)
lastname=$(echo $line | cut -f2 -d,)
age=$((( RANDOM % 89 + 1 )))
mysql -u root -p1234 people -e "insert into register values ($counter, '$name', '$lastname', $age);"
echo "$counter $name $lastname $age y.o."
done
