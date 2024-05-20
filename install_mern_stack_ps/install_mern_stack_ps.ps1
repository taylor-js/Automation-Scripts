# Function to check if a command exists
function CommandExists {
    param (
        [string]$command
    )
    $commandPath = Get-Command $command -ErrorAction SilentlyContinue
    return $commandPath -ne $null
}

# Install Node.js (includes npm)
if (-not (CommandExists "node")) {
    Write-Host "Installing Node.js (includes npm)..."
    winget install --id OpenJS.Nodejs.LTS --silent --accept-package-agreements --accept-source-agreements
    Write-Host "Node.js installed successfully."
} else {
    Write-Host "Node.js is already installed."
}

# Install MongoDB
if (-not (CommandExists "mongod")) {
    Write-Host "Installing MongoDB..."
    winget install --id MongoDB.MongoDBServer --silent --accept-package-agreements --accept-source-agreements
    Write-Host "MongoDB installed successfully."
} else {
    Write-Host "MongoDB is already installed."
}

# Install MongoDB Compass
if (-not (CommandExists "mongocompass")) {
    Write-Host "Installing MongoDB Compass..."
    winget install --id MongoDB.Compass --silent --accept-package-agreements --accept-source-agreements
    Write-Host "MongoDB Compass installed successfully."
} else {
    Write-Host "MongoDB Compass is already installed."
}

# Install React CLI (using npm)
if (-not (CommandExists "create-react-app")) {
    Write-Host "Installing create-react-app..."
    npm install -g create-react-app
    Write-Host "create-react-app installed successfully."
} else {
    Write-Host "create-react-app is already installed."
}

# Install Express Generator (using npm)
if (-not (CommandExists "express")) {
    Write-Host "Installing express-generator..."
    npm install -g express-generator
    Write-Host "express-generator installed successfully."
} else {
    Write-Host "express-generator is already installed."
}

Write-Host "All specified components of the MERN stack installation processes are complete."
