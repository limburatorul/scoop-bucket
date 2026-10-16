$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.15.1/Sysoptimizer.exe' -Checksum64 'd7bf072c3b5ec54a1fe4172f79ddd3590c7a38dbeccacf95ff941b7db7d545a1' -ChecksumType64 'sha256'
