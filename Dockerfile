FROM ubuntu:18.04

LABEL maintainer="Lucas Fridez <lucas@fridez.dev>"

# Installes dependencies
RUN apt-get update -y \
    && apt-get install -y apt-transport-https \
    && apt-get install -y \
    texlive-full \
    texlive-xetex latex-xcolor \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    fontconfig \
    lmodern \
    libghc-text-icu-dev \
    zip
    #&& apt-get clean

WORKDIR /build