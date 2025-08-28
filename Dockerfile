FROM opencpu/ubuntu-24.04

LABEL maintainer="David Gohel <david.gohel@ardata.fr>"

RUN apt-get update

RUN apt-get install -y apt-utils git libcurl4-openssl-dev libssl-dev \
  make libcairo2-dev libfontconfig1-dev libfreetype6-dev libpng-dev \
  zlib1g-dev libglpk-dev libxml2-dev pandoc libjpeg-dev libtiff-dev \
  libicu-dev libfribidi-dev libharfbuzz-dev

RUN R -e 'install.packages(c("tidyverse", "arrow", "logger", "remotes", "curl"))'
RUN R -e 'install.packages(c("doParallel", "pbapply", "RcppParallel"))'
RUN R -e 'install.packages(c("ape", "lmerTest", "multcomp", "emmeans", "recipes"))'
