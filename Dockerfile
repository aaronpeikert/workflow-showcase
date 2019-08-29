FROM rocker/verse:3.6.1
RUN install2.r --error --skipinstalled\
  here lavaan
WORKDIR /home/rstudio
