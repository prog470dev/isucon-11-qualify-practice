#!/bin/sh

cd `dirname $0`

# see https://redis.io/docs/getting-started/installation/install-redis-on-linux/
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
sudo apt-get update
sudo apt-get install redis

# 設定ファイル
# /etc/redis/redis.conf
# systemd への登録
# /lib/systemd/system/redis-server.service