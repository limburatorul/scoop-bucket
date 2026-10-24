$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.21.1/Sysoptimizer.exe' -Checksum64 'b8e6c3cb8ea8dea47f881183c59abacf0d32d23bbca3cd476bdabf455aceba24' -ChecksumType64 'sha256'
