$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.2.1/Lume-0.2.1-x64.exe' -Checksum64 '1e1585bf4a43bea998c7e76cb95e517315b24c3b3a01133e5524dc6ea07e24ef' -ChecksumType64 'sha256' `
  -SilentArgs '/S /currentuser' -ValidExitCodes @(0)
