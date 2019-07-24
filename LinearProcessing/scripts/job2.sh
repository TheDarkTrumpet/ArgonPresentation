#!/bin/sh
#$ -q all.q
#$ -N LinearProcessing-job2
#$ -pe smp 1
#$ -j y
#$ -cwd

STARTTIME=`date +"%D %T"`
sleep 200
ENDTIME=`date +"%D %T"`

echo "In: Job 2"
echo "Start Time: $STARTTIME"
echo "Start Time: $STARTTIME" > job2.log
export >> job2.log
echo "End Time: $ENDTIME"
echo "End Time: $ENDTIME" >> job2.log
