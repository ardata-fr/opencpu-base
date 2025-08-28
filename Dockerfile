FROM opencpu/ubuntu-24.04

LABEL maintainer="David Gohel <david.gohel@ardata.fr>"

RUN apt-get install -y git

RUN R -e 'install.packages(c("tidyverse", "arrow", "logger", "remotes", "doParallel", "pbapply", "lmerTest", "multcomp", "emmeans"))'

