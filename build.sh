#!/bin/bash

pdfname="tutorial"

list_of_slides=list_of_slides_to_build.txt
rsts=""

# will put all the rst files together listed in list_of_slides

while read x
do
  rsts="$rsts $x blank_lines.txt"
done < $list_of_slides

cat $rsts > build/$pdfname.rst

# creates the pdf file

echo " file to be created is $pdfname"

rst2pdf build/$pdfname.rst -b 2 -s slides.style -o build/$pdfname.pdf -q
