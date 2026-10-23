$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/spacescan/releases/download/v1.4.0/SpaceScan-1.4.0-setup.exe' -Checksum64 'fcd4e893fc4d23e8828fe54aaff4fa0024069ed89287d899af8f05cf15fb1dd6' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' -ValidExitCodes @(0)
