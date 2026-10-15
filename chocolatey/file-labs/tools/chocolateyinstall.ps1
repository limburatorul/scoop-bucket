$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/file-labs/releases/download/v1.0.33/FileLabs-1.0.33-setup.exe' -Checksum64 '9a45bc4c9a6ddcf57417db84a9cef87b29fc83fe003b969648b490f3d8c0a726' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
