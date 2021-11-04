#!/bin/bash

    #SBATCH --job-name=atom10
    #SBATCH --nodes=1
    #SBATCH --ntasks=4
    #SBATCH --partition=vshort

    WORKDIR=/home/boittier/pydcm/models/taylan1/2-atomfit/
    BINDIR=/home/boittier/pydcm/bin/
    MTPFILE=/home/boittier/pydcm/models/taylan1/1-mtpfit/fitted-mtpl.dat
    PCUBE=/home/boittier/pydcm/models/taylan1/ref/cis_dbb_pot.cube
    DCUBE=/home/boittier/pydcm/models/taylan1/ref/cis_dbb_dens.cube
    NTRY=4
    ATOMINDEX=10
    MAXCHG=4

    cd $WORKDIR

    srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom10-fit.out
            