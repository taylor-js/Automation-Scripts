#!/bin/bash

# Check if winget is installed
if ! command -v winget &> /dev/null
then
    echo "winget could not be found"
    exit
fi

# List of software to install
software_list=(
    "Google.Chrome"
    "Microsoft.VisualStudioCode"
    "7zip.7zip"
    "Git.Git"
)

for software in "${software_list[@]}"; do
    winget install --id=$software --silent
done
