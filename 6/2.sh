cat input | perl -pe 's/([*+]) +/$1x(length($&))/ge' | tr \  - | sed 's/./& /g' | rs -T | tr -d \ - | sed 's/^[*+]$/)+(/' | tr -d \\n | sed 's/.*/(&)\n/' | sed 's/[*+])/)/g' | bc
