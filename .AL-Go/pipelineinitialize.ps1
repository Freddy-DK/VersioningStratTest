# Init pipeline

Write-Host "--------------------------------------------"
# Get Repo root

Write-Host "--------------------------------------------"
$settings = Get-Variable -Name "settings" -scope 1
$settings | ConvertTo-Json | Out-Host

Write-Host $appBuild
Write-Host $appRevision



Set-Variable -Name 'appBuild' -value "1001" -scope 1
Set-Variable -Name 'appRevision' -value "1000" -scope 1

Write-Host "--------------------------------------------"
