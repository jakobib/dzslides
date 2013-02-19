

The [pandoc](http://johnmacfarlane.net/pandoc/README.html) markdown file (`template.md`) and pandoc template (`class.dzslides`) can be used to generate a [dzslides](http://paulrouget.com/dzslides/) deck (`template.html`). This generated deck includes a wider range of slides types than the default dzslides `template.html` (e.g., traditional, [Takahashi](http://en.wikipedia.org/wiki/Takahashi_method) black and white; images with shadowed overlay ([PechaKucha](http://en.wikipedia.org/wiki/PechaKucha)), centered, and floated left and right).

Check out the [resulting deck](http://reagle.org/joseph/talks/2012/reagle-template.html)!

~~~~
pandoc --template=class.dzslides -t dzslides --standalone template.md > template.html
~~~~

## Image Tips

````
regular image
    ![alt](media/img.jpg)\ 
stretch image to fill screen; alt is overlay
    ![overlay](media/img.jpg)
stretch image to fill screen; h4 is overlay
    #### overlay + ![alt](media/img.jpg)
constrain image; h5 is overlay
    ##### overlay + ![alt](media/img.jpg)
````

## Issues

1. The latest functionality of dzslides (such as overview mode) may not be in pandoc's `$dzslides-core$`. I've replaced `$dzslides-core$` with the latest from dzslides (first escaping all javascript `$` via `$$`.)
2. Make sure you are not using an early version of pandoc that give every slide an `h1`, even if empty (see [#484](https://github.com/jgm/pandoc/issues/484).)
3. There's some ugly CSS trying to account for: (a) No easy vertical centers, so there's lots of margin futzing; (b) No easy image scaling; (c) and needing to use CSS selectors to guess what type of slide it should be (e.g., image with text should be floated to the left or right; an image alone should be full screen). A future version of pandoc will [support header attributes](https://github.com/jgm/pandoc/issues/679#issuecomment-13695010) "which will appear on the enclosing div or section containers in slide shows." When this happens I should be able to clean up some of the complex selectors in favor of explicit declarations in the header attribute.