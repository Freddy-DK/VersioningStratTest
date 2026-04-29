# Init pipeline

Write-Host "--------------------------------------------"
# Get Repo root

Write-Host "--------------------------------------------"
1..3 | ForEach-Object {
    Write-Host "Iteration $_"
    try {
        Get-Variable -scope $_ | Out-Host
    }
    catch {
        Write-Host "Variable 'settings' not found in scope $_"
    }
}

Write-Host $appBuild
Write-Host $appRevision

Set-Variable -Name 'appBuild' -value "1001" -scope 1
Set-Variable -Name 'appRevision' -value "1000" -scope 1

Write-Host "--------------------------------------------"
