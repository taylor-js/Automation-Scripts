# README

This is the README file for the system restore point creation script.

## Description

This script automates the creation of a system restore point using PowerShell.

## How to Run

1. Open PowerShell as an Administrator.
2. Run the following command to set the execution policy to RemoteSigned:
   ```powershell
   Set-ExecutionPolicy RemoteSigned
   For the current session only:
   Set-ExecutionPolicy RemoteSigned -Scope Process
   Confirm the changes by typing Y when prompted.
3. Navigate to your script directory:
   cd "C:\path\to\your\script\folder"
4. Run the script:
   .\create_system_restore_point_ps.ps1

## Notes

Ensure you have the necessary permissions to create a system restore point.
This script will create a restore point with the description "Pre-installation Restore Point".