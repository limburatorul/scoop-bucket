$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/file-labs/releases/download/v1.0.48/FileLabs-1.0.48-setup.exe' -Checksum64 '1b20c146350f5ce19d7125e089d6157a714cdbd75f4ebe3c2b6f550199c7da60' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' -ValidExitCodes @(0)
