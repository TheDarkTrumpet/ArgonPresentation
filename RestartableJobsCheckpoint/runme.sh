#!/bin/sh

SCRIPTDATE=`date +"%y-%m-%d"`
TEMPLATELOCATION="\/nfsscratch\/restartable-$SCRIPTDATE"

sed -i "s/<TEMPLATELOCATION>/$TEMPLATELOCATION/" settings.cfg

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job1): $QUEUETIME"
job1_jid=$(qsub -terse scripts/job1.sh)
echo "Job ID: $job1_jid"
