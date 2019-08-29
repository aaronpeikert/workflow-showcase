projekt := $(shell basename `git rev-parse --show-toplevel`)
current_dir := $(shell pwd)
uid = $(shell id -u)

ifeq ($(DOCKER),TRUE)
	run:= docker run --rm --user $(uid) -v $(current_dir):/home/rstudio $(projekt)
	current_dir=/home/rstudio
endif

all: cfcs-example.pdf README.md

build: Dockerfile
	docker build -t $(projekt) .

README.md: README.Rmd abstract.Rmd
	$(run) Rscript -e 'rmarkdown::render("$(current_dir)/$<")'

cfcs-example.pdf: cfcs-example.Rmd
	$(run) Rscript -e 'rmarkdown::render("$(current_dir)/$<")'
