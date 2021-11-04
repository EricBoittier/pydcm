#!/bin/bash

#SBATCH --job-name=atom5
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --partition=vshort

WORKDIR=/home/boittier/pydcm/models/amide1_repeat/2-atomfit/
BINDIR=/home/boittier/pydcm/bin/
MTPFILE=/home/boittier/pydcm/models/amide1_repeat/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1_repeat/ref/1_1_new-0.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1_repeat/ref/1_1_new-0.chk.d.cube
NTRY=4
ATOMINDEX=5
MAXCHG=4

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom5-fit.out
                