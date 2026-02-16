ARG VER=latest
FROM registry.fedoraproject.org/fedora:$VER

RUN dnf -y install fakeroot ssh && dnf clean all
