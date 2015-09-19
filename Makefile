.PHONY : all latex bibtex pdf view clean distclean

TARGET=proposal
SOURCE=$(TARGET).tex

all:
	@echo "Compiling at `date +'%H-%M-%S'`"
	pdflatex $(SOURCE)
	bibtex $(TARGET)
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

latex:
	pdflatex $(SOURCE)
	pdflatex $(SOURCE)

bibtex:
	bibtex $(TARGET)

view:
	open $(TARGET).pdf &

clean:
	rm -f $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log

distclean:clean
	rm -f $(TARGET).pdf
