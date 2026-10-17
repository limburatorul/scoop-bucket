$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'SteamRadar-0.7.2-portabil.exe') `
  -Url64bit 'https://github.com/limburatorul/steamradar/releases/download/v0.7.2/SteamRadar-0.7.2-portabil.exe' -Checksum64 '5c9865773403d77114200b2649c5ca746fba9d645480d19b12766565aebf295c' -ChecksumType64 'sha256'
