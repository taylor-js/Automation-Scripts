#!/bin/bash

if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "Running on Windows, setting up database configuration."

    # Set environment variables for database configuration
    setx DB_HOST "localhost"
    echo "Set DB_HOST to 'localhost'."

    setx DB_PORT "5432"
    echo "Set DB_PORT to '5432'."

    setx DB_USER "your-username"
    echo "Set DB_USER."

    setx DB_PASSWORD "your-password"
    echo "Set DB_PASSWORD."

    echo "Environment variables set. Restart your terminal for changes to take effect."
else
    echo "This script is intended to run on Windows using Git Bash or WSL."
fi
