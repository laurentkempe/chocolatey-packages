$packageName = 'starship'
$url = 'https://github.com/starship/starship/releases/download/v0.37.0/starship-x86_64-pc-windows-msvc.zip'
$checksum = '5592fcb04e5a28838bda587851a36e4c28b029a9dbd20af01d2b34ac05bc6210'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "starship.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# Add to Profile
Write-Host "Add the following to the end of ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 'Invoke-Expression (&starship init powershell)'"