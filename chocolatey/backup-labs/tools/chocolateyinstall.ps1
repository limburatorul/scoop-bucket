$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/backup-labs/releases/download/v1.0.4/BackupLabs-1.0.4-setup.exe' -Checksum64 '8ba6ae78f7214b3e6f60381e0f31e8df4e1935fc98ceb346c7975803f9d59f44' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
