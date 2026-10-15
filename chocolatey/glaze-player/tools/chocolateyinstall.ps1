$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Glaze-2.1.0-portable.exe') `
  -Url64bit 'https://github.com/limburatorul/glaze/releases/download/v2.1.0/Glaze-2.1.0-portable.exe' -Checksum64 'd46eb917cd17c153b57c243085640250215755b17cb243f44dc06eaf05aa395f' -ChecksumType64 'sha256'
