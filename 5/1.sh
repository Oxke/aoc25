join -j 2 <(perl -nlE 'print if /^\d+$/' input) <(perl -nlE 'print if /\-/' input) | tr - ' ' | awk '$2 <= $1 && $1 <= $3' | sort -nu | wc -l
