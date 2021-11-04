#!/bin/bash
    
        #SBATCH --job-name=refine-32chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-13/5-refine/32-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-13/4-combine/32-combined.xyz /home/boittier/pydcm/models/fbutadiene-13/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-13/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-13/ref/B.d.cube -nacmax 4 -ntry 1 -v > 32-charges.out
            