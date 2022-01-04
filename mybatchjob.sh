#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --partition=sched_mit_sloan_batch
#SBATCH --time=0-00:10
#SBATCH -o /home/wesg/clusterrepo/myoutputfile.out
#SBATCH -e /home/wesg/clusterrepo/myerrorfile.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=wesg@mit.edu

module load julia/1.5.2

julia myscript.jl
