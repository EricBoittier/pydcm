#!/bin/bash

#SBATCH --job-name=frag1fit1q6
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=long

WORKDIR=/home/boittier/pydcm/models/methylcyanide/3-fragfit/frag1/fit1
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/methylcyanide/ref/
MTPFILE=/home/boittier/pydcm/models/methylcyanide/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/methylcyanide/ref/methylcyanide.chk.p.cube
DCUBE=/home/boittier/pydcm/models/methylcyanide/ref/methylcyanide.chk.d.cube
NTRY=1
ATOMLIST="1,2,3,4,5,6"
MINCHG=6
MAXCHG=6
NAME="6chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 2 -ntry $NTRY -v > $NAME".out"
                