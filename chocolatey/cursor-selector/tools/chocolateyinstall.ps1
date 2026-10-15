$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'CursorSelector.exe') `
  -Url64bit 'https://github.com/limburatorul/cursor-selector/releases/download/v1.2.0/CursorSelector.exe' -Checksum64 'b3f7367bc734b5e17118932884dfe9326587645a15edb5e1cd647ecbb9b09ec9' -ChecksumType64 'sha256'
