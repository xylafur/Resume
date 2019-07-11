PREFIX=resume_latex

TEXFILE=$(PREFIX).tex
DVIFILE=$(PREFIX).dvi
AUXFILE=$(PREFIX).aux
LOGFILE=$(PREFIX).log


all: $(DVIFILE)
	xdvi $(DVIFILE)

remake:
	$(MAKE) clean
	$(MAKE) all

$(DVIFILE):
	latex $(TEXFILE)

pdf:
	pdflatex $(TEXFILE)

clean:
	rm -rf $(AUXFILE) $(DVIFILE) $(LOGFILE)
