library(here)
library(fs)

#----download----
temp <- tempdir()
download.file("http://openpsychometrics.org/_rawdata/CFCS.zip",
              destfile = path(temp, "CFCS.zip"))
unzip(path(temp, "CFCS.zip"), exdir = temp)
dir_create("data")
file_copy(path(temp, "CFCS", "data.csv"), here("data", "CFCS.csv"))
