#!/bin/sh
#$ -q all.q
#$ -N LinearProcessingAdvanced-summary
#$ -r y
#$ -pe smp 1
#$ -j y
#$ -cwd

cat *.data > summary.data
