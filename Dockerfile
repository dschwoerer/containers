ARG VER=latest
FROM ubuntu:latest

RUN apt-get update && apt-get -y install python3 fakeroot python3-pip python3-venv git strace libhdf5-dev gcc
RUN python3 -m venv test
RUN . test/bin/activate && pip install git+https://github.com/boutproject/xBOUT --no-binary h5py
RUN mkdir /all /raven
