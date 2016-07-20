# Makefile for RedPen documentation
#

# You can set these variables from the command line.
BUILDDIR              = build

ASCIIDOCTOR           = asciidoctor
.PHONY: help clean check html 

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"

clean:
	-rm -rf $(BUILDDIR)/*

check:
	redpen -f markdown "機能仕様書"/*.md

pdf:
	cd "機能仕様書"
	pwd
	gimli
	@echo "Build finished..."
#	mkdir -p $(BUILDDIR)/html
#	cp source/*.jpg source/*.png $(BUILDDIR)/html/
#	cp -r source/styles/redpen $(BUILDDIR)/html/
#	$(ASCIIDOCTOR) -a source-highlighter=coderay -a stylesdir=styles -a target-version=1.6 -d book -b html5 source/index.adoc -D$(BUILDDIR)/html
#	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html"
