#!/bin/sh
# usage: comprh5 <files>
# purpose: uses h5repack to compress hdf5 files
# calls the compr1h5.sh script (make shure it is in your path) 

parallel compr1h5.sh -- $@
