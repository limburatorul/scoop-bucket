$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'SteamRadar-0.7.1-portabil.exe') `
  -Url64bit 'https://github.com/limburatorul/steamradar/releases/download/v0.7.1/SteamRadar-0.7.1-portabil.exe' -Checksum64 '47651a81d11cdfc129d2b5e2dadfa949e913838a701f885544870bcd4b8d02b8' -ChecksumType64 'sha256'
