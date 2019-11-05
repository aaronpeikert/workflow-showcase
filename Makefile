projekt := $(shell basename `git rev-parse --show-toplevel`)
current_dir := $(shell pwd)
uid = $(shell id -u)

ifeq ($(DOCKER),TRUE)
	run:= docker run --rm --user $(uid) -v $(current_dir):/home/rstudio $(projekt)
	current_dir=/home/rstudio
endif

all: manuscript.pdf README.md

build: Dockerfile
	docker build -t $(projekt) .

README.md: README.Rmd abstract.Rmd
	$(run) Rscript -e 'rmarkdown::render("$(current_dir)/$<")'

manuscript.pdf: manuscript.Rmd data/CFCS.csv
	$(run) Rscript -e 'rmarkdown::render("$(current_dir)/$<")'

data/CFCS.csv: R/00load_data.R
	$(run) Rscript -e 'source("$(current_dir)/$<")'
