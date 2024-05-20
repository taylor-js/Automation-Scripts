#!/bin/bash

# Check if running on Windows using Git Bash or WSL
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "Running on Windows, setting up Node.js environment variables."

    # Set environment variables for Node.js
    setx NODE_ENV "development"
    echo "Set NODE_ENV to 'development'."

    setx PATH "%PATH%;C:\\Users\\YourUsername\\AppData\\Roaming\\npm"
    echo "Appended 'C:\\Users\\YourUsername\\AppData\\Roaming\\npm' to PATH."
    
    # Refresh environment variables (only effective in new shells)
    echo "Environment variables set. Restart your terminal for changes to take effect."
else
    echo "This script is intended to run on Windows using Git Bash or WSL."
fi
