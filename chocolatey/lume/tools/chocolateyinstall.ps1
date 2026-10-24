$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit 'https://github.com/limburatorul/lume/releases/download/v0.5.1/Lume-0.5.1-x64.exe' -Checksum64 '48dcda64bb334884bfeaae43a1aa62861f0eb73443632cf5526ed2dbbea6a301' -ChecksumType64 'sha256' `
  -SilentArgs '/S' -ValidExitCodes @(0)
