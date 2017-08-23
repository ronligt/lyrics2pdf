#!/bin/sh

find lyrics -name "*.md" | while read FILE
do
  fname=${FILE##*/}
  pandoc "$FILE" -o "build/${fname%.*}".pdf -f markdown+hard_line_breaks -H style.tex -H columns.tex -H title.tex -B predoc.tex -A postdoc.tex
done
