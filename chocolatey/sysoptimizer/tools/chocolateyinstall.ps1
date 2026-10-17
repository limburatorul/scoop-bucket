$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.15.2/Sysoptimizer.exe' -Checksum64 '7042e37e26c088935cdbc250d9784f766ecd488b40376689f10d9025f38952d3' -ChecksumType64 'sha256'
