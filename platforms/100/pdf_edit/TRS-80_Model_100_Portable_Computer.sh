#!/bin/sh
# Original high-quality scan of the manual: https://archive.org/details/trs-80-model-100-portable-computer-owners-manual/
# This pdf is manually optimized to meet github filesize limits.
# This script adds pdf page numbers & index to the pdf.
# Thanks to hackerb9@gmail.com for writing the initial .bookmarks file.
# https://gist.github.com/hackerb9/4b993d3e204a0eb0e46859a276b22fee/raw/w-outline.txt

n=TRS-80_Model_100_Portable_Computer
f=../${n}.pdf

# make the pdf page numbers match the printing
true && {
cpdf -add-page-labels $f 1 -label-prefix "front" -label-style NoLabelPrefixOnly -update -o $f

cpdf -add-page-labels $f 2-5     -label-style LowercaseRoman                    -update -o $f

cpdf -add-page-labels $f 6-8     -label-style DecimalArabic                     -update -o $f
cpdf -add-page-labels $f 9-15    -label-style DecimalArabic -label-startval 5   -update -o $f
cpdf -add-page-labels $f 16      -label-style DecimalArabic -label-startval 13  -update -o $f
cpdf -add-page-labels $f 17-37   -label-style DecimalArabic -label-startval 15  -update -o $f
cpdf -add-page-labels $f 38      -label-style DecimalArabic -label-startval 37  -update -o $f

cpdf -add-page-labels $f 42-66   -label-style DecimalArabic -label-startval 43  -update -o $f
cpdf -add-page-labels $f 67-95   -label-style DecimalArabic -label-startval 69  -update -o $f
cpdf -add-page-labels $f 96-116  -label-style DecimalArabic -label-startval 99  -update -o $f
cpdf -add-page-labels $f 117-181 -label-style DecimalArabic -label-startval 121 -update -o $f
cpdf -add-page-labels $f 182     -label-style DecimalArabic -label-startval 187 -update -o $f
cpdf -add-page-labels $f 183-189 -label-style DecimalArabic -label-startval 189 -update -o $f
cpdf -add-page-labels $f 190-212 -label-style DecimalArabic -label-startval 197 -update -o $f
cpdf -add-page-labels $f 213-217 -label-style DecimalArabic -label-startval 221 -update -o $f

cpdf -add-page-labels $f 218 -label-prefix "back" -label-style NoLabelPrefixOnly -update -o $f
}

# add index
cpdf -add-bookmarks ${n}.bookmarks $f -update -o $f
