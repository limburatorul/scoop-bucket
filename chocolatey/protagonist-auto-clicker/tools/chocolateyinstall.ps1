$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Auto.Clicker.exe') `
  -Url64bit 'https://github.com/limburatorul/auto-clicker/releases/download/v1.0.10/Auto.Clicker.exe' -Checksum64 '8e603ded2453ee72f2e9c2ab6beac2a8d5fa95c1b334a43e678ca39820dcd3a8' -ChecksumType64 'sha256'
