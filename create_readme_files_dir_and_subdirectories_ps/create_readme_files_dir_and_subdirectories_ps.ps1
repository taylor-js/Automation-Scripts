param (
    [string]$TargetDirectory
)

if (-not (Test-Path -Path $TargetDirectory)) {
    Write-Host "The specified directory does not exist. Please provide a valid directory path."
    exit
}

# Content for the README.md file
$readmeContent = @"
# README

This is the README file for the script in this directory.

## Description

This is a powershell script that creates a README.md file in a directory and all of its subdirectories.

## How to Run the Script

1. **Open PowerShell as an Administrator**:
   - Right-click on the PowerShell icon and select "Run as Administrator."

2. **Set Execution Policy**:
   - Run the following command to set the execution policy to RemoteSigned:
     ```powershell
     Set-ExecutionPolicy RemoteSigned
     ```
   - For the current session only:
     ```powershell
     Set-ExecutionPolicy RemoteSigned -Scope Process
     ```
   - Confirm the changes by typing `Y` when prompted.

3. **Navigate to the Script Directory**:
   - Use the `cd` command to navigate to the directory where your script is located:
     ```powershell
     cd "C:\path\to\your\script\folder"
     ```

4. **Run the Script**:
   - Execute the script with the target directory parameter:
     ```powershell
     .\create_readme_files_dir_and_subdirectories_ps.ps1 -TargetDirectory "C:\path\to\your\target\directory"
     ```

## Notes

By following these steps, the script will create a README.md file in each subdirectory of the specified target directory, containing the predefined content. This should help keep your directories well-documented and organized, which is crucial for maintaining clarity and ease of use in your projects.
"@

# Get all subdirectories
$subDirs = Get-ChildItem -Path $TargetDirectory -Directory

# Loop through each subdirectory and create a README.md file
foreach ($dir in $subDirs) {
    $readmePath = Join-Path -Path $dir.FullName -ChildPath "README.md"
    if (-not (Test-Path -Path $readmePath)) {
        Set-Content -Path $readmePath -Value $readmeContent
        Write-Host "Created README.md in $($dir.FullName)"
    } else {
        Write-Host "README.md already exists in $($dir.FullName)"
    }
}
