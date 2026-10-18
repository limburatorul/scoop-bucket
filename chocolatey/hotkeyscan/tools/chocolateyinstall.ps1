$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'HotkeyScan.exe') `
  -Url64bit 'https://github.com/limburatorul/hotkeyscan/releases/download/v1.0.9/HotkeyScan.exe' -Checksum64 '6b4ece2b6832702b6a69b64aab13b02096b1352d5a5b2e4f43d2cc625a0b9a3c' -ChecksumType64 'sha256'
