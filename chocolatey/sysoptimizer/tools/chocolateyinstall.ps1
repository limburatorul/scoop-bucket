$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir 'Sysoptimizer.exe') `
  -Url64bit 'https://github.com/limburatorul/sysoptimizer/releases/download/v1.13.0/Sysoptimizer.exe' -Checksum64 '132a59c8c0a9b0644946c9cc61e65a890837d5b64c3e7e8f54214c2887d1e67d' -ChecksumType64 'sha256'
