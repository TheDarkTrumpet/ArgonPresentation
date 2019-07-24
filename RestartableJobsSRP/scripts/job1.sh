#!/bin/sh
#$ -q all.q
#$ -N RestartableJobsSRP-job1
#$ -pe smp 30
#$ -j y
#$ -cwd
#$ -ckpt user

source settings.cfg

if [ ! -d "$TEMPLOCATION" ]; then
    mkdir $TEMPLOCATION
fi

if [ $RESTARTED = 1 ]; then
    cat "Restarted..." >> $TEMPLOCATION/job1.txt
fi

sleep 3600

echo `uname -a` >> $TEMPLOCATION/job1.txt
