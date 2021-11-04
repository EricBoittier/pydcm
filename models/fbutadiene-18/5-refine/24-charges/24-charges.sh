#!/bin/bash
    
        #SBATCH --job-name=refine-24chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-18/5-refine/24-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-18/4-combine/24-combined.xyz /home/boittier/pydcm/models/fbutadiene-18/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-18/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-18/ref/B.d.cube -nacmax 4 -ntry 1 -v > 24-charges.out
            