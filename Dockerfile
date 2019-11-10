FROM ubuntu:16.04
MAINTAINER Chen Yuelong <yuelong.chen.btr@gmail.com>

ARG multiqc_version=1.7

# install fastp
RUN apt-get update && \
    apt-get install -y python-pip
RUN pip install networkx==2.2 && pip install numpy==1.16.4 && \
    pip install multiqc==$multiqc_version

# clean

RUN rm -rf /tmp/* && \
    apt-get clean && \
    apt-get remove --yes --purge python-pip



CMD multiqc -h

