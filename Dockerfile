FROM ubuntu:18.04

LABEL maintainer="Lucas Fridez <lucas@fridez.dev>"

# Installes dependencies
RUN add-apt-repository universe multiverse \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
    texlive-full \
    texlive-xetex texlive-collection-latexrecommended \
    texlive-science-doc texlive-science \
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