$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/spacescan/releases/download/v1.2.1/SpaceScan-1.2.1-setup.exe' -Checksum64 '25a7c0a64d92a16748da9f2efd4fe83c73179bc428e2a206301e3dff3f535371' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
