#!/bin/sh

mkdir -p tmp/tmp

latexmk -pvc -view=pdf \
	23513014_Muhamad_Sulhan_-_Detecting_Vandalism.tex
