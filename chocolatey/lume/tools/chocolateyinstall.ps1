$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.5.0/Lume-0.5.0-x64.exe' -Checksum64 '1dc86ef7f876db8fd34e3e5474ac7ce233cb1e0ba499cc8ba742fc5f71e6d313' -ChecksumType64 'sha256' `
  -SilentArgs '/S' -ValidExitCodes @(0)
