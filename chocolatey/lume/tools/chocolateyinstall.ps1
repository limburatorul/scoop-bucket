$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.5.6/Lume-0.5.6-x64.exe' -Checksum64 '507c0cda959bcb6d24ab387568cb58581ca762f60f5752a83d4776a03ea3246c' -ChecksumType64 'sha256' `
  -SilentArgs '/S' -ValidExitCodes @(0)
