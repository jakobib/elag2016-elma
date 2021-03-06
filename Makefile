SLIDES_TEMPLATE = vzg-slides.tex
SLIDES_OPTS  = --template $(SLIDES_TEMPLATE)
SLIDES_OPTS += -t beamer -V documentclass=beamer

slides.pdf: slides.md $(SLIDES_TEMPLATE)
	pandoc -s -S $(SLIDES_OPTS) -o $@ $<
