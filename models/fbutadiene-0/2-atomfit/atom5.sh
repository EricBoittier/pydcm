#!/bin/bash

    #SBATCH --job-name=atom5
    #SBATCH --nodes=1
    #SBATCH --ntasks=4
    #SBATCH --partition=short

    WORKDIR=/home/boittier/pydcm/models/fbutadiene-0/2-atomfit/
    BINDIR=/home/boittier/pydcm/bin/
    MTPFILE=/home/boittier/pydcm/models/fbutadiene-0/1-mtpfit/fitted-mtpl.dat
    PCUBE=/home/boittier/pydcm/models/fbutadiene-0/ref/B.p.cube
    DCUBE=/home/boittier/pydcm/models/fbutadiene-0/ref/B.d.cube
    NTRY=4
    ATOMINDEX=5
    MAXCHG=4

    cd $WORKDIR

    srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom5-fit.out
            