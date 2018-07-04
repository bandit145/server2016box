param(
    [string]$PackerConfig="server_2016.json"
)
$ErrorActionPreference = "Stop"
Set-StrictMode -Version 2

if ((Test-Path "~/.vagrant_cloud_config.json")){
    $data = Get-Content -Path "~/.vagrant_cloud_config.json" | ConvertFrom-Json
}
else{
    Write-Error "You are missing the build config (.vagrant_cloud_config.json) in your home directory"
}

$env:vagrant_cloud_key = $data.api_key
packer build -force $PackerConfig