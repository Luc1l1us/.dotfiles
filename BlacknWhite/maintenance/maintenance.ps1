# Disk Cleanup
function Disk-Cleanup {
Write-Host "Disk Cleaning in progress"
$CleanerParams = @{
    FilePath = "cleanmgr.exe" 
    ArgumentList = "/sagerun:1" 
    NoNewWindow = $true
    PassThru = $true
}
$diskcleaner = Start-Process @CleanerParams
$diskcleaner.WaitForExit()

Write-Host -ForegroundColor Green "Disk Cleaning complete!"
}

# Delete everything in %temp%
function Delete-Temp {

$WinTempPath = "$env:windir\Temp"
$LocalTempPath= "$env:TEMP"

function Clear-TempFolder {
    param (
        [string]$Path
    )
    if (Test-Path $Path) {
        try {
            Write-Output "$Path exists. Deleting..."
            Get-ChildItem $Path -Force -Recurse -ErrorAction SilentlyContinue |
                Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
            Write-Output "Cleaned: $Path"
        } catch {
            Write-Warning "Failed to clean: $Path - $_"
        }
    } else {
        Write-Warning "Path not found: $Path"
    }
}

Clear-TempFolder -Path $WinTempPath
Clear-TempFolder -Path $LocalTempPath

Write-Host "Successfully deleted temp files in $WinTempPath and $LocalTempPath" -ForegroundColor Green 
}

# defrag both disks
function defrag {
    Write-Host "Defraging disks in progress"    
}

Write-Host "Select an action to perform: "
Write-Host "1. Delete Temp Files "
Write-Host "2. Run Disk Cleanup "
Write-Host "3. Both "
Write-Host ""

$choice = Read-Host -Prompt "Select an action to perform (1,2,3): "

switch ($choice) {
    "1" {
        Delete-Temp
    }
    "2" {
        Disk-Cleanup
    }
    "3" {
        Delete-Temp
        Disk-Cleanup
    }
}
