#!/bin/bash

# R='\033[0;31m'         # Red color code
# G='\033[0;32m'       # Green color code
# Y='\033[0;33m'      # Yellow color code
# NC='\033[0m'     # No Color code
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

start_time=$(date +%s)
echo "${G}Script execution started at: $(date)${N}"

sleep 10

end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo "${G} Script execution completed at: $(date)${N}"
echo "${Y}Total execution time: $execution_time seconds${N}"

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