$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.0.2/CursorSelector.exe' -Checksum64 'e9a1e31858d9bc80e2602d7e041dae989cdf1d9acf324457289ecc83573aa0d5' -ChecksumType64 'sha256'
