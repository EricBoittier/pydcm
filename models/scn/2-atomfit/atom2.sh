#!/bin/bash

#SBATCH --job-name=atom2
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=short

WORKDIR=/home/boittier/pydcm/models/scn/2-atomfit/
BINDIR=/home/boittier/pydcm/bin/
MTPFILE=/home/boittier/pydcm/models/scn/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/scn/ref/scn_test.chk.p.cube
DCUBE=/home/boittier/pydcm/models/scn/ref/scn_test.chk.d.cube
NTRY=1
ATOMINDEX=2
MAXCHG=2

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom2-fit.out
                