$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Auto.Clicker.exe') `
  -Url64bit 'https://github.com/limburatorul/auto-clicker/releases/download/v1.0.9/Auto.Clicker.exe' -Checksum64 '82653b47ca84c4f1d76954bde9349d9de2cd5078cb4f9b7fb01c77d6b84eed9e' -ChecksumType64 'sha256'
