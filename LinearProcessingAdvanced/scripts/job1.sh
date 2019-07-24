#!/bin/sh
#$ -q all.q
#$ -N LinearProcessingAdvanced-job1
#$ -pe smp 1
#$ -j y
#$ -cwd

sleep 30

echo "In: Job 1"
MACHINEID=`uname -a | md5sum | cut -f 1 -d' '`
echo "JOB1,$MACHINEID" > job1.data
