$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Glaze-2.1.1-portable.exe') `
  -Url64bit 'https://github.com/limburatorul/glaze/releases/download/v2.1.1/Glaze-2.1.1-portable.exe' -Checksum64 'c6262b15d15dd70f5f93584f0918253090991b9cb14934a32555cbd471955445' -ChecksumType64 'sha256'
