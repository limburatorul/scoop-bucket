$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/file-labs/releases/download/v1.0.39/FileLabs-1.0.39-setup.exe' -Checksum64 'e756d09b78d48f4093c331d7352dd21099991465005fd28ed8d83b9a2e5fd774' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
