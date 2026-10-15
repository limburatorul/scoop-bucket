$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/spacescan/releases/download/v1.1.0/SpaceScan-1.1.0-setup.exe' -Checksum64 '0c524e18482cfb27c011dd32018bafa2f87e95a6f05b45d36a32b1f087b068be' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
