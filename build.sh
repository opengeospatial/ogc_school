#!/bin/bash

rm -rf build/*.pdf

pdfname="ogc-tutorial"

list_of_slides=list_of_slides_to_build.txt
rsts=""

# creates a pdf for the list of slides
while read x
do
   len=${#x}                     # of the string in the list of slides
   if [ $len -gt 0 ] 
   then
      buildFolder=${x%/*}/build  # where to put the pdf
      echo "buildFolder" $buildFolder
      mkdir $buildFolder
      fileName=${x##*/}          # file name to be created
     rst2pdf $x.rst -b 2 -s slides.style -o $buildFolder/$fileName.pdf -q
   fi
done < $list_of_slides
 
i=1
while read x
do  
   if [ ${#x} -gt 0 ] 
   then
      if [ ${#i} -eq 1 ]
      then
         prefix="00$i"
      elif [  ${#i} -eq 2 ]
      then
          prefix="0$i"
      else
         prefix="$i"  
      fi       
      
      fileName="${x##*/}.pdf" 
      cp ${x%/*}/build/${x##*/}.pdf build/$prefix"_"$fileName #copy to build from the pdfs created
      let i=i+1
   fi
done < $list_of_slides 

# remove all the temporary build files
while read x
do 
   if [ ${#x} -gt 0 ] 
   then
      rm -rf ${x%/*}/build
   fi
done < $list_of_slides 

# build in the root build folder
cd build
gs -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=ogc-tutorial.pdf `ls *.pdf`
 

