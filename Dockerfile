ARG VER=latest
FROM ubuntu:latest

RUN apt-get update && apt-get -y install python3 fakeroot python3-pip python3-venv git strace
RUN python3 -m venv test
RUN . test/bin/activate && pip install git+https://github.com/boutproject/xBOUT h5py
RUN mkdir /all /raven
