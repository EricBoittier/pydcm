#!/bin/bash

#SBATCH --job-name=refine-10chg
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --partition=infinite

cd /home/boittier/pydcm/models/amide1_test/5-refine/10-charges/

/home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/amide1_test/4-combine/10-combined.xyz /home/boittier/pydcm/models/amide1_test/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/amide1_test/ref/1_1_new-0.chk.p.cube -dens /home/boittier/pydcm/models/amide1_test/ref/1_1_new-0.chk.d.cube -nacmax 4 -ntry 1 -v > 10-charges.out
            