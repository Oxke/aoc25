cat input | tr "LR" "-+" | awk 'BEGIN {n = 50}; {n = (n+$1+100) % 100}; n == 0 {N += 1}; END {print N}' 
