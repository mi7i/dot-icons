## Linux Cursor Theme

### Build

Cursor themes can be generated so:

	./build.sh

Dependencies:

- Common bash, sed, grep, etc.
- rsvg-convert
- xmlstarlet
- xcursorgen

The theme settings are stored in `src/themes.txt`.


## Edits

### Animations

To animate a cursor, the svg source file can be accompanied
by a `.txt` file. Each line in that file represents a frame,
in the format `DELAY ATTRIBUTE`. Each occurence of `class="anim"`
is replaced with `ATTRIBUTE` before rendering the respective frame.

### Colors

The svg files use placeholder colors, which are replaced
with the specific theme colors before rendering.

	#fff = fill
	#000 = stroke
    #009 = shadow
	
### Hotspot

Each svg source file must contain a `<circle>` element with `id="hot"`.
The center of the circle represents the hotspot.

### Handedness

For a given handedness, each occurence of `class="HAND(SCALE,MOVE)"` is
replaced with `transform="translate(MOVE)scale(SCALE,1)"` before rendering.

