#!/bin/bash

        #SBATCH --job-name=frag2fit2q8
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite

        WORKDIR=/home/boittier/pydcm/models/fbutadiene-13/3-fragfit/frag2/fit2
        BINDIR=/home/boittier/pydcm/bin/
        REFDIR=/home/boittier/pydcm/models/fbutadiene-13/ref/
        MTPFILE=/home/boittier/pydcm/models/fbutadiene-13/1-mtpfit/fitted-mtpl.dat
        PCUBE=/home/boittier/pydcm/models/fbutadiene-13/ref/B.p.cube
        DCUBE=/home/boittier/pydcm/models/fbutadiene-13/ref/B.d.cube
        NTRY=4
        ATOMLIST="3,8"
        MINCHG=8
        MAXCHG=8
        NAME="8chgs"

        cd $WORKDIR

        srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                