cat input | tr "LR" "-+" | awk 'BEGIN {n = 50}; {while($1!=0){if($1<0){n=(n+99)%100;$1+=1}else{n=(n+101)%100;$1-=1};if(n==0){N+=1}}}; END {print N}'
