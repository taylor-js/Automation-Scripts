# Chocolatey Software Installation Script

This script installs Chocolatey (if not already installed) and then uses Chocolatey to install a list of specified software packages.

## Description

This script checks if Chocolatey is installed on the system. If not, it installs Chocolatey. After ensuring Chocolatey is installed, it proceeds to install a list of software packages using Chocolatey.

## Prerequisites

Ensure you have PowerShell installed on your system.

## How to Run

1. **Save the Script**:
   Save the script as `install_software_using_chocolatey.ps1`.

2. **Open PowerShell as Administrator**:
   Right-click on the PowerShell icon and select "Run as Administrator."

3. **Execute the Script**:
   Navigate to the directory where the script is saved using the `cd` command, and then run the script:
   ```powershell
   cd "C:\path\to\your\script"
   .\install_software_using_chocolatey.ps1
