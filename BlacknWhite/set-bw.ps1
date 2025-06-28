<# SPICETIFY #> 
function Invoke-Spicetify {
    $SpiceProf = "$env:APPDATA\spicetify\Themes"
    Write-host "Copying Spicetify profile to $SpiceProf"
    cp .\spicetify\tui "$env:APPDATA\spicetify\Themes\" -Force -Recurse
    cp .\spicetify\config-xpui.ini "$env:APPDATA\spicetify\"
    Write-Host "Done"
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

<# YASB #>
function Invoke-YASB {
    $YASBProf = "$env:USERPROFILE\.config\yasb"
    Write-Host "Copying YASB dotfiles to $YASBProf"
    cp .\YASB\* $YASBProf -Force
    Write-Host "Done"
}

<# GlazeWM #>
function Invoke-Glaze {
    $GlazeProf = "$env:USERPROFILE\.glzr\glazewm\"
    Write-Host "Copying Glaze dotfiles to $GlazeProf"
    cp .\glazewm\* $GlazeProf -Force
    Write-Host "Done"
}

<# Disord/Vencord #>
function Invoke-VenDisc {
    $DiscProf = "$env:USERPROFILE\AppData\Roaming\Vencord\themes"
    Write-Host "Copying Discord/Vencord css file to $DiscProf"
    cp .\Discord\* $DiscProf
    Write-Host "Done"
}

Invoke-YASB
Invoke-Glaze
Invoke-VenDisc
Invoke-Spicetify
Invoke-Firefox