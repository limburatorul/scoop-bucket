"""Brings Chocolatey, winget and this Scoop bucket up to each app's latest GitHub release.

Run daily by .github/workflows/update.yml (Windows runner: choco is preinstalled, wingetcreate is
downloaded). For every app whose release is newer than what a channel has:
  Chocolatey  bump version, URL and SHA-256 in chocolatey/<id>/, pack, push (secret CHOCO_API_KEY)
  winget      wingetcreate update --submit, from the last merged manifest's installer URLs with the
              version swapped (secret WINGET_TOKEN). Skipped while the package's first PR is still
              in review, and when an open PR for that version already exists.
  Scoop       bump version, URL and hash in bucket/<name>.json from its autoupdate URL
The bumped files are committed by the workflow, so a failed push is retried the next day.
"""
import json, os, re, subprocess, sys

# GitHub repo, Chocolatey id, Chocolatey asset (name ends with), Scoop manifest, winget id
APPS = [
    ('lume', 'lume', '-x64.exe', 'lume', 'ProtagonistLabs.Lume'),
    ('steamradar', 'steamradar', '-portabil.exe', 'steamradar', 'ProtagonistLabs.SteamRadar'),
    ('auto-clicker', 'protagonist-auto-clicker', 'Auto.Clicker.exe', 'auto-clicker', 'ProtagonistLabs.AutoClicker'),
    ('cursor-selector', 'cursor-selector', 'CursorSelector.exe', None, 'ProtagonistLabs.CursorSelector'),
    ('file-labs', 'file-labs', '-setup.exe', None, 'ProtagonistLabs.FileLabs'),
    ('hotkeyscan', 'hotkeyscan', 'HotkeyScan.exe', None, 'ProtagonistLabs.HotkeyScan'),
    ('sysoptimizer', 'sysoptimizer', 'Sysoptimizer.exe', None, 'ProtagonistLabs.Sysoptimizer'),
    ('glaze', 'glaze-player', '-portable.exe', None, 'ProtagonistLabs.Glaze'),
    ('spacescan', 'spacescan', '-setup.exe', None, 'ProtagonistLabs.SpaceScan'),
    ('backup-labs', 'backup-labs', '-setup.exe', None, 'ProtagonistLabs.BackupLabs'),
]
failed = []


def gh(path):
    return json.loads(subprocess.check_output(['gh', 'api', path], stderr=subprocess.DEVNULL))


def vkey(v):
    return tuple(int(x) for x in re.findall(r'\d+', v))


def asset(rel, url_or_suffix):
    a = next(a for a in rel['assets'] if a['browser_download_url'] == url_or_suffix or a['name'].endswith(url_or_suffix))
    return a['browser_download_url'], (a.get('digest') or '').removeprefix('sha256:')


def sub(path, pattern, repl):
    text = open(path, encoding='utf-8').read()
    new, n = re.subn(pattern, repl, text)
    assert n, f'{path}: {pattern} not found'
    open(path, 'w', encoding='utf-8').write(new)


def choco(cid, suffix, rel, ver):
    nuspec = f'chocolatey/{cid}/{cid}.nuspec'
    have = re.search(r'<version>(.*?)</version>', open(nuspec, encoding='utf-8').read()).group(1)
    if vkey(have) >= vkey(ver):
        return
    key = os.environ.get('CHOCO_API_KEY')
    if not key:
        raise RuntimeError('CHOCO_API_KEY is not set')
    url, sha = asset(rel, suffix)
    assert sha, f'{cid}: no digest for {url}'
    sub(nuspec, r'<version>.*?</version>', f'<version>{ver}</version>')
    sub(nuspec, r'releases/tag/v[^<]+', f'releases/tag/v{ver}')
    ps1 = f'chocolatey/{cid}/tools/chocolateyinstall.ps1'
    sub(ps1, r"-Url64bit '[^']+'", f"-Url64bit '{url}'")
    sub(ps1, r"-Checksum64 '[^']+'", f"-Checksum64 '{sha}'")
    try:
        subprocess.run(['choco', 'pack', nuspec, '--out', 'out'], check=True)
        subprocess.run(['choco', 'push', f'out/{cid}.{ver}.nupkg', '--source', 'https://push.chocolatey.org/',
                        '--api-key', key], check=True)
    except Exception:
        subprocess.run(['git', 'checkout', '--', f'chocolatey/{cid}'], check=True)  # not committed, so retried tomorrow
        raise
    print(f'chocolatey {cid} {have} -> {ver}')


def winget(wid, ver):
    path = f"manifests/p/ProtagonistLabs/{wid.split('.', 1)[1]}"
    try:
        versions = [x['name'] for x in gh(f'repos/microsoft/winget-pkgs/contents/{path}')]
    except subprocess.CalledProcessError:
        print(f'winget {wid}: first version still in review, skipped')
        return
    if ver in versions:
        return
    q = f'repo:microsoft/winget-pkgs is:pr is:open in:title "{wid}" "{ver}"'
    if json.loads(subprocess.check_output(['gh', 'api', '-X', 'GET', 'search/issues', '-f', f'q={q}']))['total_count']:
        return
    last = max(versions, key=vkey)
    yaml = subprocess.check_output(['gh', 'api', f'repos/microsoft/winget-pkgs/contents/{path}/{last}/{wid}.installer.yaml',
                                    '-H', 'Accept: application/vnd.github.raw']).decode()
    urls = [u.replace(last, ver) for u in re.findall(r'InstallerUrl:\s*(\S+)', yaml)]
    token = os.environ.get('WINGET_TOKEN')
    if not token:
        raise RuntimeError('WINGET_TOKEN is not set')
    subprocess.run(['wingetcreate', 'update', wid, '-v', ver, '-u', *urls, '--submit', '-t', token], check=True)
    print(f'winget {wid} {last} -> {ver}')


def scoop(name, rel, ver):
    path = f'bucket/{name}.json'
    m = json.load(open(path, encoding='utf-8'))
    if vkey(m['version']) >= vkey(ver):
        return
    url = m['autoupdate']['url'].replace('$version', ver)
    _, sha = asset(rel, url.split('#')[0])
    assert sha, f'{name}: no digest for {url}'
    m.update(version=ver, url=url, hash=sha)
    open(path, 'w', encoding='utf-8').write(json.dumps(m, indent=4, ensure_ascii=False) + '\n')
    print(f'scoop {name} -> {ver}')


for repo, cid, suffix, scoop_name, wid in APPS:
    rel = gh(f'repos/limburatorul/{repo}/releases/latest')
    ver = rel['tag_name'].lstrip('v')
    for channel, run in (('chocolatey', lambda: choco(cid, suffix, rel, ver)), ('winget', lambda: winget(wid, ver)),
                         ('scoop', lambda: scoop_name and scoop(scoop_name, rel, ver))):
        try:
            run()
        except Exception as e:  # one app or channel failing must not stop the others
            failed.append(f'{channel} {repo} {ver}: {e}')
            print('FAILED', failed[-1], file=sys.stderr)

if failed:
    sys.exit('\n'.join(failed))
