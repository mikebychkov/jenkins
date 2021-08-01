#!/bin/bash

DB_HOST=$1
DB_NAME=$2
DB_PASS=$3
DATE=$(date +%Y-%m-%dT%H-%M-%S)
AWS_ID=$4
AWS_SECRET=$5

mysqldump -h $DB_HOST -u root -p$DB_PASS $DB_NAME > /tmp/db-$DATE.dump && \
	export AWS_ACCESS_KEY_ID=$AWS_ID && \
	export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
	aws s3 cp /tmp/db-$DATE.dump s3://mike-mysql-bucket/db-$DATE.dump
