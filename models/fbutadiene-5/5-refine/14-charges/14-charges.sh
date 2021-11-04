#!/bin/bash
    
        #SBATCH --job-name=refine-14chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-5/5-refine/14-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-5/4-combine/14-combined.xyz /home/boittier/pydcm/models/fbutadiene-5/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-5/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-5/ref/B.d.cube -nacmax 4 -ntry 1 -v > 14-charges.out
            