#!/bin/sh

docker run -it -p 8888:8888 --rm --name jupyter-s4tf \
  -v "$PWD":/home/jovyan/work \
  --ipc=host \
  pmuens/jupyter-s4tf:latest jupyter notebook \
  --ip=0.0.0.0 \
  --no-browser \
  --allow-root \
  --NotebookApp.token=\
  --notebook-dir=/home/jovyan/work
