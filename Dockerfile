FROM rocker/verse:4.1.3
RUN install2.r --error --skipinstalled\
  here lavaan
WORKDIR /home/rstudio
