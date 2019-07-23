#!/bin/sh

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job1): $QUEUETIME" > runme.log
hold_jid=$(qsub -terse scripts/job1.sh)

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job2): $ENDQUEUETIME" >> runme.log
hold_jid=$(qsub -hold_jid $hold_jid -terse scripts/job2.sh)

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job3): $ENDQUEUETIME" >> runme.log
qsub -hold_jid $hold_jid scripts/job3.sh
