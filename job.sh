#!/bin/bash
#SBATCH -J integral_pi              # Job name
#SBATCH -p fast                     # Job partition
#SBATCH -n 1                        # Number of processes
#SBATCH -t 01:30:00                 # Run time (hh:mm:ss)
#SBATCH --cpus-per-task=40          # Number of CPUs per process
#SBATCH --output=%x.%j.out          # Name of stdout output file - %j expands to jobId and %x to jobName
#SBATCH --error=%x.%j.err           # Name of stderr output file

echo "*** SEQUENTIAL ***"
srun singularity run container.sif laplace_seq_iteracoes 1000

echo "*** PTHREAD ***"
echo "Number of threads = 1"
srun singularity run container.sif laplace_pth 1000 1
echo "Number of threads = 2"
srun singularity run container.sif laplace_pth 1000 2
echo "Number of threads = 5"
srun singularity run container.sif laplace_pth 1000 5
echo "Number of threads = 10"
srun singularity run container.sif laplace_pth 1000 10
echo "Number of threads = 20"
srun singularity run container.sif laplace_pth 1000 20
echo "Number of threads = 40"
srun singularity run container.sif laplace_pth 1000 40