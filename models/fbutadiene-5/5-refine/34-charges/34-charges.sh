#!/bin/bash
    
        #SBATCH --job-name=refine-34chg
        #SBATCH --nodes=1
        #SBATCH --ntasks=4
        #SBATCH --partition=infinite
    
        cd /home/boittier/pydcm/models/fbutadiene-5/5-refine/34-charges/
    
        /home/boittier/pydcm/bin//pcubefit.x -xyz /home/boittier/pydcm/models/fbutadiene-5/5-refine/34-charges/34_charges_refined.xyz /home/boittier/pydcm/models/fbutadiene-5/1-mtpfit/fitted-mtpl.dat -simplex -esp /home/boittier/pydcm/models/fbutadiene-5/ref/B.p.cube -dens /home/boittier/pydcm/models/fbutadiene-5/ref/B.d.cube -nacmax 4 -ntry 1 -v > 34-charges.out
            