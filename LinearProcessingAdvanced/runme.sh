#!/bin/sh

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job1): $QUEUETIME"
JOB1=$(qsub -terse scripts/job1.sh)
echo "==> JOB1: $JOB1"

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job2): $QUEUETIME"
JOB2=$(qsub -terse scripts/job2.sh)
echo "==> JOB2: $JOB2"

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Job3): $QUEUETIME"
JOB3=$(qsub -terse -hold_jid $JOB1 -hold_jid $JOB2 scripts/job3.sh)
echo "==> JOB3: $JOB3"

QUEUETIME=`date +"%D %T"`
echo "Starting Queue (Summary): $QUEUETIME"
qsub -hold_jid $JOB3 scripts/summary.sh

echo "Finished queue"
