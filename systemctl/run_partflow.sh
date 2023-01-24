#!/bin/bash

# Set the environment path
ENV_PATH="/home/liminghao/Desktop/PartFlow"

# Change to the ENV_PATH
cd $ENV_PATH

# The path to PartFlow run.py
SCRIPT_PATH="/home/liminghao/Desktop/PartFlow/run.py"

# start virtual environment
source /home/liminghao/Desktop/PartFlow/venv_mmsys/bin/activate

# The command to run the python script
CMD="python $SCRIPT_PATH"

# Run the command
$CMD

# Check the exite code of the script
if [ $? -eq 0 ]; then
    echo "PartFlow run successfully"
else
    echo "PartFlow run failed"
fi