#!/bin/bash

#SBATCH -p physics #name of queue
#SBATCH -J Dam_Break #job name
#SBATCH -o job.%j.out # Name of stddout output fule (%j for jobid)
#SBATCH -N 4 #Total number of nodes requested
#SBATCH -n 48 # Total number of cores requested
#SBATCH -t 00:10:00 # run time (hh:mm:ss) -1.5 hours

#Launch MPI-based executable

mpirun -np 48 ./a.out

