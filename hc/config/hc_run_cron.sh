#!/bin/bash

set -x

cd $(dirname "$0")
this_dir=$(pwd)

log="cron.log"
date > $log
exec >> $log

pwd
echo $PATH

#echo "\n\n" >> $log

PATH=$PATH:/usr/bin/python:/home/ec2-user/.local/bin
export PATH=$PATH
echo $PATH

export FLASK_APP=hcserver.py
nohup flask run -h 0.0.0.0 -p 8080 > hc.log 2>&1 &

