$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/backup-labs/releases/download/v1.1.2/BackupLabs-1.1.2-setup.exe' -Checksum64 'df0d1403a96e84124cf76322dc15bdfac1acf2233a84ce5abd98c961ff29fdec' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
