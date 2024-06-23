FROM pytorch/pytorch

WORKDIR /data

WORKDIR /workdir

WORKDIR /
RUN conda install jupyterlab pandas numpy scipy scikit-learn scikit-image holoviews matplotlib
EXPOSE 8888
ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser" ]