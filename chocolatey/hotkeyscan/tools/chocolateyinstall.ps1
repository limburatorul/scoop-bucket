$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'HotkeyScan.exe') `
  -Url64bit 'https://github.com/limburatorul/hotkeyscan/releases/download/v1.0.6/HotkeyScan.exe' -Checksum64 'cb08bae19a2e03d99b88d03ddfb05cf380a6458f71a97d093f9f8c9988fb60e9' -ChecksumType64 'sha256'
