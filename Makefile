# Makefile for LuaLaTeX build

TEXFILE=cv.tex
JOBNAME=NaqashNaveed_CV
PDF=$(JOBNAME).pdf
LOGS=$(JOBNAME).aux $(JOBNAME).log $(JOBNAME).out $(JOBNAME).synctex.gz
SECTIONS=*.tex documentMETADATA.cls

all: $(PDF)

$(PDF): $(TEXFILE) $(SECTIONS)
	@rm -f $(LOGS)
	lualatex -jobname=$(JOBNAME) -synctex=1 -interaction=nonstopmode -file-line-error $(TEXFILE)
	@rm -f $(LOGS)

clean:
	@rm -f $(PDF) $(LOGS)
