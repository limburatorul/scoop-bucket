$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'HotkeyScan.exe') `
  -Url64bit 'https://github.com/limburatorul/hotkeyscan/releases/download/v1.0.3/HotkeyScan.exe' -Checksum64 'c4979a24fda4b7d6c349e52df90c1e401338f23d481c73249fbeb2ada770df6d' -ChecksumType64 'sha256'
