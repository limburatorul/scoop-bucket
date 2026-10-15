$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Auto.Clicker.exe') `
  -Url64bit 'https://github.com/limburatorul/auto-clicker/releases/download/v1.0.8/Auto.Clicker.exe' -Checksum64 'cbadd162b425344dab51925952a93c97f639976f8f89622e2fa7363b0df25464' -ChecksumType64 'sha256'
