cat input | sed 's/./& /g' | awk 'NR<3{for(i=1;i<=NF;i++){if($i=="S"){n[i]=1}}};NR>2{for(i=1;i<=NF;i++)if($i=="^"&&n[i]>0){n[i-1]=n[i+1]=1;n[i]=0;s+=1}};END{print s}'
