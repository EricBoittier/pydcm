#!/bin/bash

        #SBATCH --job-name=frag3fit2q5
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite

        WORKDIR=/home/boittier/pydcm/models/fbutadiene-13/3-fragfit/frag3/fit2
        BINDIR=/home/boittier/pydcm/bin/
        REFDIR=/home/boittier/pydcm/models/fbutadiene-13/ref/
        MTPFILE=/home/boittier/pydcm/models/fbutadiene-13/1-mtpfit/fitted-mtpl.dat
        PCUBE=/home/boittier/pydcm/models/fbutadiene-13/ref/B.p.cube
        DCUBE=/home/boittier/pydcm/models/fbutadiene-13/ref/B.d.cube
        NTRY=4
        ATOMLIST="7,2"
        MINCHG=5
        MAXCHG=5
        NAME="5chgs"

        cd $WORKDIR

        srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                