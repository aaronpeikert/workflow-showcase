projekt := $(notdir $(CURDIR))

ifeq ($(WINDOWS),TRUE)
	# please mind the unusual way to specify the path
	current_dir:=//c/Users/aaron/Documents/reproducible-research
	home_dir:=$(current_dir)
	uid:=
else
	current_dir := $(CURDIR)
	home_dir := $(current_dir)
	uid = $(shell id -u)
endif

ifeq ($(DOCKER),TRUE)
	run:= docker run --rm --user $(uid) -v $(current_dir):/home/rstudio $(projekt)
	current_dir=/home/rstudio
endif

all: manuscript.pdf README.md

build: Dockerfile
	docker build -t $(projekt) .

rebuild:
	docker build --no-cache -t $(projekt) .

README.md: README.Rmd abstract.Rmd
	$(run) Rscript -e 'rmarkdown::render("$(current_dir)/$<")'

manuscript.pdf: manuscript.Rmd data/CFCS.csv
	$(run) Rscript -e 'rmarkdown::render("$(current_dir)/$<")'

data/CFCS.csv: R/prepare_data.R
	$(run) Rscript -e 'source("$(current_dir)/$<")'
