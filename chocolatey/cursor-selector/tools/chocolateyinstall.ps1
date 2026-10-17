$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.3.2/CursorSelector.exe' -Checksum64 'c6924d3662c384558076eef5e8019788f1ddc33959673f608767f4e020ab6740' -ChecksumType64 'sha256'
