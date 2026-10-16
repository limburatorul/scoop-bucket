$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'HotkeyScan.exe') `
  -Url64bit 'https://github.com/limburatorul/hotkeyscan/releases/download/v1.0.8/HotkeyScan.exe' -Checksum64 'fdf9b75af99e4f19046926e74d02edd7ff3be0e52321c0747b838490dfa6bbba' -ChecksumType64 'sha256'
