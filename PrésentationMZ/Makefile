all: clean pdf show

pdf:
	pdflatex présentation.tex
	bibtex présentation
	pdflatex présentation.tex
	pdflatex présentation.tex

clean:
	latexmk -c
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out *.mtc* *.ac* *.gl* *.alg *.ist *.maf *.nav *.snm
	rm -f parties/*.aux tail/*.log

show:
	evince présentation.pdf

compress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
    -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages \
    -dCompressFonts=true -r150 -sOutputFile=présentation_compressed.pdf présentation.pdf
