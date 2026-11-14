.PHONY: all pdf watch clean

all: pdf

pdf:
	latexmk main.tex

watch:
	latexmk -pvc -view=none main.tex

# Rimuove gli intermedi di compilazione e conserva il PDF.
clean:
	latexmk -c main.tex
