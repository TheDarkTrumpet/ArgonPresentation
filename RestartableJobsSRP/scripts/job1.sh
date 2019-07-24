#!/bin/sh
#$ -q all.q
#$ -N RestartableJobsSRP-job1
#$ -pe smp 30
#$ -j y
#$ -cwd

source settings.cfg

sleep 3600

if [ ! -d "$TEMPLOCATION" ]; then
    mkdir $TEMPLOCATION
fi

cat `uname -a` > $TEMPLOCATION/job1.txt
