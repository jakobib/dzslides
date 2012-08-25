

The [pandoc](http://johnmacfarlane.net/pandoc/README.html) markdown file (`template.md`) and pandoc template (`class.dzslides`) can be used to generate a [dzslides](http://paulrouget.com/dzslides/) deck (`template.html`). This generated deck includes a wider range of slides types than the default dzslides `template.html` (e.g., traditional, [Takahashi](http://en.wikipedia.org/wiki/Takahashi_method) black and white; images with shadowed overlay, centered, and floated left and right).

~~~~
pandoc --template=class.dzslides -t dzslides --standalone template.md > template.html
~~~~

## Image Tips

**stretch image to fill screen; alt is overlay**
    ![overlay](media/img.jpg)
**constrain image; h4 is overlay**
    #### overlay + img
**regular image**
    ![alt](media/img.jpg)\ 
**large image with text underneath**
    # ![](media/beat-up-Anita-Sarkeesian.jpg)\ \ntext

## Issues

1. The latest functionality of dzslides (such as overview mode) may not be in pandoc's `$dzslides-core$`. I've replaced `$dzslides-core$` with the latest from dzslides (first escaping all javascript `$` via `$$`.)
2. Make sure you are not using an early version of pandoc that give every slide an `h1`, even if empty (see [#484](https://github.com/jgm/pandoc/issues/484).)
3. There's some ugly CSS trying to account for:
    a. No easy vertical centers, so there's lots of margin futzing.
    b. No easy image scaling.
    c. Images might be in a link, if using WikimediaCommons images.