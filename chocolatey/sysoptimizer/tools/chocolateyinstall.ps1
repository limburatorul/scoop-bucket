$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.14.1/Sysoptimizer.exe' -Checksum64 '0fb243ecdcf9ee7f8f49ef7a476c1222d42602509a7f6577e3d110b2f1dd4842' -ChecksumType64 'sha256'
