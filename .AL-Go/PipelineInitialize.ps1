# Init pipeline

Write-Host "--------------------------------------------"
# Get Repo root

Write-Host "--------------------------------------------"
1..5 | ForEach-Object {
    Write-Host "Iteration $_"
    try {
        $settings = Get-Variable -Name "settings" -scope $_
        $settings | ConvertTo-Json | Out-Host
    }
    catch {
        Write-Host "Variable 'settings' not found in scope $_"
    }
}

Write-Host $appBuild
Write-Host $appRevision

Write-Host $env:settings
Write-Host $env:GITHUB_REF

Set-Variable -Name 'appBuild' -value "1001" -scope 1
Set-Variable -Name 'appRevision' -value "1000" -scope 1

Write-Host "--------------------------------------------"
