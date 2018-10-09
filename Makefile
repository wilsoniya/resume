.PHONY: clean watch

TEX=$(shell find . -name '*.tex')
DEPS=$(shell find . -name '*.cls')
PDF=$(patsubst %.tex,%.pdf,${TEX})

all: ${PDF}

%.pdf: %.tex ${DEPS}
	pdflatex $<

watch:
	./watch.sh

clean:
	rm -f *.pdf *.log *.aux
