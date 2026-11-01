$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.5.4/Lume-0.5.4-x64.exe' -Checksum64 '3a18f0998e9d5da5158066497cd58d3832f804deb44269cda241f845fa2f52cc' -ChecksumType64 'sha256' `
  -SilentArgs '/S' -ValidExitCodes @(0)
