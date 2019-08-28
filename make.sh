#!/bin/bash
source project.config

# Clear PDFs

rm -f $NORMAL_FILE
rm -f $PERFORMANCE_FILE

# Make Normal
pandoc $SRC_FILE --pdf-engine=xelatex -V papersize:a4 -o $NORMAL_FILE

# Make Performance
pandoc $SRC_FILE --pdf-engine=xelatex -V papersize:a4 -V fontsize=20pt -V geometry:"top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm" -o $PERFORMANCE_FILE

# Make Slides PDF

# Make Slides js
