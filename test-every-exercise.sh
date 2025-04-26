#! /usr/bin/env zsh

log=()
for s in */*; do 
    printf -- '-%.0s' $(seq 100); echo "" | lolcat
    echo ${s} | figlet -w 200 | lolcat
    #echo ${s:h} | figlet -w 200 | lolcat
    time (cd $s; exercism test)
    exit_code=$?
    if [ $exit_code -ne "0" ]; then
        flag='❌'
    else
        flag='✅'
    fi
    log+=("${flag} ${exit_code} <- ${s}")
done
echo '------'
for o in $log; do
    echo $o
done
echo '------'