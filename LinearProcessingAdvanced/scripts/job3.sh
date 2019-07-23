#!/bin/sh
#$ -q all.q
#$ -N LinearProcessing-job3
#$ -r y
#$ -pe smp 1
#$ -j y
#$ -cwd


sleep 30

echo "In: Job 3"
MACHINEID=`uname -a | md5sum | cut -f 1 -d' '`
echo "JOB3,$MACHINEID" > job3.data

