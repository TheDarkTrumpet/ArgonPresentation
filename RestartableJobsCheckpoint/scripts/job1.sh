#!/bin/sh
#$ -q all.q
#$ -N RestartableJobsSRP-job1
#$ -pe smp 30
#$ -j y
#$ -cwd
#$ -ckpt user

RUNTIME=`date +"%D %T"`
if [ $RESTARTED = 1 ]
then
    cat "Restarted... at $RUNTIME" >> job1.txt
    # Other setup code here.
fi

if [ ! -f "operation1.txt" ]
then
    sleep 3600
    RUNTIME=`date +"%D %T"`
    echo "Operation 1 complete at $RUNTIME" > operation1.txt
fi

if [ ! -f "operation2.txt" ]
then
    sleep 14400
    RUNTIME=`date +"%D %T"`
    echo "Operation 2 complete at $RUNTIME" > operation2.txt
fi

if [ ! -f "operation3.txt" ]
then
    sleep 3600
    RUNTIME=`date +"%D %T"`
    echo "Operation 3 complete at $RUNTIME" > operation3.txt
fi


