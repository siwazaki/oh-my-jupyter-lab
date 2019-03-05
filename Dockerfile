FROM jupyter/datascience-notebook
LABEL maintainer="neco-pico"

RUN pip install jupyterlab
RUN jupyter serverextension enable --py jupyterlab
