# Init pipeline

Write-Host "--------------------------------------------"
# Get Repo root

Write-Host "--------------------------------------------"
$settings = Get-Variable -Name "settings" -scope 2
$settings | ConvertTo-Json | Out-Host

Write-Host $appBuild
Write-Host $appRevision

Write-Host $env:settings
Write-Host $env:GITHUB_REF

Set-Variable -Name 'appBuild' -value "1001" -scope 1
Set-Variable -Name 'appRevision' -value "1000" -scope 1

Write-Host "--------------------------------------------"
