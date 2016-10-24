#!/bin/bash


#PBS -N j_smrt
#PBS -q batch
#PBS -l nodes=1:ppn=12
#PBS -l walltime=480:00:00
#PBS -l mem=96gb
#PBS -j oe




cd $PBS_O_WORKDIR
module load smrtanalysis/2.3.0
python /usr/local/apps/smrtanalysis/latest/current/analysis/bin/smrtpipe.py --params=params.xml xml:input.xml

