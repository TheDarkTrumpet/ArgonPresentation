#!/bin/sh
#$ -q all.q
#$ -N LinearProcessingAdvanced-job2
#$ -r y
#$ -pe smp 1
#$ -j y
#$ -cwd


sleep 30

echo "In: Job 2"
MACHINEID=`uname -a | md5sum | cut -f 1 -d' '`
echo "JOB2,$MACHINEID" > job2.data
