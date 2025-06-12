<# SPICETIFY #> 
function Invoke-Spicetify {
    Write-host "Copying Spicetify profile to config location"
    cp .\spicetify\tui "$env:APPDATA\spicetify\Themes" -Force
    cp .\spicetify\config-xpui.ini "$env:APPDATA\spicetify\"
}

<# FIREFOX #>
function Invoke-Firefox {
    $root_profile = "$env:APPDATA\Mozilla\Firefox\Profiles"
    $profile_list = Get-ChildItem -Directory $root_profile | Where-Object {
        $_.Name 
    }
    $profiles = @()
    $index = 1
    foreach ($dir in $profile_list) {
        Write-Host "$index - $dir"
        $profiles += $dir.Name
        $index++
    }

    $choice = Read-Host "Which profile is currently in use?"
    $selected = $profiles[$choice-1]
    $pathToProfile = Join-Path $root_profile $selected
    Write-Host "Profile path is now set to $pathToProfile"
    Write-Host "Copying to $pathToProfile"
    cp .\firefox\* $pathToProfile
    Write-Host "Done"
}

Invoke-Firefox