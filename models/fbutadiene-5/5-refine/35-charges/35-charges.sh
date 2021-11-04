#!/bin/bash
    
        #SBATCH --job-name=refine-35chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-5/5-refine/35-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-5/5-refine/35-charges/35_charges_refined.xyz /home/boittier/pydcm/models/fbutadiene-5/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-5/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-5/ref/B.d.cube -nacmax 4 -ntry 1 -v > 35-charges.out
            