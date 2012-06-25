

The [pandoc](http://johnmacfarlane.net/pandoc/README.html) markdown file (`template.md`) and pandoc template (`class.dzslides`) can be used to generate a [dzslides](http://paulrouget.com/dzslides/) deck (`template.html`). This generated deck includes a wider range of slides types than the default dzslides `template.html` (e.g., traditional, [Takahashi](http://en.wikipedia.org/wiki/Takahashi_method) black and white; images with shadowed overlay, centered, and floated left and right).

~~~~
pandoc --template=class.dzslides -t dzslides template.md \
| sed '/<h1><\/h1>/d' > template.html
~~~~

## Issues

This is not so much a fork of dzslides, but a fork of pandoc's built-in dzslides. This means:

1. Newer functionality of dzslides (such as overview mode) doesn't work until pandoc's `$dzslides-core$` is updated to include it.
2. You must remove empty H1s (`<h1></h1>`) until this is fixed in pandoc; this is easy to do with `sed`, as above.