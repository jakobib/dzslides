HTML_SLIDES_TEMPLATE=dzslides_template.html
HTML_SLIDES_CSS=dzslides_template.css

COMMON_OPTIONS=--standalone

.SUFFIXES: .md .html

.md.html:
	@pandoc $< -t dzslides -o $@ \
		--template $(HTML_SLIDES_TEMPLATE) \
		--css $(HTML_SLIDES_CSS) \
		$(COMMON_OPTIONS)
