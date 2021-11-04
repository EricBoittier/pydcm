#!/bin/bash

#SBATCH --job-name=frag1fit2q12
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --partition=infinite

WORKDIR=/home/boittier/pydcm/models/amide1/3-fragfit/frag1/fit2
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/amide1/ref/
MTPFILE=/home/boittier/pydcm/models/amide1/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1/ref/amide1.pdb.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1/ref/amide1.pdb.chk.d.cube
NTRY=4
ATOMLIST="1,3,11,5"
MINCHG=12
MAXCHG=12
NAME="12chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                