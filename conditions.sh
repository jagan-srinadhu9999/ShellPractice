#!/bin/bash

start_time=$(date +%s)
echo "Script execution started at: $(date)"

sleep 10

end_time=$(date +%s)
execution_time=$((end_time - start_time))
echo "Script execution completed at: $(date)"
echo "Total execution time: $execution_time seconds"
