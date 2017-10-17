.PHONY: clean

michael-wilson-software-engineer-resume.pdf: michael-wilson-software-engineer-resume.tex res.cls
	pdflatex michael-wilson-software-engineer-resume.tex

all: michael-wilson-software-engineer-resume.pdf

clean:
	rm -f *.pdf *.log
