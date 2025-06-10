# Export Windows Drivers Script

A PowerShell script to export third-party drivers from a Windows installation (Server or Desktop) into a structured folder for backup, deployment, or migration purposes.

## Features

- Extracts **third-party drivers** from the current online system  
- Supports **Windows Server 2012+** and **Windows 8+ Desktop editions**  
- Ideal for use with **DISM**, **WDS**, or **MDT** in enterprise environments  
- Outputs ready-to-use `.inf` driver files and folders  
- Silent, unattended, and requires no third-party tools

## Supported Operating Systems

| Windows Server Editions | Windows Desktop Editions |
|-------------------------|---------------------------|
| Server 2012 / 2012 R2   | Windows 8 / 8.1           |
| Server 2016             | Windows 10 (all editions) |
| Server 2019             | Windows 11 (all editions) |
| Server 2022             |                           |

## Usage

1. Open **PowerShell as Administrator**
2. Run the script:

   ```powershell
   .\Export-Drivers.ps1
Drivers will be exported to: C:\DriverBackup

To install them on another machine:
pnputil /add-driver "C:\DriverBackup\*.inf" /subdirs /install

Or inject into a Windows image:
dism /Image:D:\Mount /Add-Driver /Driver:C:\DriverBackup /Recurse

License
This project is licensed under the GPL-3.0 License.
Feel free to use, adapt, and redistribute with credit.

Author
Vitor Cruz
GitHub Profile
