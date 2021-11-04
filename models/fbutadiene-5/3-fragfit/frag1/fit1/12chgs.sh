#!/bin/bash

        #SBATCH --job-name=frag1fit1q12
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite

        WORKDIR=/home/boittier/pydcm/models/fbutadiene-5/3-fragfit/frag1/fit1
        BINDIR=/home/boittier/pydcm/bin/
        REFDIR=/home/boittier/pydcm/models/fbutadiene-5/ref/
        MTPFILE=/home/boittier/pydcm/models/fbutadiene-5/1-mtpfit/fitted-mtpl.dat
        PCUBE=/home/boittier/pydcm/models/fbutadiene-5/ref/B.p.cube
        DCUBE=/home/boittier/pydcm/models/fbutadiene-5/ref/B.d.cube
        NTRY=4
        ATOMLIST="9,10,4"
        MINCHG=12
        MAXCHG=12
        NAME="12chgs"

        cd $WORKDIR

        srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                