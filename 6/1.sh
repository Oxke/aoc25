cat input | rs -T | perl -pe 's/ +([+*])$//; $s=$1; s/ +/$s/g' | bc | awk '{n+=$1};END{print n}'
