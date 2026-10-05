$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.0.11/Sysoptimizer.exe' -Checksum64 '821a55e455ca0c85f59bc0491a6be30d22662812ed2387406edc7130799c6098' -ChecksumType64 'sha256'
