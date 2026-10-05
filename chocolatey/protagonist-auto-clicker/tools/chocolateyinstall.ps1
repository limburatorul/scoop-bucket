$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Auto.Clicker.exe') `
  -Url64bit 'https://github.com/limburatorul/auto-clicker/releases/download/v1.0.6/Auto.Clicker.exe' -Checksum64 '1e6b27fd58ddf87cb214ec9b4d7b33e965842a206badb25f6ad6435f74dd3f8b' -ChecksumType64 'sha256'
