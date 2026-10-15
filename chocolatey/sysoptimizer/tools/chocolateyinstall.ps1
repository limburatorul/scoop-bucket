$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.15.0/Sysoptimizer.exe' -Checksum64 '09f0278105c9bf26e0f603fe16516a8e8207c25583752b8a2a98f2369faf44c9' -ChecksumType64 'sha256'
