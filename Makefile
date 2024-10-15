PANDOC_HTMLOPT=-s --embed-resources --standalone --katex -t html5 --toc --template ~/.pandoc/elegant_bootstrap_menu.html --css ~/.pandoc/github.css

# Find all README.md files and generate corresponding index.html paths
TARGETS=$(shell find . -name 'README.md' | sed 's/README.md/index.html/')

.PHONY: clean
clean:
		rm -f $(TARGETS)
		
.PHONY: all
all: $(TARGETS)

index.md: README.md
		cp README.md index.md

index.html: index.md
		pandoc index.md -o index.html

# Rule to convert README.md to index.md
%/index.md: %/README.md
		awk 'NR==2{print; print "[[Up]](../index.html)"; next}1' $< > $@
		gsed -i '3a [[Repository]](https://github.com/Rimooo07/statistics_notes) \n' $@

# Rule to convert index.md to index.html
%/index.html: %/index.md
		pandoc -s $< -o $@ $(PANDOC_HTMLOPT) --shift-heading-level-by=-1
		rm -f $(@D)/index.md
		rm -f index.md