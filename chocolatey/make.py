"""Chocolatey packages for the free apps, from their latest GitHub release.

    python make.py            writes <id>/ for every app, with the release's URL and SHA-256
    choco pack <id>/<id>.nuspec ; choco push <id>.<ver>.nupkg --source https://push.chocolatey.org/

Texts come from site/listings.py (the same ones every directory gets). Installer kinds match the
winget manifests: Inno and NSIS installers run silent per user, the rest are portable exes that
Chocolatey shims and removes on uninstall.
"""
import html, json, os, subprocess, sys

sys.path.insert(0, r'D:\Game Browser\site')
from listings import LISTINGS  # noqa: E402

HERE = os.path.dirname(os.path.abspath(__file__))
SILENT = {'inno': '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /CURRENTUSER', 'nsis': '/S /currentuser'}
# app: (choco id, file pattern in the release, kind)
APPS = {
    'lume': ('lume', '-x64.exe', 'nsis'),
    'steamradar': ('steamradar', '-portabil.exe', 'portable'),
    'autoclicker': ('protagonist-auto-clicker', 'Auto.Clicker.exe', 'portable'),
    'cursorselector': ('cursor-selector', 'CursorSelector.exe', 'portable'),
    'filelabs': ('file-labs', '-setup.exe', 'inno'),
    'hotkeyscan': ('hotkeyscan', 'HotkeyScan.exe', 'portable'),
    'sysoptimizer': ('sysoptimizer', 'Sysoptimizer.exe', 'portable'),
    'glaze': ('glaze-player', '-portable.exe', 'portable'),
    'spacescan': ('spacescan', '-setup.exe', 'inno'),
    'backuplabs': ('backup-labs', '-setup.exe', 'inno'),
}


def release(repo, pattern):
    r = json.loads(subprocess.check_output(['gh', 'api', f'repos/limburatorul/{repo}/releases/latest']))
    a = next(a for a in r['assets'] if a['name'].endswith(pattern))
    sha = (a.get('digest') or '').removeprefix('sha256:')
    assert sha, f'{repo}: GitHub gave no digest for {a["name"]}'
    return r['tag_name'].lstrip('v'), a['browser_download_url'], sha, a['name']


def package(app):
    cid, pattern, kind = APPS[app]
    l = LISTINGS[app]
    ver, url, sha, name = release(l['repo'], pattern)
    e = lambda s: html.escape(s, quote=False)
    site = f'https://protagonistlabs.app/{app}/'
    gh = f'https://github.com/limburatorul/{l["repo"]}'
    nuspec = f'''<?xml version="1.0" encoding="utf-8"?>
<package xmlns="http://schemas.microsoft.com/packaging/2015/06/nuspec.xsd">
  <metadata>
    <id>{cid}</id>
    <version>{ver}</version>
    <title>{e(l['name'])}</title>
    <authors>Protagonist Labs</authors>
    <owners>protagonistlabs</owners>
    <projectUrl>{site}</projectUrl>
    <iconUrl>https://protagonistlabs.app/icons/{app}.png</iconUrl>
    <licenseUrl>{gh}/blob/main/LICENSE</licenseUrl>
    <requireLicenseAcceptance>false</requireLicenseAcceptance>
    <projectSourceUrl>{gh}</projectSourceUrl>
    <packageSourceUrl>https://github.com/limburatorul/scoop-bucket/tree/main/chocolatey/{cid}</packageSourceUrl>
    <bugTrackerUrl>{gh}/issues</bugTrackerUrl>
    <releaseNotes>{gh}/releases/tag/v{ver}</releaseNotes>
    <tags>{e(' '.join(t.strip().replace(' ', '-') for t in l['keywords'].split(',')))} windows foss</tags>
    <summary>{e(l['d80'])}</summary>
    <description>{e(l['d2000'])}</description>
  </metadata>
  <files>
    <file src="tools\\**" target="tools" />
  </files>
</package>
'''
    if kind == 'portable':
        ps = f'''$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
  -FileFullPath (Join-Path $toolsDir '{name}') `
  -Url64bit '{url}' -Checksum64 '{sha}' -ChecksumType64 'sha256'
'''
    else:
        ps = f'''$ErrorActionPreference = 'Stop'
Install-ChocolateyPackage -PackageName $env:ChocolateyPackageName -FileType 'exe' `
  -Url64bit '{url}' -Checksum64 '{sha}' -ChecksumType64 'sha256' `
  -SilentArgs '{SILENT[kind]}' -ValidExitCodes @(0)
'''
    out = os.path.join(HERE, cid)
    os.makedirs(os.path.join(out, 'tools'), exist_ok=True)
    open(os.path.join(out, f'{cid}.nuspec'), 'w', encoding='utf-8').write(nuspec)
    open(os.path.join(out, 'tools', 'chocolateyinstall.ps1'), 'w', encoding='utf-8').write(ps)
    return cid, ver, kind


if __name__ == '__main__':
    for a in APPS:
        print(*package(a))
