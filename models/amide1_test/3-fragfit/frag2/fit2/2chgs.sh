#!/bin/bash

#SBATCH --job-name=frag2fit2q2
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --partition=infinite

WORKDIR=/home/boittier/pydcm/models/amide1_test/3-fragfit/frag2/fit2
BINDIR=/home/boittier/pydcm/bin/
REFDIR=/home/boittier/pydcm/models/amide1_test/ref/
MTPFILE=/home/boittier/pydcm/models/amide1_test/1-mtpfit/fitted-mtpl.dat
PCUBE=/home/boittier/pydcm/models/amide1_test/ref/1_1_new-0.chk.p.cube
DCUBE=/home/boittier/pydcm/models/amide1_test/ref/1_1_new-0.chk.d.cube
NTRY=4
ATOMLIST="2,9"
MINCHG=2
MAXCHG=2
NAME="2chgs"

cd $WORKDIR

srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                