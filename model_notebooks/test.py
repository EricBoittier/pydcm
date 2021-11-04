import sys, time
ars_path = "/home/boittier/pydcm/"
sys.path.insert(1, ars_path)
from _pydcm import *

# The Gaussian-format cube file containing electron density:
refDensCube="/home/boittier/amide_dih/scan/1_1_new-0.chk.d.cube"
# The Gaussian-format cube file containing electrostatic potential energy:
refPotCube="/home/boittier/amide_dih/scan/1_1_new-0.chk.p.cube"
# The root folder for your fitting project
projDir="/home/boittier/pydcm/models/amide1_test"
# The bin directory containing the MDCM scripts and programs
refBinDir="/home/boittier/pydcm/bin"
# The total charge of the molecule to be fitted (a.u.)
qtot=0.0
# The port to use for the local web browser (to view molecules in NGL). Make sure nobody else is using it already!
webPort='8883'
# The name of a Slurm partition allowing jobs to run for up to 2 hours with 4 cores
shortQ='vshort'
longQ='infinite'
# The desired isodensity surface to use for viewing potential energy surfaces (a.u)
isoSurf=0.001


# Number of refinement iterations for each fit. More is better, but each fit will take longer
ntry=4
# Maximum number of charges to fit per atom (minimum is fixed at 1)
maxAChg=4

natm=12
nfrag = 4

minMChg=10
maxMChg=40

# Define fragments using atom numbering from NGL window at top of notebook
frags= [[1, 3, 11, 5], [2, 9], [8, 4], [10, 6, 12, 7]] 
# Minimum number of charges to fit for each fragment (can average fewer than 1 per atom)
minFChg=[3,2,2,3]
# Maximum number of charges to fit for each fragment (upper limit per atom fixed by maxAChg)
maxFChg=[12,8,8,12]

workdir = projDir + '/'
refdir = workdir + 'ref/'
htmldir = workdir + 'html/'
bindir = refBinDir + '/'
pdbfile = refdir + 'mol.pdb'
densCube = refdir + os.path.basename(refDensCube)
potCube = refdir + os.path.basename(refPotCube)

print("Initialising PyDCM")
pydcm = Pydcm(projDir, refBinDir, refDensCube, refPotCube, webPort, frags, minFChg, maxFChg, maxAChg, minMChg, maxMChg, shortQ, longQ)

print("Making ref. directory")
pydcm.make_ref_directory()

#pydcm.start_server()

pydcm.show_ref_models()

print("Fitting MTP model")
pydcm.display_mtpfit_comparison()


atom_fit_status = False 
while atom_fit_status == False:
	print("atom fitting")
	atom_fit_status = pydcm.do_atom_fit(maxAChg, ntry, nfrag)
	time.sleep(60*5)

# Number of refinement iterations for each fit. More is better, but each fit will take longer
ntry=4
# Number of separate fits to perform (restarting a fit can lead to a better outcome). Cost scales linearly
nfit=2

frag_fit_status = False 
while frag_fit_status == False:
	print("fragment fitting")
	frag_fit_status = pydcm.fit_fragments(ntry, nfit)
	time.sleep(60*5)

print("Combining fragments")
pydcm.combine_fragements(ntry, nfit)


refine_status = False 
while refine_status == False:
	print("refining")
	refine_status = pydcm.refine_models()
	time.sleep(60*5)


