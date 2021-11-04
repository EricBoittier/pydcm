#!/bin/bash

    #SBATCH --job-name=frag4fit1q9
    #SBATCH --nodes=1
    #SBATCH --ntasks=4
    #SBATCH --partition=infinite

    WORKDIR=/home/boittier/pydcm/models/fbutadiene-0/3-fragfit/frag4/fit1
    BINDIR=/home/boittier/pydcm/bin/
    REFDIR=/home/boittier/pydcm/models/fbutadiene-0/ref/
    MTPFILE=/home/boittier/pydcm/models/fbutadiene-0/1-mtpfit/fitted-mtpl.dat
    PCUBE=/home/boittier/pydcm/models/fbutadiene-0/ref/B.p.cube
    DCUBE=/home/boittier/pydcm/models/fbutadiene-0/ref/B.d.cube
    NTRY=4
    ATOMLIST="5,1,6"
    MINCHG=9
    MAXCHG=9
    NAME="9chgs"

    cd $WORKDIR

    srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
            