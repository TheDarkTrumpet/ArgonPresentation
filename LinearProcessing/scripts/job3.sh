#!/bin/sh
#$ -q all.q
#$ -N LinearProcessing-job3
#$ -r y
#$ -pe smp 1
#$ -j y
#$ -cwd

STARTTIME=`date +"%D %T"`
sleep 500
ENDTIME=`date +"%D %T"`

echo "Start Time: $STARTTIME"
echo "Start Time: $STARTTIME" > job3.log
export >> job3.log
echo "End Time: $ENDTIME"
echo "End Time: $ENDTIME" >> job3.log
