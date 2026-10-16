$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/file-labs/releases/download/v1.0.36/FileLabs-1.0.36-setup.exe' -Checksum64 '7ee55a9319e4a9b6747040addf281a29cf85e546dd00fdf47e3985b7bcc85834' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
