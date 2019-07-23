#!/bin/sh
#$ -q all.q
#$ -n BasicSubmission-job1
#$ -r y
#$ -pe smp 1

STARTTIME=`date +"%D %T`
sleep 300
ENDTIME=`date +"%D %T`

echo "Start Time: $STARTTIME"
echo "Start Time: $STARTTIME" > job1.log
export >> job1.log
echo "End Time: $ENDTIME"
echo "End Time: $ENDTIME" >> job1.log
