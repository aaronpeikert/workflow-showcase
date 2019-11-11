projekt := $(notdir $(CURDIR))

ifeq ($(WINDOWS),TRUE)
	# please mind the unusual way to specify the path
	current_dir:=//c/Users/aaron/Documents/reproducible-research
	home_dir:=$(current_dir)
	uid:=
else
	current_dir := $(CURDIR)
	home_dir := $(current_dir)
	uid = --user $(shell id -u)
endif

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
