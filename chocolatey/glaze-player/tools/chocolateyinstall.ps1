$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Glaze-2.0.5-portable.exe') `
  -Url64bit 'https://github.com/limburatorul/glaze/releases/download/v2.0.5/Glaze-2.0.5-portable.exe' -Checksum64 '54a506f297cf7cd30d23304429caea7c4751a2eff95c40165efdb4286a121f09' -ChecksumType64 'sha256'
