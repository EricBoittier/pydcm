#!/bin/bash

        #SBATCH --job-name=atom6
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=vshort

        WORKDIR=/home/boittier/pydcm/models/fbutadiene-13/2-atomfit/
        BINDIR=/home/boittier/pydcm/bin/
        MTPFILE=/home/boittier/pydcm/models/fbutadiene-13/1-mtpfit/fitted-mtpl.dat
        PCUBE=/home/boittier/pydcm/models/fbutadiene-13/ref/B.p.cube
        DCUBE=/home/boittier/pydcm/models/fbutadiene-13/ref/B.d.cube
        NTRY=4
        ATOMINDEX=6
        MAXCHG=4

        cd $WORKDIR

        srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -nacmin 1 -nacmax $MAXCHG -atom $ATOMINDEX -ntry $NTRY -onlymultipoles -v > atom6-fit.out
                