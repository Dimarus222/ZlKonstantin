$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$relativePaths = @(
  'guide\index.html',
  'guide\about-project\index.html',
  'guide\farm\index.html',
  'guide\jewelry\index.html',
  'guide\pets\index.html',
  'guide\pts-calculator\index.html',
  'guide\spheres-defense\index.html',
  'guide\spheres-destruction\index.html',
  'guide\spheres-life\index.html',
  'guide\spheres-mastery\index.html',
  'guide\spheres-soul\index.html',
  'guide\updates\index.html',
  'guide\weapons\index.html'
)
$targets = @()
foreach ($rel in $relativePaths) {
  $full = Join-Path $root $rel
  if (Test-Path -LiteralPath $full -PathType Leaf) { $targets += $full }
}
Write-Host 'HAPPY-pedia: old guide HTML stubs to delete (TXT files will be preserved):' -ForegroundColor Yellow
if ($targets.Count -eq 0) { Write-Host 'No listed stub files found. Nothing to do.'; exit 0 }
$targets | ForEach-Object { Write-Host (' - ' + $_) }
Write-Host ('Files found: ' + $targets.Count)
$answer = Read-Host 'To permanently remove only these listed stub HTML files, type DELETE STUBS'
if ($answer -cne 'DELETE STUBS') { Write-Host 'Cancelled; no files were removed.'; exit 0 }
foreach ($target in $targets) { Remove-Item -LiteralPath $target -Force }
Write-Host 'Done. Legacy HTML stubs removed; project-info.txt files were not touched.' -ForegroundColor Green
