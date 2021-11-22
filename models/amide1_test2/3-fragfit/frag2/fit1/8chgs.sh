#!/bin/bash

#SBATCH --job-name=frag2fit1q8
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --partition=infinite

WORKDIR=/home/boittier/pydcm/models/amide1_test2/3-fragfit/frag2/fit1
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/amide1_test2/ref/
MTPFILE=/home/boittier/pydcm/models/amide1_test2/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1_test2/ref/1_1_new-0.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1_test2/ref/1_1_new-0.chk.d.cube
NTRY=4
ATOMLIST="8,4,10,6,12,7"
MINCHG=8
MAXCHG=8
NAME="8chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                