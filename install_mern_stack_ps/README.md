# MERN Stack Installation Script

This script installs the essential components of the MERN stack (MongoDB, Express.js, React, and Node.js) using the Windows Package Manager (`winget`) and npm.

## Description

This script automates the installation of Node.js, MongoDB, MongoDB Compass, the React CLI, and the Express Generator on a Windows system. It checks if each component is already installed and installs it if it is not.

## Prerequisites

Ensure you have the Windows Package Manager (`winget`) installed on your system.

## How to Run

1. **Save the Script**:
   Save the script as `install_mern_stack.ps1`.

2. **Open PowerShell as Administrator**:
   Right-click on the PowerShell icon and select "Run as Administrator."

3. **Execute the Script**:
   Navigate to the directory where the script is saved using the `cd` command, and then run the script:
   ```powershell
   cd "C:\path\to\your\script"
   .\install_mern_stack.ps1

## Notes

- The script uses winget to install software packages silently and accepts all package agreements.
- The script uses npm to globally install create-react-app and express-generator.
- If the installation of any software fails, an error message will be displayed.
- Ensure you have an active internet connection for downloading the software packages.

## Compatibility

This script is intended to run on Windows systems that support the Windows Package Manager (winget).