$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.17.0/Sysoptimizer.exe' -Checksum64 'b4a652a25882011aba121a4f4e0743107b02491b66ef5b5d50d84aa5d5911f95' -ChecksumType64 'sha256'
