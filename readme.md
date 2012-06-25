
This fork of dzslides includes a default `template.html` with a much wider range of slides types (e.g., traditional, Takahashi black and white; images with shadowed overlay, centered, floated left and right, etc.)

Furthermore, this template is trivially generated from a markdown file (`template.md`) using pandoc and *its* template `class.dzslides`. (**WARNING**: You must remove empty H1s (<h1></h1>) until this is fixed upstream; this is easy to do with `sed`.)

~~~~

pandoc --template=class.dzslides -t dzslides template.md | sed '/<h1><\/h1>/d' > template.html

~~~~
