all: QUALI.pdf

.PHONY: QUALI.pdf

QUALI.pdf:
	latexmk -quiet -pdflua QUALI.tex

clean:
	find . -type f \( -name "*.aux" \) -delete
	find . -maxdepth 1 -type f -name "QUALI*" ! -name "QUALI.tex" -delete
	rm -f QUALI.pdf

