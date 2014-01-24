HTML_SLIDES_TEMPLATE=dzslides_template.html
HTML_SLIDES_CSS=dzslides_template.css

PDF_SLIDES_TEMPLATE=beamer_template.tex

COMMON_OPTIONS=--standalone

.SUFFIXES: .md .html .pdf

.md.html:
	@pandoc $< -t dzslides -o $@ \
		--template $(HTML_SLIDES_TEMPLATE) \
		--css $(HTML_SLIDES_CSS) \
		$(COMMON_OPTIONS)

.md.pdf:
	@pandoc $< -t beamer -o $@ --latex-engine=xelatex \
		$(COMMON_OPTIONS)

