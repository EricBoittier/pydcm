#!/bin/bash

#SBATCH --job-name=frag1fit1q8
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=long

WORKDIR=/home/boittier/pydcm/models/scn/3-fragfit/frag1/fit1
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/scn/ref/
MTPFILE=/home/boittier/pydcm/models/scn/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/scn/ref/scn_test.chk.p.cube
DCUBE=/home/boittier/pydcm/models/scn/ref/scn_test.chk.d.cube
NTRY=1
ATOMLIST="1,2,3,4,5,6,7"
MINCHG=8
MAXCHG=8
NAME="8chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 2 -ntry $NTRY -v > $NAME".out"
                