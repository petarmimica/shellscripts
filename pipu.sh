#!/bin/sh
for i in ` pip list|awk -F ' ' '{print $1}'`; do pip install --upgrade $i; done