$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'HotkeyScan.exe') `
  -Url64bit 'https://github.com/limburatorul/hotkeyscan/releases/download/v1.2.0/HotkeyScan.exe' -Checksum64 '979571e0c9d1be394e00b5dd197f6e9c485ea5e2be6d9efb37ff417278c8d9c1' -ChecksumType64 'sha256'
