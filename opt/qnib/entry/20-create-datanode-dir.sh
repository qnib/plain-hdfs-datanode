#!/bin/bash

echo ">> Bootstrap datanode"
if [ ! -d /data/hadoop/data/logs ];then
    mkdir -p /data/hadoop/data/logs/
    chown -R hadoop: /data/hadoop/data/logs/
    ln -s /data/hadoop/data/logs /opt/hadoop/
else
    chown -R hadoop: /opt/hadoop/logs
fi

if [ ! -d /data/hadoop/data/hdfs/datanode ];then
    mkdir -p /data/hadoop/data/hdfs/datanode
    chown -R hadoop: /data/hadoop/data/hdfs/datanode
else
    chown -R hadoop: /data/hadoop/data/hdfs/datanode
fi

if [ ! -d /data/hadoop/tmp/dfs/data ];then
    mkdir -p /data/hadoop/tmp/dfs/data
    chown -R hadoop: /data/hadoop/tmp/dfs/data/
fi
