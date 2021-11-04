# PyDCMlite



The local web server is required to view structures and surfaces with NGL viewer in this notebook. The JavaScript version of NGL is used here, meaning it has no direct access to open even local files unless referenced and shared as a URL. To access local files using a URL a local web server needs to be running, and to avoid making changes to the firewall an SSH tunnel needs to be set up for the port you wish to use. See installation instructions for more details.


It is generally too expensive to use Differential Evolution to fit a MDCM for a whole molecule directly. Instead we fit atomic charge models with just a few charges, then combine these to fit fragment charge models, then combine those to build the molecular MDCM. As QM reference ESP data are for the whole molecule, we need to obtain reference atomic and fragment ESPs to fit to somehow. We therefore fit high-ranking atomic multipoles first (using a fast least-squares approach), then use the resulting atomic multipoles to provide a reference atomic or fragment ESP and fit atomic or fragment charge models to that.

In the following cell the least-squares fit of a high-ranking multipole expansion to the molecular ESP is performed.

Installation of Jupyter-Lab environment:
    ./Anaconda3-2020.11-Linux-x86_64.sh
    conda install -c conda-forge jupyterlab
    apt install r-base (ubuntu standard R package)
    conda install ipympl
Temporary NGL dependency fix:
    obtain NGL git repository from https://github.com/nglviewer/ngl
    modify dist/ngl.js: change "e.toPrecision(2),n=new qg(r,"",t)" to "e,n=new qg(r,"",t)"
    point to your local repository in the local web server cell below
Starting server + connection to cluster:
    jupyter lab --no-browser --port=5678 (remote server)
    ssh -CNL localhost:5678:localhost:5678 devereux@pc-beethoven (local computer)
Then connect in web browser# pydcm
# pydcm
