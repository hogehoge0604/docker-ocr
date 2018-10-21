#!/bin/sh

filename_from=$1
filename_to=$2

cd /root/
mkdir ./pdf/
pdftoppm -png $filename_from pdf/ocr
find "./pdf" -type f -name "*.png" | sed 's/\.png$//' | xargs -P8 -n1 -I% tesseract %.png % -l eng+jpn pdf
pdftk ./pdf/*.pdf cat output $filename_to

