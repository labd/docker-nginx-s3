#!/bin/sh
set -e
echo "Setting S3 bucket url to $S3_BUCKET_URL"

sed -i 's/$S3_BUCKET_URL/'"$S3_BUCKET_URL"'/g' /etc/nginx/conf.d/s3.conf

exec nginx -g "daemon off;"
