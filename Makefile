BIB = /usr/local/texlive/2007/texmf-dist/bibtex/bst/base/alpha.bst

all = alphaurl.bst kwarc.xml

alphaurl.bst: $(BIB) 
	urlbst --inlinelinks --hyperref $< > alphahurl.bst

kwarc.xml:	kwarc.bib
	bib2xml kwarc.bib
