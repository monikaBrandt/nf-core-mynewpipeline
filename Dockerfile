FROM nfcore/base
LABEL authors="Monika Brandt" \
      description="Docker image containing all requirements for nf-core/mynewpipeline pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-mynewpipeline-1.0dev/bin:$PATH
