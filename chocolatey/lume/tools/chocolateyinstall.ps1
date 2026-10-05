$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.1.10/Lume-0.1.10-x64.exe' -Checksum64 '862a7c36296e37cbfc4519a016afede54f40643e46399d3528321aa9559870ae' -ChecksumType64 'sha256' `
  -SilentArgs '/S /currentuser' -ValidExitCodes @(0)
