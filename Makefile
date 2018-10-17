# Filenames to be-used in compilation
MAIN=rnnre
TEX=w.tex
BIB=*.bib

# Core compilation commands
CC=latexmk
BB=bibtex
FLAGS="-pdf"

all:$(TEX)
	$(CC) $(FLAGS)
	latexmk -c
	latexmk -c

clean:
	latexmk -CA

copy:
	cp w.pdf temp2.pdf
