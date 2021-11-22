#!/bin/bash

#SBATCH --job-name=refine-11chg
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --partition=infinite

cd /home/boittier/pydcm/models/amide1_test2/5-refine/11-charges/

/home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/amide1_test2/4-combine/11-combined.xyz /home/boittier/pydcm/models/amide1_test2/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/amide1_test2/ref/1_1_new-0.chk.p.cube -dens /home/boittier/pydcm/models/amide1_test2/ref/1_1_new-0.chk.d.cube -nacmax 4 -ntry 1 -v > 11-charges.out
            