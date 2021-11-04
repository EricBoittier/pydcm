#!/bin/bash
    
        #SBATCH --job-name=refine-19chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-0/5-refine/19-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-0/4-combine/19-combined.xyz /home/boittier/pydcm/models/fbutadiene-0/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-0/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-0/ref/B.d.cube -nacmax 4 -ntry 1 -v > 19-charges.out
            