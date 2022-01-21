#!/bin/bash

cd $(dirname "$0")
this_dir=$(pwd)

log="hc.log"
date > $log
pwd >> $log
echo $PATH >> $log

export FLASK_APP=hcserver.py
nohup flask run -h 0.0.0.0 -p 8000 > hc.log 2>&1 &

