FROM ubuntu:18.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
    texlive-latex-base \
    texlive-latex-recommended texlive-latex-extra \
    texlive-fonts-recommended texlive-fonts-extra

ENTRYPOINT ["/usr/bin/pdflatex"]
