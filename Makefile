FILE=slowsort
SRC_FILE=$(FILE).tex
BIB_FILE=$(FILE).bib
BIN_DIR=.
RM=rm -rf
PDFLATEX=pdflatex
BIBTEX=bibtex


all: $(SRC_FILE) $(BIB_FILE)
	$(PDFLATEX) -output-directory $(BIN_DIR) $<
	$(BIBTEX) $(FILE)
	$(PDFLATEX) -output-directory $(BIN_DIR) $<
	$(PDFLATEX) -output-directory $(BIN_DIR) $<

clean:
	$(RM) $(BIN_DIR)/*.dvi $(BIN_DIR)/*.aux $(BIN_DIR)/*.log $(BIN_DIR)/*.pdf
