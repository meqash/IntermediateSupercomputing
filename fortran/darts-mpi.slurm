#!/bin/bash -l

## SLURM job-script to run the mpi version of darts program.
## Use this script to test the mpi-collectives version by changing the 
## filename from darts-mpi to darts-collective

#SBATCH --job-name=darts-mpi
#SBATCH --account=courses01
#SBATCH --reservation=courseq
#SBATCH --nodes=1
#SBATCH --time=00:05:00
#SBATCH --export=NONE

module swap PrgEnv-cray PrgEnv-intel 

aprun -n 24 -N 24 darts-mpi
