all: clean pdf pgr clean show


omnipage:
	pdflatex thesis_Omnipage.tex
	bibtex thesis_Omnipage
	pdflatex thesis_Omnipage.tex
	makeglossaries thesis_Omnipage
	pdflatex thesis_Omnipage.tex
	pdflatex thesis_Omnipage.tex

pdf:
	pdflatex thesis.tex
	bibtex thesis
	pdflatex thesis.tex
	makeglossaries thesis
	pdflatex thesis.tex
	pdflatex thesis.tex

pdf_anglais:
	pdflatex thesis_anglais.tex
	bibtex thesis_anglais
	pdflatex thesis_anglais.tex
	makeglossaries thesis_anglais
	pdflatex thesis_anglais.tex
	pdflatex thesis_anglais.tex

pgr:
	pdflatex pgr.tex
	pdflatex pgr.tex

clean:
	latexmk -c
	rm -f *.aux *.log *.bbl *.blg *.toc *.lof *.lot *.out *.mtc* *.ac* *.gl* *.alg *.ist *.maf
	rm -f heads/*.aux heads/*.log
	rm -f contents/*.aux contents/*.log
	rm -f tail/*.aux tail/*.log

show:
	evince thesis.pdf
	#evince thesis_anglais.pdf

compress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
    -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages \
    -dCompressFonts=true -r150 -sOutputFile=thesis_compressed.pdf thesis.pdf
