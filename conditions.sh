#!/bin/bash

start_time=$(date +%s)
echo "Script execution started at: $(date)"

sleep 10

end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo "Script execution completed at: $(date)"
echo "Total execution time: $execution_time seconds"

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