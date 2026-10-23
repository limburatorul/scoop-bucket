$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Glaze-2.2.0-portable.exe') `
  -Url64bit 'https://github.com/limburatorul/glaze/releases/download/v2.2.0/Glaze-2.2.0-portable.exe' -Checksum64 '15b4d6eee35a31e5a0aadd4c2acab0ab95f7b1baad148b1a7559e7a0d036f2d5' -ChecksumType64 'sha256'
