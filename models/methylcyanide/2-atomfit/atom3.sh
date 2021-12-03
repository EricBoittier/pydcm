#!/bin/bash

#SBATCH --job-name=atom3
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=short

WORKDIR=/home/boittier/pydcm/models/methylcyanide/2-atomfit/
BINDIR=/home/boittier/pydcm/bin/
MTPFILE=/home/boittier/pydcm/models/methylcyanide/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/methylcyanide/ref/methylcyanide.chk.p.cube
DCUBE=/home/boittier/pydcm/models/methylcyanide/ref/methylcyanide.chk.d.cube
NTRY=1
ATOMINDEX=3
MAXCHG=2

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom3-fit.out
                