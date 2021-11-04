#!/bin/bash

#SBATCH --job-name=frag4fit1q6
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --partition=infinite

WORKDIR=/home/boittier/pydcm/models/amide1_repeat/3-fragfit/frag4/fit1
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/amide1_repeat/ref/
MTPFILE=/home/boittier/pydcm/models/amide1_repeat/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1_repeat/ref/1_1_new-0.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1_repeat/ref/1_1_new-0.chk.d.cube
NTRY=4
ATOMLIST="10,6,12,7"
MINCHG=6
MAXCHG=6
NAME="6chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                