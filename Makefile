SHELL=/bin/bash

all: note.pdf

# Simple case:  no figures or BibTeX
note.pdf: 2018HCALLogicalMapNote_K.tex
	pdflatex 2018HCALLogicalMapNote_K
	bibtex 2018HCALLogicalMapNote_K
	pdflatex 2018HCALLogicalMapNote_K

clean:
	-@rm -f *.{aux,toc,dvi,lof,lot,log,lom,bbl,blg,pdf,ps,out,pdfsync} *~
