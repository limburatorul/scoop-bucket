$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'SteamRadar-0.6.0-portabil.exe') `
  -Url64bit 'https://github.com/limburatorul/steamradar/releases/download/v0.6.0/SteamRadar-0.6.0-portabil.exe' -Checksum64 '2b770dc47b9ea2e5550cb81fdc8a8761f47b5c0aadb3947f393681d6f43a319d' -ChecksumType64 'sha256'
