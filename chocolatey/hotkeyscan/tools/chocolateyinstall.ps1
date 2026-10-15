$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'HotkeyScan.exe') `
  -Url64bit 'https://github.com/limburatorul/hotkeyscan/releases/download/v1.0.7/HotkeyScan.exe' -Checksum64 '49b483711a2bf987ea377c304095b8150e77ba9ce031df25e0c6f0e4f08584bf' -ChecksumType64 'sha256'
