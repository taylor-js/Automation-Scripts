#!/bin/bash

# Variables
task_name="MyScheduledTask"
program_path="C:\\Path\\To\\Your\\Program.exe"
schedule_time="09:00"

# Multi-line string variable using heredoc
readmeContent=$(cat <<EOF
# README

This is the README file for the scheduled task created by this script.

## Description

This script automates the creation of a scheduled task using the Windows Task Scheduler.

## Usage

1. Open a terminal or command prompt with administrative privileges.
2. Ensure the script has execute permissions:
   \`\`\`bash
   chmod +x create_scheduled_task_bash.sh
   \`\`\`
3. Run the script:
   \`\`\`bash
   ./create_scheduled_task_bash.sh
   \`\`\`

## Task Details

- Task Name: $task_name
- Program Path: $program_path
- Schedule Time: $schedule_time

## Notes

- Make sure the program path is correct and points to a valid executable.
- The scheduled task will run daily at the specified time.
EOF
)

# Create the README.md file
echo "$readmeContent" > README.md

# Create the scheduled task
schtasks /create /tn $task_name /tr $program_path /sc daily /st $schedule_time

# Confirm the creation of the task
if [ $? -eq 0 ]; then
    echo "Scheduled task '$task_name' created successfully."
else
    echo "Failed to create the scheduled task '$task_name'."
fi
