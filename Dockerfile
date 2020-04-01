FROM haskell:8

LABEL maintainer="Lucas Fridez <lucas@fridez.dev>"

# Installes dependencies
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends --fix-missing \
       wget \
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
       graphviz \
       default-jre \
       libfop-java \
       libbatik-java \
       libjlatexmath-java \
       libavalon-framework-java \
       libcommons-io-java \
       libcommons-logging-java \
       libxml-commons-external-java \
       libxmlgraphics-commons-java \
    && wget http://security.ubuntu.com/ubuntu/pool/universe/p/plantuml/plantuml_1.2018.13+ds-2_all.deb \
    && dpkg -i plantuml_1.2018.13+ds-2_all.deb \
    && wget https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-1-amd64.deb \
    && dpkg -i pandoc-2.9.2.1-1-amd64.deb \
    && apt-get -f install -y \
    && apt-get clean


# Install cabal and then pandoc + citeproc
# RUN cabal update && cabal install pandoc pandoc-citeproc --force-reinstalls

WORKDIR /build