FROM haskell:8

LABEL maintainer="Lucas Fridez <lucas@fridez.dev>"

# Installes dependencies
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
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
    && apt-get clean

# Install cabal and then pandoc + citeproc
RUN cabal update && cabal install pandoc pandoc-citeproc --force-reinstalls

WORKDIR /build