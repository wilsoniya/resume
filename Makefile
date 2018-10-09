.PHONY: clean watch

all: michael-wilson-software-engineer-resume.pdf michael-wilson-software-engineer-cover-letter-template.pdf

michael-wilson-software-engineer-resume.pdf: michael-wilson-software-engineer-resume.tex res.cls
	pdflatex $<

michael-wilson-software-engineer-cover-letter-template.pdf: michael-wilson-software-engineer-cover-letter-template.tex
	pdflatex $^

watch:
	./watch.sh

clean:
	rm -f *.pdf *.log *.aux
