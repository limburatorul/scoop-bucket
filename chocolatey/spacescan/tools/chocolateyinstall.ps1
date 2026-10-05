$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/spacescan/releases/download/v1.0.0/SpaceScan-1.0.0-setup.exe' -Checksum64 '3e666756d348ed3d465b472e95cdb6ee6baf822acdbf90bdf0d1f0a1533ce1c2' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
