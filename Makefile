.PHONY: all clean

all: teamnote.pdf

SOURCE_TEXS=$(shell find 'src' -name '*.tex') teamnote.tex
SOURCE_CPPS=$(shell find 'src' -name '*.hpp') $(shell find 'src' -name '*.cpp')

teamnote.pdf: $(SOURCE_TEXS) $(SOURCE_CPPS)
	xelatex --shell-escape teamnote.tex

clean:
	rm -rf teamnote.pdf *.log *.aux *.pyg *.toc
