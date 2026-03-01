#!/bin/bash

# R='\033[0;31m'         # Red color code
# G='\033[0;32m'       # Green color code
# Y='\033[0;33m'      # Yellow color code
# NC='\033[0m'     # No Color code
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
NUMBER=$1

start_time=$(date +%s)
echo -e "${G}Script execution started at: $(date)${N}"

sleep 10

end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo -e "${R} Script execution completed at: $(date)${N}"

echo -e "${Y}Total execution time: $execution_time seconds${N}"

#### Special Variables ####
echo "All args passed to script: $@"
echo "Number of vars passed to script: $#"
echo "Script name: $0"
echo "Present directory: $PWD"
echo "Who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently executed background process: $!"
echo "All args passed to script: $*"

if [ "$NUMBER" -gt 10 ]; then
    echo "Number is greater than 10"
elif [ "$NUMBER" -eq 10 ]; then
    echo "Number is equal to 10"
else
    echo "Number is less than 10"
    echo "Number is less than or equal to 10"
fi