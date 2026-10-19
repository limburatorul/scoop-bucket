$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.16.0/Sysoptimizer.exe' -Checksum64 'f936197db76848803fce27eb24e8c23387ef27094010d2e61b1528f63e18694e' -ChecksumType64 'sha256'
