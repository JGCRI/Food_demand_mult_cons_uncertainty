#!/bin/zsh
#SBATCH -A GCIMS
#SBATCH -t 6:00:00
#SBATCH -N 1
#SBATCH -p short,slurm
 
job=$SLURM_JOB_NAME
 
 
echo 'Library config:'
ldd ./gcam.exe
 
date
time ./gcam.exe -C configuration_$job.xml -Llog_conf.xml
date