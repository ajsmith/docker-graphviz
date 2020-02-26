FROM fedora:latest
MAINTAINER Alexander Smith <ajsmith@acm.org>

RUN useradd -u 1001 me

RUN dnf install -y graphviz && dnf clean all

USER me
WORKDIR /home/me
