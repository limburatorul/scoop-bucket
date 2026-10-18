$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Auto.Clicker.exe') `
  -Url64bit 'https://github.com/limburatorul/auto-clicker/releases/download/v1.0.11/Auto.Clicker.exe' -Checksum64 'fe8b6f7fba8761e72790e8e74aa288ed5c56a178d94fe25f33d79eee5517d30f' -ChecksumType64 'sha256'
