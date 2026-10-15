$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/backup-labs/releases/download/v1.1.0/BackupLabs-1.1.0-setup.exe' -Checksum64 'bb83a75e7c0d585a899ac3f1069e1e21db6d3e0b865b31a3fbfa670c0f845ef3' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
