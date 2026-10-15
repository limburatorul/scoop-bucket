$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.14.0/Sysoptimizer.exe' -Checksum64 '2aa41214612497711142a748cf33964f56187001b730ca9d262625713c40658f' -ChecksumType64 'sha256'
