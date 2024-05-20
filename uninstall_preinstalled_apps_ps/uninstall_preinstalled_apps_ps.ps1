# List of pre-installed apps to remove
$apps = @(
    "Microsoft.SkypeApp",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "Microsoft.BingWeather"
)

foreach ($app in $apps) {
    Get-AppxPackage -Name $app | Remove-AppxPackage
}
