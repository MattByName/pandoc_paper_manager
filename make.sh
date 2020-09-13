#!/bin/bash
source ./project.config

# Clear PDFs

rm -f $NORMAL_FILE
rm -f $PERFORMANCE_FILE
rm -f $SLIDES_REVEAL_FILE
rm -f $SLIDES_PDF_FILE
rm -f $DOC_FILE
echo $REFERENCE_DOC
mkdir -p $EXPORT_FOLDER

# Make Normal
pandoc $SRC_FILE --pdf-engine=xelatex -V papersize:a4 -o $NORMAL_FILE
pandoc $SRC_FILE --reference-doc $REFERENCE_DOC -V papersize:a4 -o $DOC_FILE
cp -f $NORMAL_FILE $EXPORT_FOLDER
cp -f $DOC_FILE $EXPORT_FOLDER
# Make Performance
pandoc $SRC_FILE --pdf-engine=xelatex -V papersize:a4 -V fontsize=20pt -V geometry:"top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm" -o $PERFORMANCE_FILE

cp -f $PERFORMANCE_FILE $EXPORT_FOLDER

# Make Slides PDFS
pandoc -t beamer -V theme=PaloAlto -V colortheme=albatross -V aspectratio=169 -s $SRC_FILE_SLIDES -o $SLIDES_PDF_FILE

cp -f $SLIDES_PDF_FILE $EXPORT_FOLDER
# Make Slides js
pandoc -t revealjs -V revealjs-url=./reveal.js -V theme=beige-matt -V margin-0.1 -s $SRC_FILE_SLIDES -o $SLIDES_REVEAL_FILE

cp -f $SLIDES_REVEAL_FILE $EXPORT_FOLDER

#V margin=0 -V minScale=1 -V maxScale=1 -V  





