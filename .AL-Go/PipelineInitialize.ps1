# Init pipeline

Write-Host "--------------------------------------------"
Write-Host $appBuild
Write-Host $appRevision

Write-Host $env:settings
Write-Host $env:GITHUB_REF

Set-Variable -Name 'appBuild' -value "1001" -scope 1
Set-Variable -Name 'appRevision' -value "1000" -scope 1

Write-Host "--------------------------------------------"
