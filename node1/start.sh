#!/bin/bash
#TODO superviser
#nohup ./bin/xchain > ./logs/xchain.log 2>&1 &
#nohup ./bin/xchain > ./logs/xchain_stdout.log 2>&1 &
nohup ./bin/xchain > ./logs/xchain_stdout.log 2>&1 &
nohup ./bin/xchain_gw > ./logs/xchain_gw_stdout.log 2>&1 &
echo "starting...."
