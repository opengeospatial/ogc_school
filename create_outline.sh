#!/bin/bash

rm outline.rst	
touch outline.rst
echo "Outline" >> outline.rst
echo "===========" >> outline.rst
echo "" >> outline.rst


list_of_slides=list_of_slides_to_build.txt

while read x
do
 	if [ ${#x} -gt 0 -a "$x" != "custom/slides/cover" ] 
   	then
		read -r FIRSTLINE < $x.rst
		echo "   #. "$FIRSTLINE >> outline.rst
	fi	
done < $list_of_slides 	

rst2pdf outline.rst -b 2 -s slides.style -o build/001b_outline.pdf -q