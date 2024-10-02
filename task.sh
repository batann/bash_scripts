#!/bin/bash
clear
read -p 'task to add   >>>   ' abc
clear
# Add the task and capture the task ID
TASK_ID=$(task add $abc | cut -c 14-)

# Use the captured task ID to add a task note
tasknote "$TASK_ID"

