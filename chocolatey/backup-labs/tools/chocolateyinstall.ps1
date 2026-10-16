$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/backup-labs/releases/download/v1.1.1/BackupLabs-1.1.1-setup.exe' -Checksum64 '741f8a12aa5cacc881816fda68d2482ae7e277f9d00653b03730c77b7cdf2ea4' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
