cat input | awk -F"," '{for(i=1;i<=NF;i++){print "seq "$i}}' | tr '-' ' ' | sh | perl -nlE 'print if /^(.*)\1$/' | awk '{n += $1}; END {print n}'
