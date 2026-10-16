$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.3.1/CursorSelector.exe' -Checksum64 '8b351e8a5b8b3396a2643c99f2eecd394597183e93d04c5d4a64626f77d0ceb8' -ChecksumType64 'sha256'
