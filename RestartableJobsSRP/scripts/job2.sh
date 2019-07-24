#!/bin/sh
#$ -q all.q
#$ -N RestartableJobsSRP-job2
#$ -pe smp 1
#$ -j y
#$ -cwd

source settings.cfg

cp $TEMPLOCATION/job1.txt .
rm -Rf $TEMPLOCATION
