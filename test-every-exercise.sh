#! /usr/bin/env bash

WHITE='\033[1;37m'
YELLOW='\033[1;33m'
DARK_GRAY='\033[0;37m'
NC='\033[0m' # No Color

log_file="test_results.log"
log=()

timestamp=$(date +"%Y-%m-%d %H:%M:%S")
log_entry="${WHITE}${timestamp} 🏁 Starting tests for all exercises${NC}"
printf "${log_entry}\\n"
echo -e "${log_entry}" > "$log_file"

for s in *; do 

    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    log_entry="${WHITE}${timestamp} ⚙️ ${s}${NC} ⚙️"
    printf "\\n\\n${log_entry}\\n"
    # echo -e "${log_entry}" >> "${log_file}"

    # time (sleep 1)
    (cd "$s"; exercism test)
    exit_code=$?

    flag='✅'
    if [ ${exit_code} -ne "0" ]; then
        flag='❌'
    fi

    timestamp=$(date +"%Y-%m-%d %H:%M:%S")
    log_entry="${WHITE}${timestamp}${NC} ${flag} (${exit_code})\\t${WHITE}${s}${NC}"
    log+=("${log_entry}")
    echo -e "${log_entry}" >> "${log_file}"
done
printf "\\n${WHITE}${timestamp} 📋 Results${NC}"

for o in "${log[@]}"; do
    printf "\\n$o"
done

timestamp=$(date +"%Y-%m-%d %H:%M:%S")
log_entry="${WHITE}${timestamp} 🏁 All tests completed${NC}"
printf "\\n${log_entry}\\n"
echo -e "${log_entry}" >> "${log_file}"
