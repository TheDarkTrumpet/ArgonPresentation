#!/bin/sh
#$ -q all.q
#$ -N LinearProcessing-job1
#$ -r y
#$ -pe smp 1
#$ -j y
#$ -cwd

STARTTIME=`date +"%D %T"`
sleep 100
ENDTIME=`date +"%D %T"`

echo "In: Job 1"
echo "Start Time: $STARTTIME"
echo "Start Time: $STARTTIME" > job1.log
export >> job1.log
echo "End Time: $ENDTIME"
echo "End Time: $ENDTIME" >> job1.log
