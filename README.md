# Export Windows Drivers Script

A PowerShell script to export third-party drivers from a Windows installation (Server or Desktop) into a structured folder for backup, deployment, or migration purposes.

## Features

- Extracts **third-party drivers** from the current online system
- Supports **Windows Server 2012+** and **Windows 8+ Desktop editions**
- Ideal for use with **DISM**, **WDS**, or **MDT** in enterprise environments
- Outputs ready-to-use `.inf` driver files and folders
- Silent, unattended, and requires no third-party tools

## Supported Operating Systems

### Windows Server Editions

- Windows Server 2012 / 2012 R2
- Windows Server 2016
- Windows Server 2019
- Windows Server 2022

### Windows Desktop Editions

- Windows 8 / 8.1
- Windows 10 (all editions)
- Windows 11 (all editions)

**Requirements:**

- PowerShell 4.0 or newer
- `Export-WindowsDriver` cmdlet (included by default in Windows 8 and later)

## Usage

1. Open **PowerShell as Administrator**
2. Run the script:

   ```powershell
   .\Export-Drivers.ps1
   ```

3. Drivers will be exported to:

   ```text
   C:\DriverBackup
   ```

### To install the drivers on another machine

```powershell
pnputil /add-driver "C:\DriverBackup\*.inf" /subdirs /install
```

### To inject drivers into a Windows image

```powershell
dism /Image:D:\Mount /Add-Driver /Driver:C:\DriverBackup /Recurse
```

## License

This project is licensed under the **GPL-3.0 License**.  
You are free to use, adapt, and redistribute it with proper attribution.

## Author

**Vitor Cruz**  
[GitHub Profile](https://github.com/vitorcruzfaculdade)
