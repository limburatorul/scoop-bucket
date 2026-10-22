$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.19.3/Sysoptimizer.exe' -Checksum64 'e4805cf95268fdec75cd7d196341e7ba130f89362ce93c6754a26cce4c331f67' -ChecksumType64 'sha256'
