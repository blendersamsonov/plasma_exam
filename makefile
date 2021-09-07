TEX := pdflatex

all: main

%: %.tex %.bib
	$(TEX) $< && bibtex && $(TEX) $< && $(TEX) $< $*.pdf

.PHONY : clean
clean:
	rm -I *.log *.aux *Notes.bib *.bbl *.blg *.out
