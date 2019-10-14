FROM jupyter/datascience-notebook
LABEL maintainer="s.iwazaki@gmail.com"

# orkディレクトリは今回はいらない
RUN rm -rf /home/jovyan/work

#Install Tensorflow
#RUN conda install --quiet --yes
RUN  conda clean -tipsy && \
  fix-permissions $CONDA_DIR && \
  fix-permissions /home/$NB_USER

RUN pip install tensorflow jupyterlab
RUN mkdir -p /home/jovyan/.jupyter

WORKDIR /notebooks
COPY --chown=jovyan:users jupyter_notebook_config.py /home/jovyan/.jupyter/
