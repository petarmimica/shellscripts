#!/bin/bash

# usage: 
# resize.sh output-geom output-DPI <list of EPS files>
#
# Examples:
# ./resize.sh 2300x2300 144 *.png
#
# uses convert to resize all .png files to 2300x2300 with 144 DPI
#
# Output file names: a string "_c" is appended to the names of the input files.
# Note: the relation for eps is: 1cm = 28.3 pixels

dir=`pwd`

geom="$1"
dens="$2"
shift
shift

parallel ~/_mypng2jpeg1.sh $geom $dens -- $@