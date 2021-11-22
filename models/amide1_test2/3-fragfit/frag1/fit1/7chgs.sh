#!/bin/bash

#SBATCH --job-name=frag1fit1q7
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --partition=infinite

WORKDIR=/home/boittier/pydcm/models/amide1_test2/3-fragfit/frag1/fit1
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/amide1_test2/ref/
MTPFILE=/home/boittier/pydcm/models/amide1_test2/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1_test2/ref/1_1_new-0.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1_test2/ref/1_1_new-0.chk.d.cube
NTRY=4
ATOMLIST="1,3,11,5,2,9"
MINCHG=7
MAXCHG=7
NAME="7chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                