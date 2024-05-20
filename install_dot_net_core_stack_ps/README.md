# Software Installation Script

This script installs essential software for development using the Windows Package Manager (`winget`).

## Description

This script automates the installation of several important software products for development, including Visual Studio, .NET SDK, Git, Azure Data Studio, pgAdmin4, web browsers, and text editors.

## Prerequisites

Ensure you have the Windows Package Manager (`winget`) installed on your system.

## How to Run

1. **Save the Script**:
   Save the script as `install_dot_net_core_stack_software_ps.ps1`.

2. **Open PowerShell as Administrator**:
   Right-click on the PowerShell icon and select "Run as Administrator."

3. **Execute the Script**:
   Navigate to the directory where the script is saved using the `cd` command, and then run the script:
   ```powershell
   cd "C:\path\to\your\script"
   .\install_dot_net_core_stack_software_ps.ps1

## Software List

The script installs the following software:

- Microsoft.VisualStudio.2022.Community: Visual Studio 2022 Community Edition
- Microsoft.DotNet.SDK.8: .NET 8 SDK
- Git.Git: Git
- Microsoft.AzureDataStudio: Azure Data Studio
- PostgreSQL.pgAdmin4: pgAdmin4 for PostgreSQL
- Google.Chrome: Google Chrome
- Microsoft.Edge: Microsoft Edge
- Notepad++.Notepad++: Notepad++
- Microsoft.VisualStudioCode: Visual Studio Code

## Notes

- The script uses winget to install each software product silently and accepts all package agreements.
- If the installation of any software fails, an error message will be displayed.
- Ensure you have an active internet connection for downloading the software packages.