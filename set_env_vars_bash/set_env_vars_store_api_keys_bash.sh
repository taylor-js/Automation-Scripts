#!/bin/bash

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "Running on Windows, setting up API keys."

    # Set environment variables for API keys
    setx API_KEY "your-api-key-here"
    echo "Set API_KEY."

    setx SECRET_KEY "your-secret-key-here"
    echo "Set SECRET_KEY."

    echo "Environment variables set. Restart your terminal for changes to take effect."
else
    echo "This script is intended to run on Windows using Git Bash or WSL."
fi
