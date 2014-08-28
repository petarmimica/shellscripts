#!/bin/bash

geom="$1"
dens="$2"
i="$3"

echo $geom $dens $i


convert $i -quality 100 -density $dens -resize $geom -background white -flatten +matte $(echo _c$i | sed "s/png/jpeg/")

