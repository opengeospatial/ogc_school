#!/bin/bash
echo "builduing $1.rst"
rst2pdf $1.rst -b 2 -s slides.style -o build/one.pdf -q