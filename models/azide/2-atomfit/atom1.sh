#!/bin/bash

#SBATCH --job-name=atom1
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=short

WORKDIR=/home/boittier/pydcm/models/azide/2-atomfit/
BINDIR=/home/boittier/pydcm/bin/
MTPFILE=/home/boittier/pydcm/models/azide/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/azide/ref/azide.chk.p.cube
DCUBE=/home/boittier/pydcm/models/azide/ref/azide.chk.d.cube
NTRY=1
ATOMINDEX=1
MAXCHG=2

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom1-fit.out
                