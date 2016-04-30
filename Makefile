.PHONY: clean

michael-wilson-software-engineer-resume.pdf:
	pdflatex michael-wilson-software-engineer-resume.tex

all: michael-wilson-software-engineer-resume.pdf

clean:
	rm -f *.pdf *.log
