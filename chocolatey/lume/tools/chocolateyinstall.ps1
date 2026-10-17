$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.2.2/Lume-0.2.2-x64.exe' -Checksum64 '295aa16904d6967c0c5d7e93b2cdd77e8c5934798c6e583cc42b001dfde3d43a' -ChecksumType64 'sha256' `
  -SilentArgs '/S /currentuser' -ValidExitCodes @(0)
