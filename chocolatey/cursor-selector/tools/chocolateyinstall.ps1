$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.4.0/CursorSelector.exe' -Checksum64 '427648f028321bb868a436c20e565d7b3cd920ffe1f506dc8d6c5ccbcffef89f' -ChecksumType64 'sha256'
