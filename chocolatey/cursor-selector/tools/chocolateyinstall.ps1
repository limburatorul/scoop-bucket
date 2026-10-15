$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.1.0/CursorSelector.exe' -Checksum64 '99ab2c23d638b45852c3d4675755dd03b1526ee00d43f00d9c782d5e80960e3e' -ChecksumType64 'sha256'
