$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Auto.Clicker.exe') `
  -Url64bit 'https://github.com/limburatorul/auto-clicker/releases/download/v1.1.0/Auto.Clicker.exe' -Checksum64 '80c7b624a0ac8bf61311f3223dda59c16847089c138a8bca84238afefebcc7eb' -ChecksumType64 'sha256'
