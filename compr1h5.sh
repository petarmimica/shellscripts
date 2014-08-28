#!/bin/bash

fname=$1	
h5repack -f SHUF -f GZIP=9 $fname $fname-tmp.h5
mv -v $fname-tmp.h5 $fname