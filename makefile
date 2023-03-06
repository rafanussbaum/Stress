PROJECT=Book.Stress_regulation
TEX=latex
MAKEINDEX=makeindex $(PROJECT).idx
BIBTEX=bibtex $(PROJECT).aux
BUILDTEX=latex $(PROJECT).tex
DVIPDF=dvipdf $(PROJECT).dvi

all:
	$(BUILDTEX)
	$(BIBTEX)
	$(BUILDTEX)
	$(BUILDTEX)
	$(MAKEINDEX)
	$(BUILDTEX) 
	$(BUILDTEX)
	$(DVIPDF)
clean-all:
	rm -f *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
	rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~
