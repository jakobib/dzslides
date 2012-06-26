

The [pandoc](http://johnmacfarlane.net/pandoc/README.html) markdown file (`template.md`) and pandoc template (`class.dzslides`) can be used to generate a [dzslides](http://paulrouget.com/dzslides/) deck (`template.html`). This generated deck includes a wider range of slides types than the default dzslides `template.html` (e.g., traditional, [Takahashi](http://en.wikipedia.org/wiki/Takahashi_method) black and white; images with shadowed overlay, centered, and floated left and right).

~~~~
pandoc --template=class.dzslides -t dzslides template.md \
| sed '/<h1><\/h1>/d' > template.html
~~~~

## Issues

1. The latest functionality of dzslides (such as overview mode) may not be in pandoc's `$dzslides-core$`. I've replaced `$dzslides-core$` with the latest from dzslides (escape all javascript `$` via `$$`.)
2. Earlier versions of pandoc give every slide an `h1`, even if empty.You must remove empty `h1`s (`<h1></h1>`) until this is [fixed (#484)](https://github.com/jgm/pandoc/issues/484); this is easy to do with `sed`, as above.