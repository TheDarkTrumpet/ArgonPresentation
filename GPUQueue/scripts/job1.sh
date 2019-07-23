#!/bin/sh
#$ -q all.q
#$ -N GPUQueue-job1
#$ -r y
#$ -pe smp 1
#$ -j y
#$ -cwd
#$ -l ngpus=1

../bin/clinfo/clinfo > job1.log
