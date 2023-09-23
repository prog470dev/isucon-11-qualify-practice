#!/bin/sh

cd `dirname $0`

# nginx
sudo cp ../conf/nginx/sites-enabled/* /etc/nginx/sites-enabled/
sudo cp ../conf/nginx/nginx.conf /etc/nginx/nginx.conf
sudo nginx -t
# sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d%H%M%S`
sudo rm /var/log/nginx/access.log
sudo systemctl restart nginx

# mysql
sudo cp ../conf/mysql/conf.d/*.cnf /etc/mysql/conf.d/
# sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.`date +%Y%m%d%H%M%S`
sudo rm /var/log/mysql/mysql-slow.log
sudo systemctl restart mysql

# application
sudo systemctl daemon-reload
sudo systemctl restart isucondition.go.service
