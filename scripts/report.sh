#!/bin/sh

cd `dirname $0`

mkdir -p ../reports

# TODO: -m でルーティングに合わせた正規表現を設定する
sudo alp json \
  --sort sum -r \
  -m "/api/condition/\w+" \
  -o count,method,uri,min,avg,max,sum \
  < /var/log/nginx/access.log \
  > ../reports/alp.log

sudo pt-query-digest /var/log/mysql/mysql-slow.log \
  > ../reports/pt-query-digest.log
  