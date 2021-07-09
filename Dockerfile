FROM python:3.8

# update debian
RUN apt-get -y update

# install dependencies
RUN pip install apache-beam[interactive] jupyterlab

# working dir
WORKDIR /work

# launch jupyter lab
CMD ["jupyter",  "lab", "--NotebookApp.token=''", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
