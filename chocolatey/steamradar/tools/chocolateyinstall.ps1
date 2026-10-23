$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'SteamRadar-0.9.0-portabil.exe') `
  -Url64bit 'https://github.com/limburatorul/steamradar/releases/download/v0.9.0/SteamRadar-0.9.0-portabil.exe' -Checksum64 '307212f1daf6c2491f6d910e0fbb4d00df950e84656fef24cdd44f906d427e89' -ChecksumType64 'sha256'
