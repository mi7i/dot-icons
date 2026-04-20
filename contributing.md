## Tips for contributing

Please ensure that the canvas size is set to 64 px, 16 px for symbolic icons, and 96 dpi.

Use a grid with 1 pixel of space between each line to make icons that look sharp and not blurry or faded.

Convert all strokes to paths. Strokes may not display correctly on different engines, such as Qt SVG rendering. In Inkscape, the shortcut to convert a stroke to a path is "Ctrl + Alt + C". 

Avoid clipping and use the "Path -> Intersection" function instead.

Straight surfaces should have a light gradient. The light source must point straight down from above.

Do not draw shadows outside the main silhouette of the icon, as these are generated programmatically based on the context.

Before submitting your SVGs, run [SVGO](https://github.com/svg/svgo) to make the code easier to read and edit.

Installation:

`npm install -g svgo`

Usage:

`svgo --multipass --pretty *.svg`

##

Thank you in advance for any help you can give.

