# Define a list of software to install
$softwareList = @(
    "Microsoft.VisualStudio.2022.Community", # Visual Studio 2022 Community Edition
    "Microsoft.DotNet.SDK.8", # .NET 8 SDK
    "Git.Git", # Git
    "Microsoft.AzureDataStudio", # Azure Data Studio
    "PostgreSQL.pgAdmin4", # pgAdmin4 for PostgreSQL
    "Google.Chrome", # Google Chrome
    "Microsoft.Edge", # Microsoft Edge
    "Notepad++.Notepad++", # Notepad++
    "Microsoft.VisualStudioCode", # Visual Studio Code
)

# Install each software product
foreach ($software in $softwareList) {
    try {
        Write-Host "Installing $software..."
        winget install --id $software --silent --accept-package-agreements --accept-source-agreements
        Write-Host "$software installed successfully."
    } catch {
        Write-Host "Failed to install $software. Error: $_"
    }
}

Write-Host "All specified software installation processes are complete."
