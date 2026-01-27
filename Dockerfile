ARG VER=latest
FROM ubuntu:latest

RUN apt-get update && apt-get -y install python3 fakeroot python3-pip python3-venv
RUN mkdir /all /raven
