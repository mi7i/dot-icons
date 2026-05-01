for f in *.svg; do  rsvg-convert -w 64 -h 64 -f svg -p 96 -o "../2/$f" "$f"; done
