$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.2.0/Lume-0.2.0-x64.exe' -Checksum64 '1b1a378bf3116554371367de4737aa6f75189b4fad926d4eb94b5da8206cd9eb' -ChecksumType64 'sha256' `
  -SilentArgs '/S /currentuser' -ValidExitCodes @(0)
