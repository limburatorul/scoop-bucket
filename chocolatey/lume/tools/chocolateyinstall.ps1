$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.4.1/Lume-0.4.1-x64.exe' -Checksum64 'd726a9f9522d87571f9974122382603927b87e52a7fdc661a78b5fbedcd8d82f' -ChecksumType64 'sha256' `
  -SilentArgs '/S /currentuser' -ValidExitCodes @(0)
