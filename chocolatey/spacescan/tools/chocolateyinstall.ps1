$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/spacescan/releases/download/v1.2.0/SpaceScan-1.2.0-setup.exe' -Checksum64 'b4bc8f6bbb9a6c715d4a7b60d1e00bf824234f04f93dbf93d6842db9040c9317' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
