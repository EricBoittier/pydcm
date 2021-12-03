#!/bin/bash

#SBATCH --job-name=atom2
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --partition=short

WORKDIR=/home/boittier/pydcm/models/co2/2-atomfit/
BINDIR=/home/boittier/pydcm/bin/
MTPFILE=/home/boittier/pydcm/models/co2/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/co2/ref/co2.chk.p.cube
DCUBE=/home/boittier/pydcm/models/co2/ref/co2.chk.d.cube
NTRY=1
ATOMINDEX=2
MAXCHG=2

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom2-fit.out
                