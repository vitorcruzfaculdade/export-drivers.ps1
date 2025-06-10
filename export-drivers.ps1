<#
.SYNOPSIS
    Export third-party drivers from a Windows system (Server or Desktop) to a folder.

.DESCRIPTION
    This script extracts all third-party drivers from the current online Windows installation
    and saves them to a specified folder. It is useful for driver backup, system migration,
    or deployment with tools such as DISM, MDT, or WDS.

.SUPPORTED_OS
    Windows Server:
        - Windows Server 2012 / 2012 R2
        - Windows Server 2016
        - Windows Server 2019
        - Windows Server 2022

    Windows Desktop:
        - Windows 8 / 8.1
        - Windows 10 (all editions)
        - Windows 11 (all editions)

    Requirements:
        - PowerShell 4.0 or newer
        - 'Export-WindowsDriver' cmdlet (available by default on Windows 8 and later)

.NOTES
    Author   : Vitor Cruz
    Version  : 1.1.0
    License  : GPL-3.0
    Created  : 2025-06-10

.VERSION HISTORY
    1.0.0 - Initial release: basic export of third-party drivers from online system
    1.1.0 - Updated documentation to reflect full Desktop and Server compatibility

.LINK
    https://github.com/vitorcruzfaculdade
#>

# Define destination path for driver backup
$DriverBackupFolder = "C:\DriverBackup"

# Ensure the destination folder exists
if (-Not (Test-Path $DriverBackupFolder)) {
    New-Item -Path $DriverBackupFolder -ItemType Directory | Out-Null
}

Write-Host ""
Write-Host "[INFO] Exporting drivers to: $DriverBackupFolder" -ForegroundColor Cyan

# Export drivers from current Windows installation
try {
    Export-WindowsDriver -Online -Destination $DriverBackupFolder
    Write-Host "[SUCCESS] Driver export completed successfully." -ForegroundColor Green
}
catch {
    Write-Host "[ERROR] Failed to export drivers: $_" -ForegroundColor Red
}
