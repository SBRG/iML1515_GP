FROM everware/base

MAINTAINER Project Everware

USER root

# For python 2
RUN pip install --upgrade pip
RUN /bin/bash -c "source activate py27 && \
    conda install --yes numpy scipy scikit-learn matplotlib pandas seaborn"
# For python 3
RUN conda install --yes numpy scipy scikit-learn matplotlib pandas seaborn
RUN pip install ssbio

USER jupyter
WORKDIR /home/jupyter/

EXPOSE 8888