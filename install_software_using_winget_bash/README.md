# Winget Software Installation Script

This script installs a list of specified software packages using the Windows Package Manager (`winget`).

## Description

This script checks if `winget` (the Windows Package Manager) is installed on the system. If `winget` is not found, the script exits with an error message. If `winget` is found, the script proceeds to install a list of software packages specified in the `software_list` array.

## Prerequisites

Ensure you have `winget` installed on your Windows system.

## How to Run

1. **Save the Script**:
   Save the script as `install_software_using_winget_bash.sh`.

2. **Open Git Bash or WSL**:
   Open Git Bash or Windows Subsystem for Linux (WSL).

3. **Make the Script Executable**:
   Navigate to the directory where the script is saved and run the following command to make the script executable:
   ```bash
   chmod +x install_software_using_winget_bash.sh
