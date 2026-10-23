$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/backup-labs/releases/download/v1.6.0/BackupLabs-1.6.0-setup.exe' -Checksum64 '3784115468283723ecf02a4f48ad139f835b7393cc26ba87da64b4a0bf1fb07b' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' -ValidExitCodes @(0)
