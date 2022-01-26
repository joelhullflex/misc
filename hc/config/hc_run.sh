#!/bin/bash

cd $(dirname "$0")
this_dir=$(pwd)

log="hc.log"
date > $log
pwd >> $log
echo $PATH >> $log

export FLASK_APP=hcserver.py
nohup /home/flex/.local/bin/flask run -h 0.0.0.0 -p $1 >> hc.log 2>&1 &

