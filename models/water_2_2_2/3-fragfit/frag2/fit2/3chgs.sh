#!/bin/bash

        #SBATCH --job-name=frag2fit2q3
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite

        WORKDIR=/home/boittier/pydcm/models/water_2_2_2/3-fragfit/frag2/fit2
        BINDIR=/home/boittier/pydcm/bin/
        REFDIR=/home/boittier/pydcm/models/water_2_2_2/ref/
        MTPFILE=/home/boittier/pydcm/models/water_2_2_2/1-mtpfit/fitted-mtpl.dat
        PCUBE=/home/boittier/pydcm/models/water_2_2_2/ref/2_2_2_new.com.chk.p.cube
        DCUBE=/home/boittier/pydcm/models/water_2_2_2/ref/2_2_2_new.com.chk.d.cube
        NTRY=4
        ATOMLIST="2"
        MINCHG=3
        MAXCHG=3
        NAME="3chgs"

        cd $WORKDIR

        srun $BINDIR/pcubefit.x -greedy $MTPFILE -esp $PCUBE -dens $DCUBE -ncmin $MINCHG -ncmax $MAXCHG -atom $ATOMLIST -nacmax 4 -ntry $NTRY -v > $NAME".out"
                