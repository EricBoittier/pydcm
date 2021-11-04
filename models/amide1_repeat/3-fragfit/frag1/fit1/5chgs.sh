#!/bin/bash

#SBATCH --job-name=frag1fit1q5
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --partition=infinite

WORKDIR=/home/boittier/pydcm/models/amide1_repeat/3-fragfit/frag1/fit1
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/amide1_repeat/ref/
MTPFILE=/home/boittier/pydcm/models/amide1_repeat/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1_repeat/ref/1_1_new-0.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1_repeat/ref/1_1_new-0.chk.d.cube
NTRY=4
ATOMLIST="1,3,11,5"
MINCHG=5
MAXCHG=5
NAME="5chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                