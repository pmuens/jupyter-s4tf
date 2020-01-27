# Jupyter Swift for TensorFlow

[Docker image](https://hub.docker.com/r/pmuens/jupyter-s4tf) to conveniently run Jupyter Notebooks with Swift for TensorFlow.

**NOTE:** The code for this Dockerfile was taken from [fastai/swiftai](https://github.com/fastai/swiftai).

## Usage

```sh
docker run -it -p 8888:8888 --rm --name jupyter-s4tf \
  -v "$PWD":/home/jovyan/work \
  --ipc=host \
  pmuens/jupyter-s4tf:latest jupyter notebook \
  --ip=0.0.0.0 \
  --no-browser \
  --allow-root \
  --NotebookApp.token=\
  --notebook-dir=/home/jovyan/work
```
