cat input | perl -nlE 'print if /\-/' | sort -n | awk -F"-" 'x==0 {x=$1;y=$2}; $1 <= y+1 && $2 > y {y = $2}; $1 > y+1 {s+=y-x+1; x=$1; y=$2}; END {print s+y-x+1}'
