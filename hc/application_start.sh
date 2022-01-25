#!/bin/bash

set -e

logdir="/home/flex/deploylogs"
if [ ! -d $logdir ]
then
  mkdir -p $logdir
fi

ts=$(date +"%Y%m%d%H%M%S")
log_file="${logdir}/after_install_${ts}.log"

# Redirect all stdout and stderr to the screen and log file.
touch $log_file
exec &> >(tee $log_file)

echo "$0"
date +'%Y-%m-%d %T %Z: ENV -------------------------------------------------'
whoami

# NOTE: Codedeploy does NOT source the .bashrc or .bash_profile when executing
# this script as the flex user during a deployment so source the .bashrc here.
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

echo "After sourcing ~/.bashrc"
echo ""
env

date +'%Y-%m-%d %T %Z: BEGIN INSTALL -------------------------------------------------'
cfg=$HOME/codedeploy_config
ls -al $cfg

cd $HOME
pwd
./hc_run.sh

exit 0

