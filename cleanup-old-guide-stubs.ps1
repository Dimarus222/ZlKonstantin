$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$guide = Join-Path $root 'guide'
Write-Host 'HAPPY-pedia: scan guide for legacy HTML stubs (TXT files will be preserved):' -ForegroundColor Yellow
if (-not (Test-Path -LiteralPath $guide -PathType Container)) {
    Write-Host 'The guide directory does not exist. Nothing to do.'
    exit 0
}
$targets = @(Get-ChildItem -LiteralPath $guide -Recurse -File | Where-Object { $_.Extension -in '.html', '.htm' })
if ($targets.Count -eq 0) { Write-Host 'No HTML/HTM files found under guide. Nothing to do.'; exit 0 }
$targets | ForEach-Object { Write-Host (' - ' + $_.FullName) }
Write-Host ('HTML/HTM files found: ' + $targets.Count)
$answer = Read-Host 'To permanently remove only these HTML/HTM files under guide, type DELETE STUBS'
if ($answer -cne 'DELETE STUBS') { Write-Host 'Cancelled; no files were removed.'; exit 0 }
foreach ($target in $targets) { Remove-Item -LiteralPath $target.FullName -Force }
Write-Host 'Done. HTML/HTM files under guide removed; TXT files were preserved.' -ForegroundColor Green
