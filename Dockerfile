FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

LABEL maintainer="Lucas Fridez <lucas@fridez.dev>"

# Installes dependencies
RUN apt-get update -y \
    apt-get install -y --no-install-recommends \
    texlive-full \
    texlive-xetex latex-xcolor \
    texlive-math-extra \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    fontconfig \
    lmodern \
    libghc-text-icu-dev \
    zip \
    && apt-get clean \
    && apt-get autoclean \
    && apt-get autoremove

WORKDIR /build