#!/bin/sh

QUEUETIME=`date +"%D %T"`
echo "Starting Queue: $QUEUETIME" > runme.log
qsub scripts/job1.sh
ENDQUEUETIME=`date +"%D %T"`
echo "Finished Queue: $ENDQUEUETIME" >> runme.log


