#!/bin/sh

SCRIPTDATE=`date +"%y-%m-%d"`
TEMPLATELOCATION="\/nfsscratch\/restartable-$SCRIPTDATE"

sed -i "s/<TEMPLATELOCATION>/$TEMPLATELOCATION/" settings.cfg

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job1): $QUEUETIME"
job1_jid=$(qsub -terse scripts/job1.sh)

echo "Starting Queue (Job2)"
job2_jid=$(qsub -job1_jid $hold_jid -terse scripts/job2.sh)

echo "Job IDs: Job1 - $job1_jid, Job2 - $job2_jid"
