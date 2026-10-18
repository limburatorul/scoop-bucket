$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'SteamRadar-0.7.3-portabil.exe') `
  -Url64bit 'https://github.com/limburatorul/steamradar/releases/download/v0.7.3/SteamRadar-0.7.3-portabil.exe' -Checksum64 '04f696c4226591286fc1962161061d5ce251a577fb6b5465d1d9f03c5e728736' -ChecksumType64 'sha256'
