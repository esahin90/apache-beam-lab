FROM python:3.8

# update debian
RUN apt-get -y update

# install dependencies
RUN pip install apache-beam[interactive] jupyterlab

# test out river
RUN pip install creme river chantilly

# Add starting script
Add start.sh /

# Make executable
RUN chmod +x /start.sh

# working dir
WORKDIR /work

# expose ports
EXPOSE 8888
EXPOSE 5000

# launch jupyter lab + chantilly
CMD ["/start.sh"]
