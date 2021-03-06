FROM nfcore/base
LABEL description="Docker image containing all requirements for nf-core/neointrons pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-neointrons-1.0dev/bin:$PATH
