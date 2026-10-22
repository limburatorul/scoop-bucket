$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/file-labs/releases/download/v1.0.44/FileLabs-1.0.44-setup.exe' -Checksum64 '81cb5a4094cefe9b03c18217cdd4268851b3a0654c5e25162dadd68638b16a59' -ChecksumType64 'sha256' `
  -SilentArgs '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER' -ValidExitCodes @(0)
