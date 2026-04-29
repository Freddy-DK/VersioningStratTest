# Init pipeline

Write-Host "--------------------------------------------"

Get-Content '/home/runner/work/_temp/needsContext.json' | Out-Host

$repoRoot = git -C $PSScriptRoot rev-parse --show-toplevel
Write-Host "Repo root: $repoRoot"

gh auth status | Out-Host

Write-Host $appBuild
Write-Host $appRevision

Set-Variable -Name 'appBuild' -value "1001" -scope 1
Set-Variable -Name 'appRevision' -value "1000" -scope 1

Write-Host "--------------------------------------------"
