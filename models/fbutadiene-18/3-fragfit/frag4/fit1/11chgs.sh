#!/bin/bash

    #SBATCH --job-name=frag4fit1q11
    #SBATCH --nodes=1
    #SBATCH --ntasks=4
    #SBATCH --partition=infinite

    WORKDIR=/home/boittier/pydcm/models/fbutadiene-18/3-fragfit/frag4/fit1
    BINDIR=/home/boittier/pydcm/bin/
    REFDIR=/home/boittier/pydcm/models/fbutadiene-18/ref/
    MTPFILE=/home/boittier/pydcm/models/fbutadiene-18/1-mtpfit/fitted-mtpl.dat
    PCUBE=/home/boittier/pydcm/models/fbutadiene-18/ref/B.p.cube
    DCUBE=/home/boittier/pydcm/models/fbutadiene-18/ref/B.d.cube
    NTRY=4
    ATOMLIST="5,1,6"
    MINCHG=11
    MAXCHG=11
    NAME="11chgs"

    cd $WORKDIR

    srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
            