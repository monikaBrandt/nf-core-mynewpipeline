From:nfcore/base
Bootstrap:docker

%labels
    MAINTAINER Monika Brandt
    DESCRIPTION Singularity image containing all requirements for the nf-core/mynewpipeline pipeline
    VERSION 1.0dev

%environment
    PATH=/opt/conda/envs/nf-core-mynewpipeline-1.0dev/bin:$PATH
    export PATH

%files
    environment.yml /

%post
    /opt/conda/bin/conda env create -f /environment.yml
    /opt/conda/bin/conda clean -a
