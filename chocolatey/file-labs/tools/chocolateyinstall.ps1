$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/file-labs/releases/download/v1.0.35/FileLabs-1.0.35-setup.exe' -Checksum64 '68d3b6a0840f980a9f42b59d41b9431a5da2261ef7498350304d8d1b489708eb' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
