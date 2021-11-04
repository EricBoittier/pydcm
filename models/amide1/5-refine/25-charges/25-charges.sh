#!/bin/bash

#SBATCH --job-name=refine-25chg
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --partition=infinite

cd /home/boittier/pydcm/models/amide1/5-refine/25-charges/

/home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/amide1/4-combine/25-combined.xyz /home/boittier/pydcm/models/amide1/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/amide1/ref/amide1.pdb.chk.p.cube -dens /home/boittier/pydcm/models/amide1/ref/amide1.pdb.chk.d.cube -nacmax 4 -ntry 1 -v > 25-charges.out
            