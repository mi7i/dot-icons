#!/bin/bash

palette=("#22d3ee" "#34d399" "#5eead4" "#60a5fa" "#7dd3fc" "#818cf8" "#86efac" "#c084fc" "#f472b6" "#f87171" "#f9a8d4" "#fda4af" "#fdba74")

mkdir -p tmp

for file in *.svg; do
    [ -e "$file" ] || continue
    for color in "${palette[@]}"; do
        sed "s/#9cf/$color/g" "$file" > "tmp/${file%.svg}-$color.svg"
    done
done

exit 0
