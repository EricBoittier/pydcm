#!/bin/bash
    
        #SBATCH --job-name=refine-37chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-9/5-refine/37-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-9/5-refine/37-charges/37_charges_refined.xyz /home/boittier/pydcm/models/fbutadiene-9/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-9/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-9/ref/B.d.cube -nacmax 4 -ntry 1 -v > 37-charges.out
            