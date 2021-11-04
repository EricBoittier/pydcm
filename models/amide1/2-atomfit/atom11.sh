#!/bin/bash

#SBATCH --job-name=atom11
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --partition=vshort

WORKDIR=/home/boittier/pydcm/models/amide1/2-atomfit/
BINDIR=/home/boittier/pydcm/bin/
MTPFILE=/home/boittier/pydcm/models/amide1/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1/ref/amide1.pdb.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1/ref/amide1.pdb.chk.d.cube
NTRY=4
ATOMINDEX=11
MAXCHG=4

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom11-fit.out
                