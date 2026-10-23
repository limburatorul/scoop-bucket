$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.20.0/Sysoptimizer.exe' -Checksum64 '7f0c04b2c19966ee766c98055d63b080370fd2f488916f8ca038ebf937456686' -ChecksumType64 'sha256'
