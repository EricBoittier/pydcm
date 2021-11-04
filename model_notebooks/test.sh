#!/bin/bash
#SBATCH --job-name=amide
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --output=/home/boittier/test.out
hostname

source ~/anaconda3/etc/profile.d/conda.sh

conda activate my-rdkit-env

python test.py
