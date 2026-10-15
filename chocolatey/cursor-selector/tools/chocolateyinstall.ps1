$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.3.0/CursorSelector.exe' -Checksum64 '8bc605cece6744e44f5d1219e0a51136718fe8e244c5be0b1a3a8019ea62f5e1' -ChecksumType64 'sha256'
