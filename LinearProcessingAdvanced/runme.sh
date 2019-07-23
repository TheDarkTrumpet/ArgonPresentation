#!/bin/sh

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job1): $QUEUETIME" > runme.log
JOB1=$(qsub -terse scripts/job1.sh)

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job2): $QUEUETIME" >> runme.log
JOB2=$(qsub -terse scripts/job2.sh)

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job3): $QUEUETIME" >> runme.log
JOB3=$(qsub -hold_jid $JOB1 -hold_jid $JOB2 scripts/job3.sh)

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Summary): $QUEUETIME" >> runme.log
qsub -hold_jid $JOB3 scripts/job3.sh

