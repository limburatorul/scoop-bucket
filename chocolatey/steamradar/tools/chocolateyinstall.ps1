$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'SteamRadar-0.7.0-portabil.exe') `
  -Url64bit 'https://github.com/limburatorul/steamradar/releases/download/v0.7.0/SteamRadar-0.7.0-portabil.exe' -Checksum64 'b1c10fd19d832f9777657a2fa09b64984082788ee34b59b0129c2681f3562fb5' -ChecksumType64 'sha256'
