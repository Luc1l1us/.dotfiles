<# SPICETIFY #> 
cp .\spicetify\tui "$env:APPDATA\spicetify\Themes" -Force
cp .\spicetify\config-xpui.ini "$env:APPDATA\spicetify\"

<# FIREFOX #>
cp .\firefox\* "$env:APPDATA\Mozilla\Firefox\Profiles\[your_profile_directory]" 
